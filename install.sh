#!/bin/sh

ENTRIES='
  .config
  bin
  .bash_logout
  .bash_profile
  .bashrc
  .gitconfig
  .inputrc
  .tmux.conf
  .vim
  .vimrc
  .xscreensaver
  .zlogout
  .zshenv
  .zshrc
'
for entry in $ENTRIES
do
  if [ -d $HOME/$entry ]
  then
    cp -a $entry/* $HOME/$entry
  else
    cp -a $entry $HOME/$entry
  fi
done
