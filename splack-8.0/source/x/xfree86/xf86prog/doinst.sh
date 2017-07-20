#!/bin/sh
# If the user already has a host.def, then we don't
# want to mess with that:
if [ ! -r usr/X11R6/lib/X11/config/host.def ]; then
  echo > usr/X11R6/lib/X11/config/host.def
fi
