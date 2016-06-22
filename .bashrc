# ~/.bashrc: executed by the command interpreter for non-login shells.

# include ~/.bash_env if it exists
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# include /etc/bash.bashrc if it exists
if [ -f /etc/bash.bashrc ]; then
	. /etc/bash.bashrc
fi

# shopt commands
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar

# use lesspipe
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# prompt definitions
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
PROMPT_COMMAND="LAST_COMMAND=\$?"
if [ "`id -u`" != "0" ]; then
	PS1="${VIRTUAL_ENV:+(\$(basename $VIRTUAL_ENV))}${debian_chroot:+($debian_chroot)}\[\e[1;36m\][\[\e[1;34m\]\u\[\e[1;36m\]@\[\e[1;33m\]\h\[\e[1;36m\]:\[\e[1;32m\]\W\[\e[1;36m\]]\[\e[m\] \$(if [[ "\$LAST_COMMAND" = "0" ]]; then echo \"\[\033[01;36m\]\"; else echo \"\[\033[01;36;41m\]\"; fi)\\$\[\e[m\] "
else
	PS1="${VIRTUAL_ENV:+(\$(basename $VIRTUAL_ENV))}${debian_chroot:+($debian_chroot)}\[\e[1;36m\][\[\e[1;31m\]\u\[\e[1;36m\]@\[\e[1;33m\]\h\[\e[1;36m\]:\[\e[1;32m\]\W\[\e[1;36m\]]\[\e[m\] \$(if [[ "\$LAST_COMMAND" = "0" ]]; then echo \"\[\033[01;36m\]\"; else echo \"\[\033[01;36;41m\]\"; fi)\\$\[\e[m\] "
fi
#PS1="\[\e]0;${VIRTUAL_ENV:+(\$(basename $VIRTUAL_ENV))}${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# include ~/.bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# include ~/.bash_colors if it exists
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

# bash completion
if ! shopt -oq posix; then
  if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  elif [ -f /etc/profile.d/bash_completion.sh ]; then
    . /etc/profile.d/bash_completion.sh
  elif [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi

# functions for edit python django projects
djvim() {
    if [ -d "$HOME/Meus_Projetos/$1" ]; then
        cd "$HOME/Meus_Projetos/$1"
        rm -f ./tags
        ctags-exuberant --languages=HTML,JavaScript,Python **
        workon $1
        vim "+cd $HOME/Meus_Projetos/$1" "+DjangoProjectActivate $1" 2> $HOME/log/vim.err
    fi
}
djgvim() {
    if [ -d "$HOME/Meus_Projetos/$1" ]; then
        cd "$HOME/Meus_Projetos/$1"
        rm -f ./tags
        ctags-exuberant --languages=HTML,JavaScript,Python **
        workon $1
        gvim "+cd $HOME/Meus_Projetos/$1" "+DjangoProjectActivate $1" 2> $HOME/log/gvim.err
    fi
}
