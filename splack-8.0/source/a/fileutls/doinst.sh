( cd usr/bin ; rm -rf install )
( cd usr/bin ; ln -sf ginstall install )
( cd usr/man/man1 ; rm -rf install.1.gz )
( cd usr/man/man1 ; ln -sf ginstall.1.gz install.1.gz )
if [ -x /bin/dircolors ]; then
  if [ "$SHELL" = "/bin/zsh" ]; then
    eval `dircolors -z`
  elif [ "$SHELL" = "/bin/ash" ]; then
    eval `dircolors -s`
  else
    eval `dircolors -b`
  fi
fi
