if [ -x /opt/gnome/bin/scrollkeeper-update ]; then
  if [ -d /var/lib/scrollkeeper ]; then
    PATH=/opt/gnome/bin:$PATH
    /opt/gnome/bin/scrollkeeper-update -p /var/lib/scrollkeeper
  fi
fi
