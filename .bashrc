################################################################################
## ~/.bashrc: executed by the command interpreter for non-login shells.
################################################################################


################################################################################
## If not running interactively, don't do anything
################################################################################

case $- in
    *i*) ;;
      *) return;;
esac


################################################################################
## include /etc/bash.bashrc if it exists
################################################################################

if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi


################################################################################
## shopt commands
################################################################################

shopt -s histappend
shopt -s checkwinsize
shopt -s globstar


################################################################################
## use lesspipe
################################################################################

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


################################################################################
## prompt definitions
################################################################################

darkgrey="$(tput bold ; tput setaf 0)"
red="$(tput bold; tput setaf 1)"
revred="$(tput bold; tput setaf 1; tput rev)"
white="$(tput bold ; tput setaf 7)"
nc="$(tput sgr0)"

PROMPT_COMMAND="LAST_COMMAND=\$?"
PS1="\[$darkgrey\][ \[$red\]\h \[$white\]\w\[$red\] \[$darkgrey\]]\$(if [[ "\$LAST_COMMAND" != "0" ]]; then echo "\\[\$revred\\]"; else echo "\\[\$red\\]"; fi)\$\[$nc\] "


################################################################################
## enable color support of ls and also add handy aliases
################################################################################

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


################################################################################
## include ~/.bash_aliases if it exists
################################################################################

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


################################################################################
## include ~/.bash_colors if it exists
################################################################################

if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi


################################################################################
## bash completion
################################################################################

if ! shopt -oq posix; then
  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  elif [ -f /etc/profile.d/bash_completion.sh ]; then
    . /etc/profile.d/bash_completion.sh
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi


################################################################################
## functions for edit python django projects with vim/gvim
################################################################################

#djvim() {
#    if [ -d "$HOME/Projetos/Python/Django/$1" ]; then
#        cd "$HOME/Projetos/Python/Django/$1"
#        rm -f ./tags
#        ctags-exuberant --languages=HTML,JavaScript,Python **
#        workon $1
#        vim "+cd $HOME/Projetos/Python/Django/$1" "+DjangoProjectActivate $1" 2> $HOME/log/vim.err
#    fi
#}

#djgvim() {
#    if [ -d "$HOME/Projetos/Python/Django/$1" ]; then
#        cd "$HOME/Projetos/Python/Django/$1"
#        rm -f ./tags
#        ctags-exuberant --languages=HTML,JavaScript,Python **
#        workon $1
#        gvim "+cd $HOME/Projetos/Python/Django/$1" "+DjangoProjectActivate $1" 2> $HOME/log/gvim.err
#    fi
#}


################################################################################
## include ~/.bash_env if it exists
################################################################################

if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi
