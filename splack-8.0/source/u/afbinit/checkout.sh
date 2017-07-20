#!/bin/sh
#
# Checks out afbinit from vger
# Last modified 09-Feb-2001, David Cantrell <david@slackware.com>
#

echo
echo "The password is:  cvs"
echo
cvs -d :pserver:cvs@vger.samba.org:/vger login

for module in afb
do
   rm -rf $module $module.tar.gz
   cvs -z3 -d :pserver:cvs@vger.samba.org:/vger co $module

   tar cvf $module.tar $module
   gzip -9 $module.tar

   rm -rf $module
done
