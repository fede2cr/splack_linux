
This directory contains many precompiled Linux kernels. See the README in
the bootdisks directory for a brief description of the drivers in each one,
or the "config" files in these subdirectories for a complete description of
the compiled-in options.

The kernels found in directories ending with '.i' are for use on systems that
only need IDE hard drive/CD-ROM support.  Those ending in '.s' contain support
for at least one type of SCSI controller in addition to the usual IDE support.

Most people won't need this directory, but if you need to remake a bootdisk
here's what you do:

You can't do this under DOS - you'll have to be running Linux.

./makedisk name kernel
           |    |
           |    +- This is the name (and maybe path to) the kernel
           |       you plan to use, such as bare.i/bzImage.
           |
           +- This is the name to give the disk, like bare.i.

This should automatically create the disk image in /tmp.  Next, put a floppy
disk in your drive.  If you need to format, use this command:

fdformat /dev/fd0u1440

Once the drive is formatted, write the image to the floppy.  For example, if
the name of the disk image is bare.i, use this command:

cat bare.i > /dev/fd0

