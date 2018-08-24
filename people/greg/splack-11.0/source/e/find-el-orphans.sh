#!/bin/sh
# This script emits a list of all the .el files for which
# there is no corresponding .elc file, as well as all the
# terminal related .el files, and other special .el files
# suggested by Emacs users over the years.
#
# These should always be installed.

VERSION=21.3

( for file in `find /usr/share/emacs -name "*.el"` ; do
    if [ -r ${file}c ]; then
      true
    else
      echo $file
    fi
  done
  # OK, now out with the term .el files:
  find /usr/share/emacs/$VERSION/lisp/term -name "*.el" 
  # Next, the user-supplied list:
  echo /usr/share/emacs/$VERSION/lisp/abbrevlist.el
  echo /usr/share/emacs/$VERSION/lisp/bindings.el
  echo /usr/share/emacs/$VERSION/lisp/cdl.el
  echo /usr/share/emacs/$VERSION/lisp/emacs-lisp/cl-specs.el
  echo /usr/share/emacs/$VERSION/lisp/emulation/edt-lk201.el
  echo /usr/share/emacs/$VERSION/lisp/emulation/edt-vt100.el
  echo /usr/share/emacs/$VERSION/lisp/foldout.el
  echo /usr/share/emacs/$VERSION/lisp/gnus/nnlistserv.el
  echo /usr/share/emacs/$VERSION/lisp/international/iso-transl.el
  echo /usr/share/emacs/$VERSION/lisp/mail/rmailmsc.el
  #echo /usr/share/emacs/$VERSION/lisp/mail/rnews.el
  #echo /usr/share/emacs/$VERSION/lisp/mail/sc.el
  echo /usr/share/emacs/$VERSION/lisp/misc.el
  echo /usr/share/emacs/$VERSION/lisp/vt-control.el
  #echo /usr/share/emacs/$VERSION/lisp/x-apollo.el
) | sort | uniq

# Done!

