export PATH=$HOME/bin:$HOME/local/bin:$HOME/brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/snap/bin
if [ -f $HOME/.pathappend ]
then
  export PATH=$PATH:$(cat $HOME/.pathappend)
fi

bindkey -v
unalias -m '*'
alias bat='batcat'
setopt NO_BEEP
setopt AUTO_CD
setopt AUTO_PUSHD
setopt APPEND_HISTORY
setopt HIST_VERIFY

export LANG=en_US.UTF-8
export MANPATH=$HOME/brew/share/man:/usr/share/man
export INFOPATH=$HOME/brew/share/info:/usr/share/info
export HISTSIZE=1000
export SAVEHIST=100000
export HISTFILE=~/.zsh_history
export EDITOR=/usr/bin/vim
export PAGER=/usr/bin/less
export PS1='%n@%m:%1~[%h]%# '

unset LESSOPEN
export LESSOPEN
unset LESSCLOSE
export LESSCLOSE
export LESSHISTFILE=-
export LESS='-XQLR'
