( cd usr/lib ; rm -rf libtiff.so )
( cd usr/lib ; ln -sf libtiff.so.3 libtiff.so )
( cd usr/lib ; rm -rf libtiff.so.3 )
( cd usr/lib ; ln -sf libtiff.so.3.5.5 libtiff.so.3 )
