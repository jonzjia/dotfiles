#!/bin/bash

# make.sh
# This script creates symlinks from the home directory


# Variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="vimrc tmux.conf bash_profile vim"    #list of files/folders to symlink

# Create dotfiles_old in home directory
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# Head over to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# Move existing dotfiles to dotfiles_old, then create symlinks from new dotfiles
for file in $files; do
	echo "Moving any existing dotfiles from ~ to $olddir"
	mv ~/.$file ~/dotfiles_old/
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done

# Download vundle
git clone git@github.com:gmarik/vundle.git '~/dotfiles/vim/bundle/'
