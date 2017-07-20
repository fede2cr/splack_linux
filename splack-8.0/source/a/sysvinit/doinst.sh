# OK, we've tried to make it so you can just dump this package in with 
# "installpkg" to upgrade your system.  Maybe in the future we'll make more
# packages upgradable where possible.
if [ ! -r etc/rc.d/rc.local ]; then
  mv etc/rc.d/rc.local.new etc/rc.d/rc.local
fi
if [ -r sbin/init ]; then
  mv sbin/init tmp/init.old
fi
mv sbin/init.new sbin/init
( cd sbin ; rm -rf telinit )
( cd sbin ; ln -sf  init telinit )
( cd sbin ; rm -rf reboot )
( cd sbin ; ln -sf  halt reboot )
( cd etc/rc.d ; rm -rf rc.0 )
( cd etc/rc.d ; ln -sf rc.6 rc.0 )
( cd sbin ; rm -rf pidof )
( cd sbin ; ln -sf killall5 pidof )
( cd sbin ; rm -rf poweroff )
( cd sbin ; ln -sf halt poweroff )
