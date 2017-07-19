
README for SunLinux.



Mail here _pours_ in at high volume, but feel free to report any problems you
find. I can't promise a response but I *do* appreciate the help people offer
me in fixing problems.  Also, if you do write to me, please use include a
valid email address somewhere in the message itself.  You'd be surprised how
many people I can't write back to because the return address is mangled for 
some reason.  Some of these people are even writing to me in reference to 
mail-related problems... "Why is my return address on outgoing mail wrong?" :^)


This is what you'll find in the subdirectories below:


bootdsks.144/, rootdsks/:
                Boot/install disks for 1.44MB floppy drives.  You will need
                at least one boot disk and both rootdisks to install the
                software.  See the README files in these directories for more
                information.

tftpboot/       Network boot/install images for 32-bit and 64-bit SPARC
                systems.  A TFTP boot server configuration tool is included
                in this directory as well.

splack/a1/      The base system.  Enough to get up and running and have elvis
                and comm programs available.  Based around the 2.2.19 Linux
                kernel, and concepts from the Linux filesystem standard.
                Installing the entire A series requires 48 MB.

splack/ap1/     Linux applications.  These are some useful programs, including
                better editors, file quota utilities, a spell checker, man
                pages (and the groff package needed to process them), a Norton
                Commander clone called the Midnight Commander, extra shells, and
                other utilities.  Installing the entire AP series uses 68 MB.

splack/d1/      Program development.  gcc-2.95.3, egcs-1.1.2 (gcc-2.8 based 
                C/C++/f77/ Objective-C compiler from egcs.cygnus.com -- mainly
                including for compiling kernels), make (GNU and BSD), byacc
                and GNU bison, flex, glibc-2.2.2, gdb, SVGAlib, ncurses, p2c,
                m4, perl, python, rcs.  Installing the entire D series will
                require 254 MB.

splack/e1/      GNU Emacs 20.7.  This is a text editor with about a million
                extra features that allow you to read your mail, news, edit
                and compile programs, and just about anything else you might
                need to do.  Installing the entire E series will require 52 MB.

splack/f1/      A collection of FAQs and other documentation.  Installing the
                F series requires about 16 MB.

splack/gtk1/    Applications for X that use the GTK+ toolkit, and GNOME.  This
                series includes useful X applications such as GIMP (a top-notch
                graphics editing program), Mozilla (a popular web browser), and
                GNOME (the GNU Network Object Model Environment), an
                easy-to-use graphical desktop environment for X.  Installing
                the GTK series requires 218 MB.

splack/k1/      Source code for the 2.2.19 Linux kernel.  You'll need this
                (along with the C compiler and utilities from the D series) if
                you want to recompile your Linux kernel.  Installing the K
                series will require 88 MB, and you'll need more to compile it.

splack/kde1/    The K Desktop Environment and the Qt libraries.  KDE is an
                easy-to-use desktop environment (similar to the desktop
                environments found under the MacOS or Windows98/NT) written by
                a world-wide network of software engineers committed to free
                software development.  Installing KDE requires 316 MB.

splack/n1/      Networking.  This package contains TCP/IP and UUCP support for
                Splack, including packages to support SLIP/PPP, mail programs 
                such as sendmail, pine, and elm, news readers like tin, trn,
                and nn, the Apache Web server, INN and cnews news servers, lynx
                Web browser, the netatalk Mac server, and Samba server for
                Windows networks.  Installing the entire N series will 
                use 77 MB.

splack/t1/      teTeX is Thomas Esser's TeX distribution.  TeX is a typesetting
                language that you can use to format and print high-quality
                output on many types of printers.  Installing the entire T
                series requires 111 MB.

splack/tcl1/    Tcl, Tk, TclX, Tix, expect;  built with ELF shared libraries
                and dynamic loading support.  The TCL series needs about 15 MB.

splack/u1/      UltraSPARC specific software.  The egcs64 compiler is here,
                along with the afbinit program.  Installing the entire U series
                requires 4 MB.

splack/y1/      Games.  The BSD games collection.  Installing the entire Y
                series will use about 5 MB.

contrib/        This directory contains extra packages for Splack, such as
                extra window managers for X and optional compilers.


--------- Packages for the X window system:


splack/x1/      The X Window System (XFree86 4.0.3) with libXpm.  Also includes
                xf86config and XF86Setup, two utilities to configure XFree86
                automatically.  The entire X series requires 86 MB.

splack/xap1/    Applications for the X Window System.  Extra programs for X,
                such as file managers (TkDesk, xfm), a window manager that
                makes X resemble Windows95 (fvwm95), an image viewer (xv), a
                fractal generator (xfractint), communications programs, and
                more.  Installing the entire XAP series will require about
                27 MB.

