# ~/.bashrc

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# include /etc/bashrc
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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

# bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# bash colors
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

# bash completion
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# virtualenvwrapper
. /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# functions
djvim() {
    vim "+cd $1" "+DjangoProjectActivate $2" 2> ~/log/vim.err
}
djgvim() {
    gvim "+cd $1" "+DjangoProjectActivate $2" 2> ~/log/gvim.err
}

# environment variables
TERM=xterm-256color; export TERM
HISTCONTROL=ignoreboth; export HISTCONTROL
HISTSIZE=1000; export HISTSIZE
HISTFILESIZE=2000; export HISTFILESIZE
LANG='pt_BR.UTF-8'; export LANG
TZ='America/Sao_Paulo'; export TZ
EDITOR='nano'; export EDITOR
GPGKEY='607A5E65'; export GPGKEY
WORKON_HOME="$HOME/.local/venvs"; export WORKON_HOME
XULRUNNER_APPS_HOME="$HOME/.local/xulrunner-apps/"; export XULRUNNER_APPS_HOME
XULRUNNER_SDK_HOME="$HOME/.local/xulrunner-sdk/"; export XULRUNNER_SDK_HOME
#http_proxy=http://localhost:8123; export http_proxy
JAVA_HOME="/usr/local/jdk1.8.0_40"; export JAVA_HOME
NODEJS_HOME="/usr/local/node-v0.12.0-linux-x64"; export NODEJS_HOME
#PATH="$HOME/bin:$HOME/.local/bin:$HOME/.rvm/bin:$NODEJS_HOME/bin:$JAVA_HOME/bin:$PATH"; export PATH

# shopt commands
shopt -s histappend
shopt -s checkwinsize
shopt -s globstar
