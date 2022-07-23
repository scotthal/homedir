export PATH=$HOME/bin:$HOME/brew/bin:/usr/local/bin:/usr/bin:/usr:/usr/local/sbin:/usr/sbin:/sbin:/snap/bin
if [ -f $HOME/.pathappend ]
then
  export PATH=$PATH:$(cat $HOME/.pathappend)
fi
