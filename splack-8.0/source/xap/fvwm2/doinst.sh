TMP=/var/log/setup/tmp
#if [ -r etc/X11/xinit/xinitrc -a \
#     ! -L etc/X11/xinit/xinitrc ]; then
#       echo "Moving your old xinitrc to /etc/X11/xinit/xinitrc.backup..."
#        mv etc/X11/xinit/xinitrc etc/X11/xinit/xinitrc.backup
#fi
if [ ! -r $TMP/SeTcolor -a ! "$COLOR" = "on" ]; then
 echo "  Installing FVWM as your default window manager (start with 'startx')"
 echo "  --> cd /etc/X11/xinit"
 echo "  --> ln -sf xinitrc.fvwm2 xinitrc"
fi
( cd etc/X11/xinit ; rm -rf xinitrc )
( cd etc/X11/xinit ; ln -sf xinitrc.fvwm2 xinitrc )
