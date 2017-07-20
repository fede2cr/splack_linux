#!/bin/sh
if [ ! -r etc/X11/xinit/xinitrc ]; then
  ( cd etc/X11/xinit ; ln -sf xinitrc.fvwm95 xinitrc )
fi
