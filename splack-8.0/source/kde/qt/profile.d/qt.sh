#!/bin/sh
# Environment variables for the Qt package:
QTDIR=/usr/lib/qt
CPLUS_INCLUDE_PATH=$QTDIR/include:$CPLUS_INCLUDE_PATH
MANPATH="$MANPATH:/usr/lib/qt/doc/man"
export QTDIR
export CPLUS_INCLUDE_PATH
export MANPATH
