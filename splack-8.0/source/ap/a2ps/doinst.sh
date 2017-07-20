# Install the info files for this package
if [ -x usr/bin/install-info ]
then
   usr/bin/install-info --info-dir=/usr/info /usr/info/regex.info.gz 2>/dev/null
   usr/bin/install-info --info-dir=/usr/info /usr/info/a2ps.info.gz 2>/dev/null
   usr/bin/install-info --info-dir=/usr/info /usr/info/ogonkify.info.gz 2>/dev/null
fi

# Process the incoming configuration files

if [ ! -f etc/a2ps-site.cfg ]
then
   mv install/conf/etc/a2ps-site.cfg etc/a2ps-site.cfg
else
   if [ "`md5sum install/conf/etc/a2ps-site.cfg | cut -d ' ' -f 1 2>/dev/null`" = "`md5sum etc/a2ps-site.cfg | cut -d ' ' -f 1 2>/dev/null`" ]
   then
      mv install/conf/etc/a2ps-site.cfg etc/a2ps-site.cfg
   else
      rm install/conf/etc/a2ps-site.cfg
   fi
fi

if [ ! -f etc/a2ps.cfg ]
then
   mv install/conf/etc/a2ps.cfg etc/a2ps.cfg
else
   if [ "`md5sum install/conf/etc/a2ps.cfg | cut -d ' ' -f 1 2>/dev/null`" = "`md5sum etc/a2ps.cfg | cut -d ' ' -f 1 2>/dev/null`" ]
   then
      mv install/conf/etc/a2ps.cfg etc/a2ps.cfg
   else
      rm install/conf/etc/a2ps.cfg
   fi
fi

# Make sure the incoming conf directory is gone
rm -rf install/conf
