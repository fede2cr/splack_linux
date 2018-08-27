
Welcome to Slackware 11!

Slackware 11.0 is a complete distribution of the Linux operating system.

This version contains the 2.4.33.3 Linux kernel, plus recent versions of
these (and many more) software packages:

- C compiler             gcc-3.4.6
- Binutils               2.15.92.0.2
- GNU C Library          glibc-2.3.6
- X Window System        X11R6.9.0 (aka 7.0.0) from X.Org.
- KDE                    3.5.4
- Xfce                   4.2.3.2

For installation instructions, see the file 'Slackware-HOWTO'.

For details of important changes from Slackware 10.2 to 11.0, see the file
'CHANGES_AND_HINTS.TXT'.  Thanks to Robby Workman for help with this.

For information about how to upgrade from Slackware 10.2 to 11.0, see the
file 'UPGRADE.TXT'.  The information in 'CHANGES_AND_HINTS.TXT' will also
be valuable to read before attempting a system upgrade.  As would a backup.

These are some of the important files and directories found on the Slackware
FTP site:

  ftp://ftp.slackware.com/pub/slackware/slackware-11.0/

There is also a newer (and faster) primary FTP site for Slackware here:

  ftp://slackware.osuosl.org/pub/slackware/slackware-11.0/

Thanks to cwo.com for continuing to help us with hosting for our web site
and ftp.slackware.com, and to the OSU Open Source Lab for hosting our
archives at slackware.osuosl.org.

If you're reading this on a CD-ROM, these directories will probably be
split across several discs.

