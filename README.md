dotfiles
========
Aww yeah, Jon Jia's dotfiles. These dotfiles assume that you are Jon Jia and
using a terminal that supports 256 colors.

Prereqs
=======
- git
- vim

Installation
============
1 Go to your home directory
2. Git clone this repository
```
git clone git@github.com:jonzjia/dotfiles.git dotfiles
```
3. Go into new dotfiles directory.
4. Run the shell script. It will make symlinks for everything in dotfiles. It
   will also move all your old files over to a separate directory.
```
./make.sh
```
5. Download vundle
```
git clone http://github.com/gmarik/vundle.git ~/.vim/vundle.git
```
6. Fire up vim and run :BundleInstall
7. Enjoy Jon Jia's dotfiles
