#--PATH-------------------------------------------------------------------------
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/usr/local/gnat/bin


#--Bash-Aliases-----------------------------------------------------------------
alias profile='vim ~/dotfiles/bash_profile'
alias refresh='source ~/dotfiles/bash_profile'
alias k='clear'
alias ls='ls -G'
alias ll='ls -alhF --color=auto'
alias all='ls -a'


#--vimrc------------------------------------------------------------------------
alias vimrc='vim ~/dotfiles/vimrc'
export EDITOR=vim


#--Common-Shortcuts-------------------------------------------------------------
alias downloads='pushd . && open ~/Downloads'
alias dl='open ~/Downloads'
alias code='open ~/Dropbox/[CodeWorkspace]'
alias projects='pushd . && open ~/Dropbox/Projects && cd ~/Dropbox/Projects/' 


#--Stack-Navigation-------------------------------------------------------------
alias stack='dirs -v'
alias pushdthis='pushd .'
alias up='cd ..'
alias empty='popd && cd'


#--Webserver-Aliases------------------------------------------------------------
alias salm='ssh jzj2101@salm.dreamhost.com'
alias pegasus='ssh honestfred@pegasus.dreamhost.com'
alias spica='ssh circacmunny@spica.dreamhost.com'
alias cunix='ssh jzj2101@cunix.cc.columbia.edu'
alias clic='ssh jzj2101@clic-lab.cs.columbia.edu'
alias jerusalem='ssh jzj2101@jerusalem.clic.cs.columbia.edu'


#--Advanced-Programming---------------------------------------------------------
alias lab1='cd ~/cs3157/lab1'
alias lab2='cd ~/cs3157/lab2'
alias lab3='cd ~/cs3157/lab3'
alias lab4='cd ~/cs3157/lab4'
alias lab5='cd ~/cs3157/lab5'
alias lab6='cd ~/cs3157/lab6'
alias lab7='cd ~/cs3157/lab7'
alias lab8='cd ~/cs3157/lab8'
alias lab9='cd ~/cs3157/lab9'
alias lab10='cd ~/cs3157/lab10'
alias jae='cd /home/jae/cs3157-pub/bin/'
ulimit -u 256
# force mv, rm and cp to ask user before clobbering a file
alias mv="mv -i $*"
alias rm="rm -i $*"
alias cp="cp -i $*"

#--Academic-Aliases-------------------------------------------------------------
alias classes='pushd . && open ~/Dropbox/\[12x\]/'
alias workspace='pushd . && open ~/Dropbox/[Workspace]'
alias ws='pushd . && open ~/Dropbox/[Workspace] && cd ~/Dropbox/[Workspace]/'
alias latin='pushd . && open ~/Dropbox/\[12x\]/\[LatinII\]/ && cd ~/Dropbox/[12x]/[LatinII]/'
alias words='pushd . && cd ~/Dropbox/[12x]/[LatinII]/Words/ && ~/Dropbox/[12x]/[LatinII]/Words/words'
alias fundamentals='pushd . && open ~/Dropbox/\[12x\]/\[Fund\]/ && cd ~/Dropbox/[12x]/[Fund]/'
alias discrete='pushd . && open ~/Dropbox/[12x]/[Discrete]/ && cd ~/Dropbox/[12x]/[Discrete]/'
alias arthum='pushd . && open ~/Dropbox/[12x]/[ArtHum]/ && cd ~/Dropbox/[12x]/[ArtHum]/'
alias ap='pushd . && open ~/Dropbox/[12x]/[AP]/ && cd ~/Dropbox/[12x]/[AP]/'
alias ui='pushd . && open ~/Dropbox/[12x]/[UI]/ && cd ~/Dropbox/[12x]/[UI]/'

#--RUBY-------------------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function


#-------------------------------------------------------------------------------
