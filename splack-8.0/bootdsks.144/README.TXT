These are 1.44 MB bootdisk images for Slackware Linux 7.3.0

These disks use Linux kernel version 2.2.20pre2.

You'll need one of these to get Linux started on your system so that you
can install it.  You will be using the bootdisk to load and start a
rootdisk.  See the /rootdsks directory for those.

A bootdisk is created by writing the image to a floppy disk using dd under
Unix.  For example, to create the sun4c.s bootdisk, put a floppy disk in
your floppy drive and issue the following command:

   # dd if=sun4c.s of=/dev/fd0

The RAWRITE utility has been included, which can be used to create the
boot disk on a Windows or DOS system.

These kernels are based upon the same config files as the images in the
/kernels directory.  However, it is strongly recommended that you install
a kernel from the /kernels directory instead of one from this directory.
These images may occassionally drop support for devices that are not needed
by the rootdisk in order to fit within the space of one floppy.  Please,
only use these kernels for booting up the installer.

These boot disks are configured with three boot methods.  They are:

   ramdisk     The default boot method which loads the kernel and then
               prompts for the root disk floppies.

   serial      Same as ramdisk, but is used for loading the serial console
               root disk floppies.

   mount       Used to boot your system via floppy and mount your root
               filesystem on your hard disk (used for emergencies).

Most people will want to use the first line.

--
David Cantrell
david@slackware.com
