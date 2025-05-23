export PATH=$HOME/bin:$HOME/.local/bin:$HOME/brew/bin:$HOME/.local/nvim/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/snap/bin
if [ -f $HOME/.pathappend ]
then
  export PATH=$PATH:$(/bin/cat $HOME/.pathappend)
fi

if [ "$PS1" ]
then
  unalias -a
  alias bat='batcat'
  set -o vi

  export LANG=en_US.UTF-8
  export HISTSIZE=1000
  export HISTFILESIZE=-1
  export EDITOR=/usr/bin/vim
  export PAGER=/usr/bin/less
  export PS1="\u@\h:\W[\!]\\$ "

  unset LESSOPEN
  unset LESSCLOSE
  export LESSHISTFILE=-
  export LESS="-XQLR"
fi
