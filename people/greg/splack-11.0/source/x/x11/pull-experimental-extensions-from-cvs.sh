echo "Password is enter:"
cvs -d :pserver:anoncvs@cvs.freedesktop.org:/cvs/xorg login

# you can get the latest X.Org tree here, btw
#cvs -d :pserver:anoncvs@cvs.freedesktop.org:/cvs/xorg co xc

# These are a few quick-n-dirty utils to test new X extensions:
cvs -d:pserver:anoncvs@freedesktop.org:/cvs/xapps co transset
cvs -d:pserver:anoncvs@freedesktop.org:/cvs/xapps co xcompmgr

# Tar 'em up:
tar czf transset.tar.gz transset
tar czf xcompmgr.tar.gz xcompmgr

# rmdirs:
rm -rf transset xcompmgr

