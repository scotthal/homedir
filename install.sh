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
  .vimrc
  .xscreensaver
  .zlogout
  .zshenv
  .zshrc
'
for entry in $ENTRIES; do cp -a $entry $HOME/$entry; done
