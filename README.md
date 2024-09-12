dotfiles
========
Minimal portable setup using only features built into standard vim and tmux. No package manager, lsp, plugins, etc.

Ideal for servers you need to ssh into.

Prereqs
=======
1. vim
2. tmux
3. command line access

Installation
============
You could just copy paste the vimrc and tmux config files yourself.

A simple utility script is provided if you don't want to to do that. It is naive and will destroy / replace anything you already have. This is meant to be used on fresh servers.

1. ssh into server
2. git clone this repository
3. Run the setup.sh shell file
4. Enjoy
