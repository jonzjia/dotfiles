#--PATH-------------------------------------------------------------------------
export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/usr/local/gnat/bin


#--Bash-Aliases-----------------------------------------------------------------
alias profile='vim ~/.bash_profile'
alias refresh='source ~/.bash_profile'
alias k='clear'
alias ls='ls -G'
alias ll='ls -alhF --color=auto'
alias all='ls -a'


#--vimrc------------------------------------------------------------------------
alias vimrc='vim ~/Dropbox/vim/vimrc.vim'
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
