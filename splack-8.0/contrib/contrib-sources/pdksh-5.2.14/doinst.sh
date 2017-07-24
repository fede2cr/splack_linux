if fgrep KSH_VERSION etc/profile 1> /dev/null 2> /dev/null; then
 GOOD=y
else
 echo 'if [ ! "$KSH_VERSION" = "" ]; then' >> etc/profile
 cat << EOF >> etc/profile
 . /etc/ksh.kshrc
 if [ -r $HOME/.kshrc ]; then
  . $HOME/.kshrc
 fi
fi
EOF
fi
if fgrep ksh etc/shells 1> /dev/null 2> /dev/null; then
 GOOD=y
else
 echo "/bin/pdksh" >> etc/shells
 echo "/bin/ksh" >> etc/shells
fi
