#!/bin/bash

# Once altertrack has determined what the contents of the package
# should be, it copies them into $SLACKTRACKFAKEROOT
# From here we can make modifications to the package's contents
# prior to makepkg being run.

# If you modify anything here, be careful *not* to include the full
# path name - only use relative paths (ie rm usr/bin/foo *not* rm /usr/bin/foo).

# Enter the package's contents:
cd $SLACKTRACKFAKEROOT

# OpenSP creates this symlink; we delete it.
if [ -L usr/share/doc ]; then
   rm -f usr/share/doc
fi

# Incase you had CUPS running:
rm -rf etc/cups

# perllocal.pod files don't belong in packages.
# SGMLSPL creates this:
find . -name perllocal.pod -print0 | xargs -0 rm -f

# Incase you are using a version of altertrack prior to 1.20:
# nothing else is here apart from /var/lib/rpm (due to installing
# RPMs):
rm -rf var 

# Now you should manually extract the .tgz 
# - check through the install/doinst.sh script;
# - check the contents, permissions and ownerships in the .tgz
