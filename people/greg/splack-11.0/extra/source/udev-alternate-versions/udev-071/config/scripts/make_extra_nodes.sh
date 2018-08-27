#! /bin/bash
# Make extra ${udev_root} nodes.
#
# Copyright (C) 2004 Greg Kroah-Hartman <greg@kroah.com>
# Released under the GPL v2 only.
#
# Enhanced for Slackware Linux by volkerdi@slackware.com.

if [ -z ${udev_root} ]; then
  . /etc/udev/udev.conf
fi

# these are a few things that sysfs does not export for us.
ln -snf /proc/self/fd ${udev_root}/fd
ln -snf /proc/self/fd/0 ${udev_root}/stdin
ln -snf /proc/self/fd/1 ${udev_root}/stdout
ln -snf /proc/self/fd/2 ${udev_root}/stderr
ln -snf /proc/kcore ${udev_root}/core
if [ -r ${udev_root}/psaux ]; then
  ( cd ${udev_root} ; ln -sf psaux mouse )
fi
mkdir ${udev_root}/pts
mkdir ${udev_root}/shm

# If we can, add default ${udev_root}/cdrom* and /dev/dvd* links:
cd_num=0
dvd_num=0
if /bin/ls -l ${udev_root} | grep -wq cdrom ; then
  ( cd ${udev_root}
    /bin/ls -l . | grep -w cdrom | cut -f 2 -d : | cut -f 2 -d ' ' | while read optical_device ; do
      # It has to be a cdrom.  Assign consecutive numbers to drives.
      if [ "$cd_num" = "0" ]; then
        ln -sf $optical_device cdrom
        ln -sf $optical_device cdrom0
      else
        ln -sf $optical_device cdrom${cd_num}
      fi
      cd_num=$(($cd_num + 1))
      # If it's a DVD, set that link as well:
      if grep -iq dvd /proc/ide/$optical_device/model ; then
        if [ "$dvd_num" = "0" ]; then
          ln -sf $optical_device dvd
          ln -sf $optical_device dvd0
        else
          ln -sf $optical_device dvd${dvd_num}
        fi
        dvd_num=$(($dvd_num + 1))
      fi
    done
    unset optical_device
  )
fi
unset cd_num

# If we add ${udev_root}/ppp manually, then using it will autoload the modules.
# I think this is how most people expect ppp to work these days.
if [ ! -r ${udev_root}/ppp ]; then
  mknod -m 660 ${udev_root}/ppp c 108 0
  chown root:uucp ${udev_root}/ppp
fi

# nVidia modules don't know about udev, so a little bit more clutter is in order.
mknod -m 660 ${udev_root}/nvidiactl c 195 255
mknod -m 660 ${udev_root}/nvidia0 c 195 0
mknod -m 660 ${udev_root}/nvidia1 c 195 1
# If you have more than two of these cards, you'll have to add devices below.
#mknod -m 660 ${udev_root}/nvidia2 c 195 2
#mknod -m 660 ${udev_root}/nvidia3 c 195 3
chown root:video ${udev_root}/nvidia*

# Seed the loop device by adding ${udev_root}/loop0 (use this, and they'll all appear):
if [ ! -r ${udev_root}/loop0 ]; then
  mknod -m 660 ${udev_root}/loop0 b 7 0
  chown root:disk ${udev_root}/loop0
fi

# Seed the floppy devices:
if [ ! -r ${udev_root}/fd0 ]; then
  mknod -m 660 ${udev_root}/fd0 b 2 0
  mknod -m 660 ${udev_root}/fd1 b 2 1
  mknod -m 660 ${udev_root}/fd2 b 2 2
  mknod -m 660 ${udev_root}/fd3 b 2 3
  chown root:floppy ${udev_root}/fd{0,1,2,3}
fi

# We don't want to kludge *every* possible device, but a few would certainly be
# useful.  Most of the benefit in udev is the massive reduction of tty/pty clutter
# (well, IMO), and I'd like to see kmod remain functional.  I'd take a few more
# requests here.  :-)
if [ ! -r ${udev_root}/rtc ]; then
  mknod -m 664 ${udev_root}/rtc c 10 135
fi

# Devices needed for VMWare:
if [ ! -r ${udev_root}/vmmon ]; then
  mknod -m 660 ${udev_root}/vmmon c 10 165
fi
if [ ! -r ${udev_root}/vmnet0 ]; then
  mknod -m 660 ${udev_root}/vmnet0 c 119 0
  for vmdev in 1 2 3 4 5 6 7 8 9 ; do
    if [ ! -r ${udev_root}/vmnet${vmdev} ]; then
      mknod -m 660 ${udev_root}/vmnet${vmdev} c 119 ${vmdev}
    fi
  done
  unset vmdev
fi

# Raw IEEE1394 symlinks (needed by some video software):
if [ -r $udev_root/raw/raw1394 ]; then
  ln -snf $udev_root/raw/raw1394 $udev_root/raw1394
fi

