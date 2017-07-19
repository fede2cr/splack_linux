if [ ! -r etc/apache/mod_php.conf ]; then
  cp -a etc/apache/mod_php.conf.example etc/apache/mod_php.conf
elif [ "`cat etc/apache/mod_php.conf 2> /dev/null`" = "" ]; then
  cp -a etc/apache/mod_php.conf.example etc/apache/mod_php.conf
fi
if [ ! -r etc/apache/php.ini ]; then
   cp -a etc/apache/php.ini-recommended etc/apache/php.ini
fi
