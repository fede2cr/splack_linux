#!/bin/sh
#
# build_sparc_kernels.sh (based on compile_kern.sh by Patrick Volkerding)
# version 1.8
# by:  David Cantrell <david@slackware.com>
#
# Updated by Chris Newport crn(at)netunix.com 31 Oct 2004 
#
# Builds a tree of directories containing a System.map, .config (renamed
# config), and kernel image.  The input is a tree of directories beneath
# the current one with names matching the wildcard sun*.  At the minimum,
# each directory must contain the file 'config', which is the .config to
# start with when building the kernel.
#

set -x
######################################
#
# Assumes that you have a 64 bit (UltraSparc) machine to do the build.
# Building a whole set of kernels on a 32 bit machine would take a long
# time and would be tricky because you need the 64 bit compilers and 
# libs to make the sun4u versions.
# 
#######################################

# global variables
CWD=`pwd`
KERNEL=2.4.27
PREVER=
NEWVER=2.4.27
KERNELSRC=$CWD/../source/k/linux-${KERNEL}.tar.bz2
TMP=/tmp
OUTPUT=$TMP/output


# extract the kernel source
if [ ! -d $TMP/linux-${NEWVER} ]
then
   ( cd $TMP
     tar xvjf $KERNELSRC )
   for p in `ls $CWD/../source/k/patch.*`
    do
    ( cd $TMP/linux-${NEWVER} 
      patch -p1 < $p
     )
    done
   
   if [ ! "$PREVER" = "" ]
   then
      ( cd $TMP/linux-${NEWVER}
        bzip2 -dc $CWD/../source/k/linux/pre-patch-${PREVER}.bz2 | patch -p1 )
   fi
fi

# make our output directory
if [ ! -d $OUTPUT ]
then
   mkdir -p $OUTPUT
fi

# backup existing modules directory
if [ -d /lib/modules/$NEWVER ]
then
   rm -rf /lib/modules/$NEWVER.kernels_build
   mv /lib/modules/$NEWVER /lib/modules/$NEWVER.kernels_build
fi

# build the kernels
for d in *.?
do
   if [ ! -r $d/config ]
   then
      continue
   fi

   if [ -r $OUTPUT/$d/vmlinux ]
   then
      echo "kernel found in $OUTPUT/$d... skipping."
   #   sleep 1
      continue
   fi

   echo
   echo "------------------------------------------"
   echo " BUILDING: $d"
   echo "------------------------------------------"
   echo
   sleep 1
   cd $TMP/linux-${NEWVER}

   # do we need to build a SPARC or UltraSPARC kernel?
   if [ "`echo $d | grep sun4u`" = "" ]
   then
      # build a SPARC kernel
      sparc32 make mrproper
      rm -rf /lib/modules/$NEWVER
      cp $CWD/$d/config .config
      sparc32 make oldconfig
      sparc32 make dep
      sparc32 make clean
      sparc32 make vmlinux
      if [ $d != "javastation.n" ]
       then
        sparc32 make modules
        sparc32 make modules_install
       fi
   elif [ ! "`echo $d | grep sun4u`" = "" ]
   then
      # build an UltraSPARC kernel
      make mrproper
      rm -rf /lib/modules/$NEWVER
      cp $CWD/$d/config .config
      make oldconfig
      make dep
      make clean
      make vmlinux
      make modules
      make modules_install
   fi

   if [ $? = 0 ]
   then
      # good build
      echo
      echo "------------------------------------------"
      echo "Saving output in $OUTPUT/$d"
      echo "------------------------------------------"
      echo
      mkdir -p $OUTPUT/$d
      strip vmlinux
      cp vmlinux $OUTPUT/$d
      #gzip -9 $OUTPUT/$d/vmlinux
      cp System.map $OUTPUT/$d
      cp .config $OUTPUT/$d/config
      if [ -d $OUTPUT/$d/$NEWVER ]
      then
         rm -rf $OUTPUT/$d/$NEWVER
      fi
      if [ $d != "javastation.n" ]
       then
        rm -rf /lib/modules/$NEWVER/build
        cp -a /lib/modules/$NEWVER $OUTPUT/$d/$NEWVER
        tar -cf $OUTPUT/$d/modules.tar /lib/modules/$NEWVER
        gzip -9 $OUTPUT/$d/modules.tar
        rm -rf /lib/modules/$NEWVER
       fi
      echo "Cleaning up..."
      make mrproper
   fi

   cd $CWD
done

# we don't want the build symlink in this tree
find $OUTPUT -type l -exec rm {} \;

# restore existing modules directory
if [ -d /lib/modules/$NEWVER.kernels_build ]
then
   rm -rf /lib/modules/$NEWVER
   mv /lib/modules/$NEWVER.kernels_build /lib/modules/$NEWVER
fi
