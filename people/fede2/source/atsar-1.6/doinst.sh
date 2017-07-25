cat >> var/spool/cron/crontabs/root <<eof
0     *    * * *   [ -f /var/lock/subsys/atsar ] && /usr/bin/atsa1
20,40 8-19 * * 1-5 [ -f /var/lock/subsys/atsar ] && /usr/bin/atsa1
eof

echo "root" >> var/spool/cron/crontabs/cron.update

cat >> etc/rc.d/rc.M <<eof

# Start the SAR
if [ -x /etc/rc.d/rc.atsar ]; then
  /etc/rc.d/rc.atsar
fi

eof

/usr/bin/atsa1