.
|-- BOOTING.TXT          Tips for troubleshooting boot problems.
|-- CHECKSUMS.md5        MD5 format file checksums.
|-- COPYING              The GNU Public License.
|-- COPYRIGHT.TXT        Slackware copyright and trademark information.
|-- CRYPTO_NOTICE.TXT    Legal information about encryption in Slackware.
|-- ChangeLog.txt        Log of system changes from Slackware 10.2 to 11.0.
|-- FAQ.TXT              Frequently asked questions and answers.
|-- FILELIST.TXT         List of files on the Slackware FTP site.
|-- GPG-KEY              The GnuPG key used to verify Slackware packages.
|-- PACKAGES.TXT         A detailed list of the core Slackware packages.
|-- SPEAKUP_DOCS.TXT     Documentation for the Speakup speech synth software.
|-- SPEAK_INSTALL.TXT    How to install with Speakup speech synthesis.
|
|-- Slackware-HOWTO      Instructions for installing Slackware from CD.
|                        If you're new to Slackware, start with this.
|
|-- UPGRADE.TXT          Instructions for upgrading from earlier versions.
|
|-- bootdisks/           Bootdisks for installing without a bootable CD-ROM or
|   |                    for starting a Linux system from floppy disk.  See
|   |                    also the rootdisks/ directory below.
|   |
|   |-- RAWRITE.EXE      The "RAWRITE" programs are used to write a floppy
|   |-- RAWRITE12.DOC    image under DOS or Windows.  Because there are a lot
|   |-- RAWRITE12.EXE    of versions of DOS and Windows, there are several
|   |-- RAWRITENT.DOC    versions of RAWRITE, and you may have to try a few
|   |-- RAWRITENT.EXE    before finding one that works with your version of DOS
|   |-- RAWRITEXP.EXE    or Windows.
|   | 
|   |-- README.TXT       Detailed descriptions of all the boot floppies.
|   |
|   |-- adaptec.s        Adaptec bootdisk.
|   |-- ataraid.s        Bootdisk with ATA (IDE) RAID support.
|   |-- bare.i           Standard IDE/ATAPI bootdisk (default kernel).
|   |-- bareacpi.i       IDE/ATAPI bootdisk with ACPI power support.
|   |-- ibmmca.s         IBM PS/2 Microchannel bus bootdisk.
|   |-- jfs.s            Bootdisk with IBM JFS support.
|   |-- lowmem.i         Bootdisk for machines too low on RAM to boot bare.i.
|   |                    This is also the only kernel that supports a 386.
|   |-- old_cd.i         Old non-SCSI non-IDE CD-ROM drive support bootdisk.
|   |-- pportide.i       Parallel port IDE bootdisk.
|   |-- raid.s           SCSI RAID bootdisk.
|   |-- scsi.s           Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- scsi2.s          Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- scsi3.s          Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- speakup.s        bare.i + Speakup speech support.  Also AIC7xxx SCSI.
|   `-- xfs.s            Bootdisk with support for SGI XFS and AIC7xxx SCSI.
|
|-- extra/               Extra packages for Slackware like:
|   |                    k3b-0.12.17 and k3b-i18n-0.12.17 (CD/DVD burning
|   |                    software), a collection of ham radio related
|   |                    packages, INN 2.4.3 (a USENET news server),
|   |                    grub-0.97 (an alternate boot loader), extra word 
|   |                    lists for the aspell spell checker, mpg123-0.59r 
|   |                    an MP3 decoder), emacspeak-23.0 (speech support
|   |                    for the Emacs editor), xcdroast-0.98alpha15 
|   |                    (another CD burning  program), libsafe-2.0.16 (a
|   |                    library to add additional security checks to C 
|   |                    library functions), brltty-3.6.1 (Braille terminal
|   |                    support), dip-3.3.7p (a communications program for
|   |                    using the SLIP protocol), jdk-1_5_0_09 (the Java(TM)
|   |                    Development Kit), slackpkg-2.09 (a program to help
|   |                    keep your Slackware system updated), emu-tools-0.9.4
|   |                    (tools for using Creative sound hardware),
|   |                    bash-completion-20060301 (adds additional command
|   |                    completion features to the bash shell),
|   |                    bittornado-0.3.12 and bittorrent-4.4.0 (programs
|   |                    for using the popular BitTorrent file sharing
|   |                    system), checkinstall-1.6.0 (a tool to help build
|   |                    Slackware packages), btmgr-3.7_1 (a boot manager
|   |                    program that can help boot a CD on machines that
|   |                    aren't able to do that directly), parted-1.7.1
|   |                    (an advanced disk-partitioning tool),
|   |                    slacktrack-1.29 (a tool to make Slackware packages
|   |                    by tracking installation from source code),
|   |                    linux-wlan-ng (additional wireless drivers),
|   |                    blackbox-0.70.1 (a newer version of the blackbox
|   |                    window manager), php-5.1.6 (a HTML-embedded scripting
|   |                    language), udev-alternate-versions v064 and v071, 
|   |                    x11-radeon-patched-6.9.0 (a X11 ATI Radeon with a
|   |                    partial fix -- don't use this unless your card needs
|   |                    it), device-mapper-1.02.09 (device-mapper for logical
|   |                    volume management), lvm2-2.02.09 ( a Logical Volume
|   |                    Manager version 2), linux-2.6.17.13 (kernel-generic,
|   |                    kernel-modules, kernel-headers and kernel source
|   |                    packages), linux-2.6.17.13-smp (optimized for dual-
|   |                    core and multiprocessor machines: kernel-generic-smp,
|   |                    kernel-modules-smp, and kernel-headers-smp), and
|   |                    ktorrent-2.0.2 (a BitTorrent program for KDE). 
|   |
|   `-- source/          Source code for the extra packages.
|
|-- isolinux/            The ISOLINUX loader and initrd.img used to install
|   |                    Slackware from a CD-ROM.  You'll also find the
|   |                    PCMCIA and network images (these can be loaded
|   |                    from the installation CD-ROM), and a README.TXT
|   |                    describing how to create a Slackware installation
|   |                    ISO image and burn it to CD-R or DVD-(+)R.
|   |
|   |-- README.TXT       How to burn a Bootable Slackware disc.
|   |-- initrd.img       Installation initrd (can also be loaded with Loadlin)
|   |-- network.dsk      Image containing network modules for Linux 2.4.33.3.
|   |-- network26.dsk    Image containing network modules for NFS installs with
|   |                    the huge26.s (2.6.17.13) Linux kernel.
|   `-- pcmcia.dsk       Image containing PCMCIA modules for Linux 2.4.33.3.
|
|-- kernels/             Many precompiled Linux 2.4.33.3 kernel images.
|   |
|   |-- adaptec.s/       Adaptec kernel.
|   |-- ataraid.s/       Kernel with ATA (IDE) RAID support.
|   |-- bare.i/          Standard IDE kernel.
|   |-- bareacpi.i       IDE/ATAPI kernel with ACPI power support.
|   |-- ibmmca.s/        IBM Microchannel kernel.
|   |-- jfs.s/           IBM Journaled Filesystem +aic7xxx SCSI kernel.
|   |-- loadlin16c.txt   Loadlin README file.
|   |-- loadlin16c.zip   Loadlin boot loader (used to boot Linux from DOS)
|   |-- lowmem.i/        Kernel that uses very little memory.
|   |-- old_cd.i/        Old non-SCSI non-IDE CD-ROM support kernel.
|   |-- pportide.i/      Parallel port IDE kernel.
|   |-- raid.s/          SCSI RAID kernel.
|   |-- scsi.s/          Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- scsi2.s/         Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- scsi3.s/         Supports some SCSI cards (see bootdisks/README.TXT).
|   |-- speakup.s/       bare.i + Speakup speech support.  Also AIC7xxx SCSI.
|   |-- huge26.s/        A loaded 2.6.17.13 kernel with support for nearly all
|   |                    filesystems, SCSI controllers, and SATA.  This may
|   |                    be useful for getting Slackware installed on some
|   |                    hardware that's not supported by the 2.4.33.3 kernel.
|   |                    If you use this kernel, MAKE SURE that when you
|   |                    reach the installer's kernel installation menu that
|   |                    you install this kernel again, or you may find that
|   |                    the machine will not reboot properly.  Also, this
|   |                    kernel will require the kernel-modules package from
|   |                    /extra/linux-2.6.17.13/.
|   |-- test26.s         A loaded 2.6.18 kernel for testing (needs modules from
|   |                    testing/packages/linux-2.6.18).  Like huge26.s, this
|   |                    kernel supports nearly all filesystems, SCSI
|   |                    controllers, and SATA.  This may be useful for getting
|   |                    Slackware installed on some hardware that's not
|   |                    supported by the 2.4.33.3 kernel.  If you use this
|   |                    kernel, MAKE SURE that when you reach the installer's
|   |                    kernel installation menu that you install this kernel
|   |                    again, or you may find that the machine will not
|   |                    reboot properly.  To use this kernel, you will also
|   |                    need to install the kernel-modules package in
|   |                    /testing/packages/linux-2.6.18/ after finishing the
|   |                    installation process.
|   |                    If you really want to test or just try out the very
|   |                    latest Linux kernels, the place to look is on
|   |                    ftp.kernel.org in /pub/linux/kernel/v2.6.
|   |-- xfs.s/           Bootdisk with support for SGI XFS and AIC7xxx SCSI.
|   `-- zipslack.s/      Kernel with Iomega and other SCSI support.
|
|-- pasture/             These are packages that have been removed
|                        from Slackware, but are useful enough to
|                        keep around.  Might not be secure.
|
|                        Packages currently found here include apsfilter-7.2.5
|                        (not usually used with CUPS), LPRng-3.8.28,
|                        ifhp-3.5.18, db1-1.85, db2-2.4.14,  db3-3.3.11,
|                        db31-3.1.17, db4-4.1.25, devfsd-1.3.25,
|                        fvwm95-2.0.43ba, ipchains-1.3.10, links-0.98, 
|                        and wu-ftpd-2.6.2.
|
|-- rootdisks/           Slackware installation and rescue floppy images.
|   |
|   |-- RAWRITE.EXE      The "RAWRITE" programs are used to write a floppy
|   |-- RAWRITE12.DOC    image under DOS or Windows.
|   |-- RAWRITE12.EXE
|   |-- RAWRITENT.DOC
|   |-- RAWRITENT.EXE
|   |-- RAWRITEXP.EXE
|   |
|   |-- README.TXT       This README.TXT file explains the various choices.
|   |-- install.1        install.1 and install.2 are the install floppy images.
|   |-- install.2        If you will be starting the install using a boot
|   |                    floppy, then you will need to load both of these.
|   |
|   |-- install.zip          install.zip is a version of the installer that
|   |-- install.zip.README   runs from a DOS partition.  See the README.
|   |
|   |-- network.dsk          This is used also with install.1 and install.2
|   |-- network.dsk.README   to do installation from an NFS server.
|   |
|   |-- pcmcia.dsk           This is used to activate PCMCIA devices (laptop
|   |-- pcmcia.dsk.README    cards) needed during installation.
|   |
|   |-- rescue.dsk           A simple rescue floppy you can load with a
|   |-- rescue.dsk.README    bootdisk.
|   |
|   `-- sbootmgr.dsk         A small image containing a simple boot manager.
|                            In some cases this can be used to boot a CD in a
|                            machine that otherwise couldn't support it.
|
|-- slackware/           This directory contains the core software packages
|   |                    for Slackware 11.0.
|   |
|   |-- a/               The A (base) package series.
|   |-- ap/              The AP (applications) package series.
|   |-- d/               The D (development) package series.
|   |-- e/               The E (GNU Emacs) package series.
|   |-- f/               The F (FAQ/Documentation) package series.
|   |-- k/               The K (kernel source) package series.
|   |-- kde/             The KDE package series.
|   |-- kdei/            The KDE internationalization package series.
|   |-- l/               The L (libraries) package series.
|   |-- n/               The N (networking) package series.
|   |-- t/               The T (TeX) package series.
|   |-- tcl/             The TCL (Tcl/Tk and related) package series.
|   |-- x/               The X (X Window System) package series.
|   |-- xap/             The XAP (X applications) package series.
|   `-- y/               The Y (BSD games) package series.
|
|-- source/              This directory contains source code for the core
|   |                    software packages in Slackware.
|   |
|   |-- a/               Source for the A (base) series.
|   |-- ap/              Source for the AP (applications) series.
|   |-- d/               Source for the D (development) series.
|   |-- e/               Source for the E (GNU Emacs) series.
|   |-- f/               slack-desc files for the F (FAQ) series.
|   |-- k/               Source for the K (kernel source) series.
|   |-- kde/             Source for the KDE series.
|   |-- kdei/            Source for the KDEI series.
|   |-- l/               Source for the L (libraries) series.
|   |-- n/               Source for the N (networking) series.
|   |-- rootdisks/       Source for utilities on the rootdisks.
|   |-- t/               Source for the T (TeX) series.
|   |-- tcl/             Source for the TCL (Tcl/Tk and related) series.
|   |-- x/               Source for the X (X Window System) series.
|   |-- xap/             Source for the XAP (X applications) series.
|   `-- y/               Source for the Y (BSD games) series.
|
`-- zipslack/            This is ZipSlack, a small (under 250MB) Slackware
    |                    system packaged as a Zip file.  Installation
    |                    is as simple as unzipping zipslack.zip on a FAT or
    |                    FAT32 partition, or Zip disk.  It does not come
    |                    with X, but is a good starting point for a base
    |                    installation and includes enough networking tools
    |                    to be able to get online and fetch additional
    |                    packages.  The package management tools allow you
    |                    to add as much extra software as you have space
    |                    for (such as L and X, or even a complete Slackware
    |                    system including KDE) once you boot the system.
    |                    For more information, see the README.1st file.
    |
    |-- ChangeLog.txt    Changes to ZipSlack.
    |-- FAQ.TXT          ZipSlack FAQ.
    |
    |-- RAWRITE.EXE      The "RAWRITE" programs are used to write a floppy
    |-- RAWRITE12.DOC    image under DOS or Windows.
    |-- RAWRITE12.EXE 
    |-- RAWRITENT.DOC
    |-- RAWRITENT.EXE 
    |-- RAWRITEXP.EXE 
    |
    |-- README.1st       ZipSlack README and installation instructions.
    |-- README.ppa       Information about parallel port Zip drives.
    |-- bootdisk.img     A bootdisk you can use to boot ZipSlack.
    |-- fourmeg.txt      README for the 8MB swapfile package for ZipSlack.
    |-- fourmeg.zip      An 8MB swapfile useful on machines with low RAM.
    `-- zipslack.zip     ZipSlack as a single Zip archive.


If you like Slackware, please consider supporting the project by becoming
a Slackware subscriber.  The announcement (ANNOUNCE_11.0) in this directory
has information about subscribing to the Slackware CD-ROM releases, or you
can read about it (and check out other Slackware products) by visiting the
Slackware store:

    http://store.slackware.com


Enjoy!

Patrick Volkerding
volkerdi@slackware.com

