# This gets rid of the crud they've been shipping in
# the pciutils tarballs:
if [ -z "$1" ]; then
  echo "Usage:  pciutils-git-removal.sh <bloated tarball in .tar.gz format>"
  exit 1
fi

# You must start with a bloated .tar.gz, not a tar.bz2:
VERSION=$(basename $(echo $1 | cut -f 2 -d -) .tar.gz) 

rm -f pciutils-${VERSION}.tar.bz2
rm -rf pciutils-${VERSION}
tar xzf pciutils-${VERSION}.tar.gz
( cd pciutils-${VERSION}
  find . -type d -name ".git" -exec rm -rf {} \; 2> /dev/null
)
tar cf pciutils-${VERSION}.tar pciutils-${VERSION}
bzip2 -9 pciutils-${VERSION}.tar
rm -rf pciutils-${VERSION}

