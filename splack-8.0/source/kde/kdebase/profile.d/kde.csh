#!/bin/csh
# KDE additions:
if ( ! $?KDEDIR ) then
    setenv KDEDIR /opt/kde
endif
if ( $?PATH ) then
    setenv PATH $KDEDIR/bin:$PATH
else
    setenv PATH $KDEDIR/bin
endif
