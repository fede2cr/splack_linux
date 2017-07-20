#!/bin/sh
if [ ! -L dev/cdrom ]; then # provide a reasonable default
 ( cd dev ; ln -sf /dev/scd0 cdrom )
fi
if [ ! -L dev/modem ]; then # provide a reasonable default
 ( cd dev ; ln -sf  ttyS1 modem )
fi
if [ ! -L dev/mouse ]; then # provide a reasonable default
 ( cd dev ; ln -sf  sunmouse mouse )
fi
# just in case
chmod 666 dev/ptmx
# end just in case
( cd dev ; rm -rf core )
( cd dev ; ln -sf /proc/kcore core )
( cd dev ; rm -rf ftape )
( cd dev ; ln -sf rft0 ftape )
( cd dev ; rm -rf nftape )
( cd dev ; ln -sf nrft0 nftape )
( cd dev ; rm -rf X0R )
( cd dev ; ln -sf null X0R )
( cd dev ; rm -rf rmt0 )
( cd dev ; ln -sf st0 rmt0 )
( cd dev ; rm -rf rmt1 )
( cd dev ; ln -sf st1 rmt1 )
( cd dev ; rm -rf nrmt0 )
( cd dev ; ln -sf nst0 nrmt0 )
( cd dev ; rm -rf nrmt1 )
( cd dev ; ln -sf nst1 nrmt1 )
( cd dev ; rm -rf nfsd )
( cd dev ; ln -sf socksys nfsd )
( cd dev ; rm -rf systty )
( cd dev ; ln -sf console systty )
( cd dev ; rm -rf fd )
( cd dev ; ln -sf /proc/self/fd fd )
( cd dev ; rm -rf stdin )
( cd dev ; ln -sf fd/0 stdin )
( cd dev ; rm -rf stdout )
( cd dev ; ln -sf fd/1 stdout )
( cd dev ; rm -rf stderr )
( cd dev ; ln -sf fd/2 stderr )
( cd dev ; rm -rf cgsix0 )
( cd dev ; ln -sf fb0 cgsix0 )
( cd dev ; rm -rf bwtwo0 )
( cd dev ; ln -sf fb0 bwtwo0 )
( cd dev ; rm -rf cgthree0 )
( cd dev ; ln -sf fb0 cgthree0 )
( cd dev ; rm -rf fb )
( cd dev ; ln -sf fb0 fb )