splack/xv1/     xview3.2p1-X11R6.  The XView series adds support for the Open
                Look window manager (commonly used on Sun systems), and for
                compiling XView applications.  The XV series uses 10 MB.


================================================================================


Installation notes for Splack Linux:


There are currently only two ways to boot Splack on your SPARC system--the
CD-ROM or network.  The BOOTING.TXT file explains more details on booting
Splack.  Once the system has booted, you can login as root and proceed with
the installation.


INSTALLATION DISKS:

You will need three installation disks:  a "bootdisk" and both "rootdisks".
To make your disks, you'll have to write the floppy images onto a pair of
formatted floppy disks.  (if your CD-ROM drive is bootable, you might try
booting the CD-ROM -- some Splack CD-ROMs are directly bootable,
eliminating the need to make boot and root disks)

  _The Bootdisk_

The bootdisk contains the Linux kernel which will be used on your system, so
it's important to choose this carefully.  The bootdisk images are found
in ./bootdsks.144 and the rootdisk images are found in ./rootdsks.  The
README.TXT in the bootdisk image directory explains the various choices in
detail.  There is no generic boot disk that will work on all SPARC systems, so
be sure to read the documentation in the bootdsks.144 directory and pick the
one that's right for your system.

The usual way to write out the floppy is with the RAWRITE.EXE utility.  This
should be run under real MS-DOS, if possible.  People using Win95 and NT have
reported running into problems with RAWRITE.EXE, but might be able to use the
alternate version RAWRITE12.EXE.  The image is written to a floppy in drive A:
like this:

  RAWRITE.EXE sun4c.s a:

If you are using a Unix workstation (such as a Sun), you may write out the
image with 'cat' or 'dd' like this:

      cat sun4c.s > /dev/rdf0

or:   dd if=sun4c.s of=/dev/(rdf0, rdf0c, fd0, or whatever) obs=18k
      This uses an 18K block size, which is needed on some workstations.
      On the ones where it's not needed, it still probably doesn't hurt.

  _The Rootdisks_

You'll also need both rootdisks.  The two disks actually make up a single
ramdisk, but since the files are too large for one floppy, we use two on the
SPARC platform.  The first root disk is the actual compressed ramdisk image
containing necessary to boot the installation system.  The second root disk
contains the setup program and programs not essential to booting the system.
You will need both of these to install Splack on your SPARC.  The first image
is written to a floppy in drive A: like this:

  RAWRITE.EXE color1.gz a:

For the second image is written this way:

  RAWRITE.EXE color2.dsk a:

You may also write the image using 'cat' or 'dd' as described above.

There are no other root disk images on the SPARC platform besides the "color"
one.  If you are using a serial console or a monochrome monitor, be sure to
"export TERM=vt100" before you start the installation program to ensure that
it looks normal.

NOTE:  You cannot install packages via floppy disks on the SPARC platform.
You can only use the floppy disks to boot the system and start the setup
program.  You will need the packages available via NFS, CD-ROM, or another
partition on the hard disk.


INSTALLING FROM HARD DRIVE OR NETWORK:

If you want to install from your hard drive, just set up a directory on your
DOS, Linux, or OS/2 partition containing the the disk subdirectories for the
disk sets you want.  For example, if you wanted to install the A series, you
might make a SLACK directory on your DOS drive and copy the A1, A2, A3, A4...
directories and their contents into it.  You can then specify this as the
source to install from when you run the setup program.  Like with the CD-ROM
installation, you'll only have to make the boot and root floppies.

To install from NFS, set up a similar directory on the NFS server you plan to
use, and then make sure the directory is exported.


WHAT IF MY CD-ROM IS NOT RECOGNIZED?

Don't panic -- you'll still be able to install Linux from your hard drive.
Sometimes new CD-ROM hardware comes out and doesn't work with Linux.  It can
take a while for Linux to support it because the Linux developers sometimes
aren't told about the hardware's introduction and don't hear about it at all
until people start sending email wondering why it doesn't work.

In the remote case that your CD-ROM drive works under Solaris or SunOS, but
not under Linux, you can still copy the data to your Solaris or SunOS
partition and install from there.  Simply boot that operating system, load
the CD-ROM, and then use the "cp" command to copy the /splack directory
from the CD to the hard disk.  Here's an example:

   # mkdir -p /splackinstall
   # cd /cdrom
   # cp -a splack /splackinstall

This will take about 1024 megabytes, so if you don't have that much space
you'll have to be selective about which disk sets to copy over.  You need at
least the A series to start with.  If you want to try to get your CD-ROM
running once the system is installed you can keep an eye on
sunsite.unc.edu:/pub/Linux/kernel for new kernels or kernel patches that
support your CD-ROM drive.


BOOTING THE BOOT/ROOT IMAGES

