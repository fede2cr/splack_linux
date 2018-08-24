#!/bin/csh
# KDE additions:
if ( ! $?KDEDIR ) then
    setenv KDEDIR /opt/kde
endif
if ( $?PATH ) then
    set path = ( $path $KDEDIR/bin )
else
    set path = ( $KDEDIR/bin )
endif
if ( $?MANPATH ) then
    setenv MANPATH ${MANPATH}:$KDEDIR/man
else
    setenv MANPATH $KDEDIR/man
endif
