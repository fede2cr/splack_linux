#!/bin/sh

# libmove sourcelib targetlib
#
# This allows you to move a new shared library into place,
# even on a running system.
libmove() {
  LIBSOURCE=$1
  LIBTARGET=$2
  LIBFOO="`dirname $LIBTARGET`/libfoo.so.0.0.0"
  # link duplicate of target lib so we can safely copy over it:
  if [ -r $LIBTARGET ]; then
    cp -a $LIBTARGET $LIBFOO
    if [ -x /sbin/ldconfig ]; then
      ldconfig -l $LIBFOO 2> /dev/null
    fi
  fi
  mv $LIBSOURCE $LIBTARGET
  if [ -x /sbin/ldconfig ]; then
    ldconfig -l $LIBTARGET 2> /dev/null
  fi
  rm -f $LIBFOO
}

# Before using libmove, try to install everything we can:
( cd lib/incoming
  for file in * ; do
    if [ ! -r ../$file ]; then
      cp -a $file ..
    fi
  done )
# Prepare the library for use with ldconfig:
if [ -x sbin/ldconfig ]; then
  chroot . /sbin/ldconfig
fi

( cd lib/incoming
  for file in * ; do
    libmove $file ../$file
  done )
#### Now, get rid of the temporary directory:
rm -rf lib/incoming

# add the library to /etc/ld.so.preload:
if fgrep libsafe.so.2 etc/ld.so.preload 1> /dev/null 2> /dev/null ; then
  GOOD=we_found_it
else
  echo "/lib/libsafe.so.2" >> etc/ld.so.preload
fi

# Prepare the library for use with ldconfig:
if [ -x sbin/ldconfig ]; then
  chroot . /sbin/ldconfig
else # In case there's no ldconfig, make the links manually:
  ( cd lib ; rm -rf libsafe.so.2 )
  ( cd lib ; ln -sf libsafe.so.2.0.9 libsafe.so.2 )
fi