Insert the bootdisk in your floppy drive and reboot your system.  Hit ENTER when
you see the 'boot:' prompt to load and boot the Linux kernel.  The kernel will
produce lots of diagnostic information as it boots, allowing you to see if your
hardware has been detected and is working properly.  (in fact, once the boot
process stops at the "VFS: Insert root floppy disk" message, you can use the
right shift key with the PageUp and PageDown keys to scroll back and examine
the boot messages more carefully)

When the hardware detection is complete you'll see this prompt:

  VFS: Insert root floppy disk to be loaded into ramdisk and press ENTER

Take the bootdisk out of your floppy drive, insert the first rootdisk, and
press the ENTER key to load it.  The rootdisk will be uncompressed, loaded into
a ramdisk, and mounted as your root filesystem.  It will then eject the floppy
and ask for the second part of the root filesystem.  Insert the second root
disk and press ENTER to load it.  Once this is finished, you may log in as
'root' (there is no password).


DRIVE PARTITIONING

Before running the setup program, you'll need to make your parititons.  Before
doing any repartitioning, you are strongly advised to back up your data!

On Linux, whole IDE drives have names like /dev/hda, /dev/hdb, /dev/hdc.  SCSI
drives have names like /dev/sda, /dev/sdb, /dev/sdc.  Within this system, disk
partitions are denoted with additional digit(s).  For example, the partitions
on /dev/hda might be /dev/hda1, /dev/hda2, and /dev/hda3.  (NOTE: Linux may
not see partitions in the same order as DOS fdisk, so it's best to use size and
type rather than number to identify partitions made from DOS or other operating
systems)

To create new disk partitions, use the Linux tool 'cfdisk'.  For example, to
make partitions on your first IDE drive, you'd use this command to start the
cfdisk program:

   cfdisk /dev/hda

If you don't have any freespace on your system, you'll be unable to make any
partitions until you create some freespace.  One way to do this is to
physically add another drive to the system.  Another way is to use 'cfdisk' to
delete an existing drive partition, opening up some space for a Linux partition
to be created.

Depending on the amount of memory in your machine, you may also want to
allocate a 64 megabyte or so partition to be used as swap space.  This will be
added to the amount of RAM in your machine to get your total virtual memory.
To make a swap partition, first use cfdisk's "New" choice to make a partition,
then use the "Type" option to change the partition's type to 82 (Linux swap).

To save the changes made in cfdisk, exit using the "Write" option.  If you
don't want to save the changes for some reason, you can exit with the "Quit"
option (or just hit Control-C).


RUNNING SETUP

Once you have a Linux partition defined, you can run 'setup' to begin the
installing Linux.  This will scan your system's disk partitions, and then
bring up the installation menu.  You can start the installation by selecting
KEYMAP (if you're using a non-US keyboard) or ADDSWAP.  More information on
running 'setup' is available from the HELP option.

Make sure you have a blank, formatted floppy ready to make your Linux boot
disk at the end of the installation.

[NOTE]: You may install most software packages by typing "setup" on a
running system.  If you reinstall some of the base packages you might need to
reconfigure files in /etc or other places.  (once your system is configured
to your liking, it's wise to make a backup of the /etc directory)

You may review the list of installed packages on the installed system by
browsing through the files in /var/log/packages.  These packages may be
removed, reinstalled, or upgraded with the Splack package maintenance
tools 'installpkg', 'removepkg', and 'pkgtool'.


================================================================================


Notes regarding Splack Linux:
/* FIXME: These notes should be looked over with regard 
 * to Splack vs Slackware.
 */

- Netscape is not available in the distribution.  Though there was a release
  of Netscape Communicator made for Linux/SPARC, it is quite outdated.  You
  can use Mozilla which is available in the GTK series.  Lynx is in the N
  series and Konqueror is part of KDE (really nice web browser).

- Packages are named a bit differently than the packages in the Intel
  version of Slackware.  The general format is:

     <program name>-<version>-<architechture>-<build number>

  So the grep 2.4.3 package might have a name like this:

     grep-2.4.3-sparc-1.tgz

- All packages are built using the "protopkg" tool found at:

     ftp://ftp.slackware.com/pub/slackware/unsupported/protopkg

  Protopkg can also be found in the /contrib directory on this CD set.

- On the SPARC architechture, a program called SILO (SPARC Improved LOader) is
  used to boot system.  A "siloconfig" utility has been written to help set up
  SILO on your system.  Every effort has been made to make this utility look
  and act as much like the "liloconfig" utility on the Intel version of
  Slackware.


Enjoy!

-- 
This document was originally written by David Cantrell <david@slackware.com>
for Slackware SPARC port. He does not maintain it anymore.  
Please direct any questions to Alvaro Figueroa <fede2@fuerzag.ulatina.ac.cr>
instead.
