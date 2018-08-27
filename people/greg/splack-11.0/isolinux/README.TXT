
HOW TO MAKE A BOOTABLE SLACKWARE DVD ISO IMAGE

To make a bootable Slackware install DVD, get into the top level Slackware
directory (The one with ChangeLog.txt in it) and issue a command like this
to build the ISO image in /tmp:

mkisofs -o /tmp/slackware-dvd.iso \
  -R -J -A "Slackware Install" \
  -hide-rr-moved \
  -v -d -N \
  -no-emul-boot -boot-load-size 32 -boot-info-table \
  -sort isolinux/iso.sort \
  -b isolinux/isolinux.bin \
  -c isolinux/isolinux.boot \
  -V "SlackDVD" .

On my system, here's the command I'd use to burn the resulting DVD ISO:

cat /tmp/slackware-dvd.iso | growisofs -Z /dev/sr0=/dev/fd/0

Or, you can burn directly from the Slackware tree to a DVD(-/+)R(W):

mkisofs \
  -R -J -A "Slackware Install" \
  -hide-rr-moved \
  -v -d -N \
  -no-emul-boot -boot-load-size 32 -boot-info-table \
  -sort isolinux/iso.sort \
  -b isolinux/isolinux.bin \
  -c isolinux/isolinux.boot \
  -V "SlackDVD" . | growisofs -Z /dev/sr0=/dev/fd/0

If your burner is not /dev/sr0, replace the device with the one your
system uses.


HOW TO MAKE A SET OF BOOTABLE / INSTALLABLE CDROMS

This is a little bit more tricky.  Step one will be to split the tree into
portions that will fit on the media that you plan to burn to.  The first
disc must contain these directories:

/isolinux/
/kernels/
/slackware/

You'll need to make other /slackware/ directories on discs 2, 3, and maybe
more, moving some of the disc series from disc 1 to other discs to make
things fit.  It is also possible to split a series to make more efficient
use of the CD media.  See the README_SPLIT.TXT example and instructional
file in this directory for details about how to set that up.

The rest of the splitting up of discs is left as an exercise for the reader.

To make the first (bootable) ISO, a command like this is used within the
directory where the disc tree is.  Let's say the directory is 'd1' and you
wish to output the ISO image in /tmp:

cd d1
mkisofs -o /tmp/slackware-install-1.iso \
  -R -J -A "Slackware Install 1" \
  -hide-rr-moved \
  -v -d -N \
  -no-emul-boot -boot-load-size 32 -boot-info-table \
  -sort isolinux/iso.sort \
  -b isolinux/isolinux.bin \
  -c isolinux/isolinux.boot \
  -V "SlackCD1" .

Making a non-bootable disc is similar.  Just omit a few options:

cd d2
mkisofs -o /tmp/slackware-install-2.iso \
  -R -J -A "Slackware Install 2" \
  -hide-rr-moved \
  -v -d -N \
  -V "SlackCD2" .

To burn an ISO image to CD-R(W), the cdrecord command is used.  For complete
instructions, see the man page ('man cdrecord').  On my own machine where
the burner is /dev/sr0 (a 2.4.x kernel using ide-scsi), disc one would be
burned with the following command:

cat /tmp/slackware-install-1.iso | cdrecord -v dev=0,0,0 speed=10 fs=8m -eject -data -

As before, it's possible to burn from the disc trees without the intermediate
step of creating iso images by omitting the -o option to mkisofs and piping
the output directly to cdrecord:

cd d1
mkisofs \
  -R -J -A "Slackware Install 1" \
  -hide-rr-moved \
  -v -d -N \
  -no-emul-boot -boot-load-size 32 -boot-info-table \
  -sort isolinux/iso.sort \
  -b isolinux/isolinux.bin \
  -c isolinux/isolinux.boot \
  -V "SlackCD1" . | cdrecord -v dev=0,0,0 speed=10 fs=8m -eject -data -

-----

NOTES:
  The isolinux/isolinux.boot file will be created on the disc;  it's not
  supposed to be in the source tree.  I mention this only because so many
  people report the "missing" isolinux/isolinux.boot file as a bug.

  I don't know how to create a bootable Slackware ISO on operating systems
  other than Linux, but it should be easy to burn the Linux-created ISO with
  most CD burning software on any operating system.

Enjoy!

 -P.

