#!/bin/sh
for file in `find /usr/share/emacs -name "*.el"` ; do
  if [ -r ${file}c ]; then
    true
  else
    echo $file
  fi
done
