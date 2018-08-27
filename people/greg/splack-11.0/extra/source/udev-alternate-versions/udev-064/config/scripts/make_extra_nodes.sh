#! /bin/bash
# Make extra /dev nodes.
#
# Copyright (C) 2004 Greg Kroah-Hartman <greg@kroah.com>
# Released under the GPL v2 only.
#
# Enhanced for Slackware Linux by volkerdi@slackware.com.

if [ -z $udev_root ]; then
  . /etc/udev/udev.conf
fi

# these are a few things that sysfs does not export for us.
ln -snf /proc/self/fd $udev_root/fd
ln -snf /proc/self/fd/0 $udev_root/stdin
ln -snf /proc/self/fd/1 $udev_root/stdout
ln -snf /proc/self/fd/2 $udev_root/stderr
ln -snf /proc/kcore $udev_root/core
if [ -r $udev_root/psaux ]; then
  ( cd $udev_root ; ln -sf psaux mouse )
fi
mkdir $udev_root/pts
mkdir $udev_root/shm

# If we can, add a default /dev/cdrom and /dev/dvd link:
cd_num=0
dvd_num=0
if /bin/ls -l /dev | grep -wq cdrom ; then
  ( cd $udev_root
    /bin/ls -l * | grep -w cdrom | cut -f 2 -d : | cut -f 2 -d ' ' | while read optical_device ; do
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
unset dvd_num

# If we add /dev/ppp manually, then using it will autoload the modules.
# I think this is how most people expect ppp to work these days.
if [ ! -r /dev/ppp ]; then
  mknod -m 660 /dev/ppp c 108 0
  chown root:uucp /dev/ppp
fi

# nVidia modules don't know about udev, so a little bit more clutter is in order.
mknod -m 660 /dev/nvidiactl c 195 255
mknod -m 660 /dev/nvidia0 c 195 0
mknod -m 660 /dev/nvidia1 c 195 1
# If you have more than two of these cards, you'll have to add devices below.
#mknod -m 660 /dev/nvidia2 c 195 2
#mknod -m 660 /dev/nvidia3 c 195 3
chown root:video /dev/nvidia*

# Seed the loop device by adding /dev/loop0 (use this, and they'll all appear):
if [ ! -r /dev/loop0 ]; then
  mknod -m 660 /dev/loop0 b 7 0
  chown root:disk /dev/loop0
fi

# Seed the floppy devices:
if [ ! -r /dev/fd0 ]; then
  mknod -m 660 /dev/fd0 b 2 0
  mknod -m 660 /dev/fd1 b 2 1
  mknod -m 660 /dev/fd2 b 2 2
  mknod -m 660 /dev/fd3 b 2 3
  chown root:floppy /dev/fd{0,1,2,3}
fi

# We don't want to kludge *every* possible device, but a few would certainly be
# useful.  Most of the benefit in udev is the massive reduction of tty/pty clutter
# (well, IMO), and I'd like to see kmod remain functional.  I'd take a few more
# requests here.  :-)
if [ ! -r /dev/rtc ]; then
  mknod -m 664 /dev/rtc c 10 135
fi

# Devices needed for VMWare:
if [ ! -r /dev/vmmon ]; then
  mknod -m 660 /dev/vmmon c 10 165
fi
if [ ! -r /dev/vmnet0 ]; then
  mknod -m 660 /dev/vmnet0 c 119 0
  for vmdev in 1 2 3 4 5 6 7 8 9 ; do
    if [ ! -r /dev/vmnet${vmdev} ]; then
      mknod -m 660 /dev/vmnet${vmdev} c 119 ${vmdev}
    fi
  done
  unset vmdev
fi

