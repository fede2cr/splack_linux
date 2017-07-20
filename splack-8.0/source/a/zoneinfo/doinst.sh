# Add the default link in /etc, if none exists:
if [ ! -L etc/localtime ]; then
 ( cd etc ; rm -rf localtime )
 ( cd etc ; ln -sf ../usr/share/zoneinfo/Factory localtime )
fi
# Add the default link in /usr/share/zoneinfo, if none exists:
if [ ! -L usr/share/zoneinfo/localtime ]; then
 ( cd usr/share/zoneinfo ; rm -rf localtime )
 ( cd usr/share/zoneinfo ; ln -sf /etc/localtime localtime )
fi
( cd usr/share/zoneinfo ; rm -rf timeconfig )
( cd usr/share/zoneinfo ; ln -sf /usr/sbin/timeconfig timeconfig )
### Make the rest of the symbolic links in the zoneinfo database:
