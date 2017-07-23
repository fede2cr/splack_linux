#!/bin/sh
#
# make_boot_image.sh
# by:  David Cantrell <david@slackware.com>
#
# Generates SILO boot floppy images.
#
# ChangeLog:
# 21-May-2001   Modified to accept the image name as the $1 argument instead
#               of working across all available images.
#
# 04-Apr-2001   Gzip the kernel image before copying it to the floppy image.
#
# 05-Mar-2001   Initial version.
#

CWD=`pwd`
TMP=/tmp
OUTPUT=$TMP/output
BLOCKS=1440
SECTORS=18

if [ "$1" = "" ]
then
   echo "ERROR:  You must specify an image name as the argument."
   exit
fi

# create the output directory if we need to
if [ ! -d $OUTPUT ]
then
   mkdir -p $OUTPUT
fi

# make the images
for IMAGE in $*
do
   # This part taken from Debian's silo_proto.sh script
   dd if=/dev/zero of=$OUTPUT/$IMAGE bs=1k count=$BLOCKS
   mke2fs -F -v -i 32768 -m 0 $OUTPUT/$IMAGE $BLOCKS
   fdisk $OUTPUT/$IMAGE > /dev/null << EOF || true
0
2
$SECTORS
80
0




d
1
d
2
p
w
EOF
   mount -o loop $OUTPUT/$IMAGE /mnt
   rmdir /mnt/lost+found

   # set up the image root tree
   ( cd /mnt ; explodepkg $CWD/master.tar.gz )

   # depending on our image, select the appropriate /boot files and options
   if [ ! "`echo $IMAGE | grep sun4u`" = "" ]
   then
      rm -rf /mnt/boot/first.b
      SILO_FLAG="-u"
   else
      rm -rf /mnt/boot/ultra.b
      SILO_FLAG="-U"
   fi

   # copy the kernel to the image
   cp -a $CWD/$IMAGE/vmlinux $TMP/vmlinux
   gzip -9 $TMP/vmlinux
   mv $TMP/vmlinux.gz /mnt

   # install SILO
   silo $SILO_FLAG -r /mnt
   rm -rf /mnt/boot/old.b

   # done
   umount /mnt
done
