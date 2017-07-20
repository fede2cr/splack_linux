#!/bin/sh

if [ -f /opt/gnome/lib/mozilla/regxpcom ]; then

    /bin/rm -rf /opt/gnome/lib/mozilla/chrome/overlayinfo
    /bin/rm -f /opt/gnome/lib/mozilla/chrome/*.rdf
    /bin/mkdir -p /opt/gnome/lib/mozilla/chrome/overlayinfo
    /bin/rm -f /opt/gnome/lib/mozilla/component.reg

    MOZILLA_FIVE_HOME=/opt/gnome/lib/mozilla \
	/opt/gnome/lib/mozilla/regxpcom >/dev/null 2>/dev/null

    MOZILLA_FIVE_HOME=/opt/gnome/lib/mozilla \
	/opt/gnome/lib/mozilla/regchrome >/dev/null 2>/dev/null
fi

exit 0
