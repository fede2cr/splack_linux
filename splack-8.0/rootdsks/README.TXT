These are root-install disks for Slackware 7.3

You will need one of these disks to install Linux. (You'll also need a bootdisk
to be able to boot any of these disks -- see one of the bootdsks directories
for those)  The disk is created by writing the image out with RAWRITE.EXE under
DOS.  For example, to make the color1.gz rootdisk, you'd put a formatted floppy
in your floppy drive, and then run this command:

C:\> RAWRITE COLOR1.GZ A:

Normally you should not decompress these disks -- the kernel will do that as
it loads them.  The disk images must be written to 1.44MB floppies.


Here's a description of the choices:

--------------------------------------------------------------------------------

 color1.gz    This is the default Slackware installation disk, used to install
              Slackware Linux to its own partition.  The name color.gz comes
              from the color menus used to install Slackware.  This is the 
              installation disk most people should use.  NOTE: The 'dialog'
              program used by the install system is not forgiving of extra
              keystrokes entered between screens, so type carefully.

 color2.dsk   This is the second part of color1.gz.  The root ramdisk image for
              the SPARC platform is too large for one floppy, so this overflow
              floppy is used for everything not required for the booting stage.
              The color1.gz image will prompt you to insert this disk when it
              needs it.

There's also these supplemental hardware support disk images, used in 
conjunction with one of the disks above:

 network.dsk  This supplemental disk provides support for ethernet cards. To
              use this disk to scan for network devices (this is only done if
              you need to use them DURING the installation), you enter
              'network' after logging into the primary install disk.

NOTE:  If you are using one the 2.4.4 kernel, you will need to use one of
these replacements for the supplemental disks:

 netw244.dsk  Network supplemental disk for Linux 2.4.4.

--------------------------------------------------------------------------------
