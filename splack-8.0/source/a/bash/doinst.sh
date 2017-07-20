if [ -r bin/bash ] 
then   
   mv bin/bash bin/bash.old
fi 
mv bin/bash2.new bin/bash
if [ "`grep '/bin/bash' etc/shells 2>/dev/null`" = "" ]
then
   echo "/bin/bash" >> etc/shells
fi
