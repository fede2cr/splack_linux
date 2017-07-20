mkdir -p lib/outgoing
mv lib/libtermcap.so.2.0.8 lib/outgoing/libtermcap.so.2.0.8
mv lib/libtermcap.so.2.0.8-incoming lib/libtermcap.so.2.0.8
( cd usr/lib ; rm -rf libtermcap.so )
( cd usr/lib ; ln -sf /lib/libtermcap.so.2.0.8 libtermcap.so )
rm -f lib/libtermcap.so.2
if [ -x /sbin/ldconfig ]; then
  ( cd lib ; /sbin/ldconfig . )
else
  ( cd lib ; rm -rf libtermcap.so.2 )
  ( cd lib ; ln -sf libtermcap.so.2.0.8 libtermcap.so.2 )
fi
rm -rf lib/outgoing
