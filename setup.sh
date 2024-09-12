#!/bin/bash

# this script naively symlinks .vimrc and .tmux.conf to dotfiles

dir=~/dotfiles
files="vimrc tmux.conf"

for file in $files; do
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/.$file
done
