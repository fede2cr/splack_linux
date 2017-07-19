
# Don't mv the mutt docs directory, because mutt uses 'em.
# Make a link instead.
( cd usr/doc ; rm -rf mutt-* ; ln -sf mutt mutt-1.2.5.1 )
