#!/bin/sh
##
## 8-1-97 Ian Kinner (ian@llc.net)
##
## Simple sh script to remove stale files left in the in.pop3d tmp 
## directory, which cause DoS for POP3 users. Should be run by a crontab
## every 15 minutes or so.
##
## Modified 2-10-1999 Patrick J. Volkerding (volkerdi@slackware.com)
##

# in.pop3d spool directory:
TMPDIR=/var/spool/pop
if [ ! -d $TMPDIR ]; then
  exit
fi

# Secure (non user-writable) location for temporary files:
STMP=/var/log/setup/tmp

# Make secure TMP directory if it doesn't already exist:
if [ ! -d $STMP ]; then
  mkdir -p $STMP
  chmod 700 $STMP
fi

# Generate a list of users with POP files in $TMPDIR.  If these
# users are not currently using POP, then they're locked out.
ls -l $TMPDIR | awk '{print $9}' > $STMP/USERLIST
NUMBER=`wc -l $STMP/USERLIST | awk '{print $1}'`

while [ $NUMBER -gt 1 ]; do
  USER=`head -$NUMBER $STMP/USERLIST | tail -1`
  if ps aux | grep in.pop3d | grep "^$USER " 1> /dev/null ; then # logged in
    DONOTHING=true
  else # stale lock file found
    rm -f $TMPDIR/$USER
    echo "flushpop.sh: stale POP file for $USER deleted" | logger
  fi
  NUMBER="`expr $NUMBER - 1`"
done

rm -f $STMP/USERLIST

