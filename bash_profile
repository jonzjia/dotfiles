#--PATH-------------------------------------------------------------------------
#export PATH=/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/X11/bin:/usr/local/gnat/bin:/usr/local/share/npm/bin:/usr/local/go/bin
#export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin:/usr/local/gnat/bin:/usr/local/share/npm/bin:/usr/local/go/bin
#export PATH="$HOME/local/bin:$PATH"
#export GOPATH=$HOME/Dropbox/dev/go
#export PATH=$PATH:$GOPATH/bin

#--Startup-Settings-------------------------------------------------------------
#export TERM=screen-256color
#set -o vi
bind "set completion-ignore-case on" 	#ignore case in tab-completion
bind "set show-all-if-ambiguous On"		#automatically show all tab complete options

#--axial-profile-settings-------------------------------------------------------
# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

source ~/.git-prompt.sh
#--prompt-----------------------------------------------------------------------
# need to source git-prompt.sh somewhere for this to work
<<'COMMENT'
Color_Off="\[\033[00m\]"       # Text Reset
Black="\[\033[0;30m\]"        # Black
Green="\[\033[0;32m\]"        # Green
Cyan="\[\033[0;36m\]"         # Cyan
IRed="\[\033[0;91m\]"         # Red
PathShort="\w"
Time12h="\T"
export PS1=$Cyan$PathShort$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo " on '$Green'"$(__git_ps1 "⭠ %s")" '$Black$Time12h$Color_Off'"; \
  else \
    # @5 - Changes to working tree
    echo " on '$IRed'"$(__git_ps1 "⭠ %s[+]")" '$Black$Time12h$Color_Off'"; \
  fi) "; \
else \
   # @2 - Prompt when not in GIT repo
  echo " '$Black$Time12h$Color_Off'"; \
fi)'
export PS1="$PS1\n$ "
COMMENT

#--Source-bashrc----------------------------------------------------------------
source ~/.bashrc

#--Bash-Aliases-----------------------------------------------------------------
alias profile='vim ~/dotfiles/bash_profile'
alias refresh='source ~/dotfiles/bash_profile'
alias dotfiles='cd ~/dotfiles'
alias k='clear'
alias ls='ls --color=auto'
alias ll='ls -alhF'
alias la='ls -a'
alias list='ls -1'
alias back='cd -'
alias o='open .'


#--vimrc------------------------------------------------------------------------
alias vimrc='vim ~/dotfiles/vimrc'
export EDITOR=vim


#--Common-Shortcuts-------------------------------------------------------------
alias sandbox='cd ~/Dropbox/dev/sandbox'
alias downloads='open ~/Downloads'
alias dl='cd ~/Downloads'
alias code='open ~/Dropbox/[CodeWorkspace]'
alias projects='pushd . && open ~/Dropbox/Projects && cd ~/Dropbox/Projects/'
alias notes='cd ~/Dropbox/notes/ && vim ~/Dropbox/notes'
alias inspo='cd ~/Dropbox/[Pictures]/Inspiration/'
alias images='cd ~/Dropbox/[Pictures]/Images/'


#--Stack-Navigation-------------------------------------------------------------
alias stack='dirs -v'
alias pushdthis='pushd .'
alias up='cd ..'
alias empty='popd && cd'


#--Advanced-Programming---------------------------------------------------------
# force mv, rm and cp to ask user before clobbering a file
alias mv="mv -i $*"
alias rm="rm -i $*"
alias cp="cp -i $*"

#--Academic-Aliases-------------------------------------------------------------
alias ws='cd ~/Dropbox/[Workspace]/'

#--2013-Fall--------------------------------------------------------------------
alias class='cd ~/Dropbox/13x'
alias ce='cd ~/Dropbox/13x/ce'
alias comedy='cd ~/Dropbox/13x/comedy'
alias db='cd ~/Dropbox/13x/db'
alias nlp='cd ~/Dropbox/13x/nlp'
alias pps='cd ~/Dropbox/13x/pps'

#--2013-Spring------------------------------------------------------------------
alias 13y='cd ~/Dropbox/[13y]'
alias ai='cd ~/Dropbox/[13y]/ai'
alias postcolonial='cd ~/Dropbox/[13y]/postcolonial'
alias musichum='cd ~/Dropbox/[13y]/musichum'
alias plt='cd ~/Dropbox/[13y]/plt'
alias theory='cd ~/Dropbox/[13y]/theory'

#--2012-Fall------------------------------------------------------------------
alias words='pushd . && cd ~/Dropbox/[12x]/[LatinII]/Words/ && ~/Dropbox/[12x]/[LatinII]/Words/words'

#--Update-Dotfiles--------------------------------------------------------------
alias update='pushd . && cd ~/dotfiles && git pull && popd'

#--git-aliases------------------------------------------------------------------
alias s='git status'

#--tmux-ssh-fix-----------------------------------------------------------------
SOCK="/tmp/ssh-agent-$USER-tmux"
if test $SSH_AUTH_SOCK && [ $SSH_AUTH_SOCK != $SOCK ]
then
    rm -f /tmp/ssh-agent-$USER-tmux
    ln -sf $SSH_AUTH_SOCK $SOCK
    export SSH_AUTH_SOCK=$SOCK
fi

#--RUBY-------------------------------------------------------------------------
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

#-------------------------------------------------------------------------------
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
