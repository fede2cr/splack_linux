( cd usr/bin ; rm -rf rpmbuild )
( cd usr/bin ; ln -sf ../lib/rpm/rpmb rpmbuild )
( cd usr/bin ; rm -rf rpmdb )
( cd usr/bin ; ln -sf ../lib/rpm/rpmdb rpmdb )
( cd usr/bin ; rm -rf rpme )
( cd usr/bin ; ln -sf ../lib/rpm/rpme rpme )
( cd usr/bin ; rm -rf rpmi )
( cd usr/bin ; ln -sf ../lib/rpm/rpmi rpmi )
( cd usr/bin ; rm -rf rpmquery )
( cd usr/bin ; ln -sf ../lib/rpm/rpmq rpmquery )
( cd usr/bin ; rm -rf rpmsign )
( cd usr/bin ; ln -sf ../lib/rpm/rpmk rpmsign )
( cd usr/bin ; rm -rf rpmu )
( cd usr/bin ; ln -sf ../lib/rpm/rpmu rpmu )
( cd usr/bin ; rm -rf rpmverify )
( cd usr/bin ; ln -sf ../lib/rpm/rpmv rpmverify )
( cd usr/lib ; rm -rf libpopt.so )
( cd usr/lib ; ln -sf libpopt.so.0.0.0 libpopt.so )
( cd usr/lib ; rm -rf libpopt.so.0 )
( cd usr/lib ; ln -sf libpopt.so.0.0.0 libpopt.so.0 )
( cd usr/lib ; rm -rf librpm.so )
( cd usr/lib ; ln -sf librpm.so.0.0.0 librpm.so )
( cd usr/lib ; rm -rf librpm.so.0 )
( cd usr/lib ; ln -sf librpm.so.0.0.0 librpm.so.0 )
( cd usr/lib ; rm -rf librpmbuild.so )
( cd usr/lib ; ln -sf librpmbuild.so.0.0.0 librpmbuild.so )
( cd usr/lib ; rm -rf librpmbuild.so.0 )
( cd usr/lib ; ln -sf librpmbuild.so.0.0.0 librpmbuild.so.0 )
( cd usr/lib ; rm -rf librpmio.so )
( cd usr/lib ; ln -sf librpmio.so.0.0.0 librpmio.so )
( cd usr/lib ; rm -rf librpmio.so.0 )
( cd usr/lib ; ln -sf librpmio.so.0.0.0 librpmio.so.0 )
( cd usr/lib/rpm ; rm -rf noarch-linux )
( cd usr/lib/rpm ; ln -sf sparc-rpm-linux noarch-linux )
( cd usr/lib/rpm ; rm -rf noarch-rpm-linux )
( cd usr/lib/rpm ; ln -sf sparc-rpm-linux noarch-rpm-linux )
( cd usr/lib/rpm ; rm -rf rpme )
( cd usr/lib/rpm ; ln -sf rpmi rpme )
( cd usr/lib/rpm ; rm -rf rpmt )
( cd usr/lib/rpm ; ln -sf rpmb rpmt )
( cd usr/lib/rpm ; rm -rf rpmu )
( cd usr/lib/rpm ; ln -sf rpmi rpmu )
( cd usr/lib/rpm ; rm -rf rpmv )
( cd usr/lib/rpm ; ln -sf rpmq rpmv )
( cd usr/lib/rpm ; rm -rf sparc-linux )
( cd usr/lib/rpm ; ln -sf sparc-rpm-linux sparc-linux )
( cd usr/lib/rpm ; rm -rf sparc64-linux )
( cd usr/lib/rpm ; ln -sf sparc64-rpm-linux sparc64-linux )
( cd usr/lib/rpm ; rm -rf sparcv9-linux )
( cd usr/lib/rpm ; ln -sf sparcv9-rpm-linux sparcv9-linux )
( cd usr/lib ; rm -rf rpmpopt )
( cd usr/lib ; ln -sf rpm/rpmpopt rpmpopt )
( cd usr/lib ; rm -rf rpmrc )
( cd usr/lib ; ln -sf rpm/rpmrc rpmrc )
# Process the incoming configuration files

if [ ! -f var/lib/rpm/Packages ]
then
   mv install/conf/var/lib/rpm/Packages var/lib/rpm/Packages
else
   if [ "`md5sum install/conf/var/lib/rpm/Packages | cut -d ' ' -f 1 2>/dev/null`" = "`md5sum var/lib/rpm/Packages | cut -d ' ' -f 1 2>/dev/null`" ]
   then
      mv install/conf/var/lib/rpm/Packages var/lib/rpm/Packages
   else
      rm install/conf/var/lib/rpm/Packages
   fi
fi

# Make sure the incoming conf directory is gone
rm -rf install/conf
