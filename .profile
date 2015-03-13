# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
umask 022

# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
. "$HOME/.bashrc"
fi

# environment variables
TERM=xterm-256color; export TERM
HISTCONTROL=ignoreboth; export HISTCONTROL
HISTSIZE=1000; export HISTSIZE
HISTFILESIZE=2000; export HISTFILESIZE
LANG='pt_BR.UTF-8'; export LANG
TZ='America/Sao_Paulo'; export TZ
EDITOR='vim'; export EDITOR
GPGKEY='607A5E65'; export GPGKEY
WORKON_HOME="$HOME/.local/venvs"; export WORKON_HOME
XULRUNNER_APPS_HOME="$HOME/.local/xulrunner-apps/"; export XULRUNNER_APPS_HOME
XULRUNNER_SDK_HOME="$HOME/.local/xulrunner-sdk/"; export XULRUNNER_SDK_HOME
#http_proxy=http://localhost:8123; export http_proxy
JAVA_HOME="/usr/local/jdk1.8.0_40"; export JAVA_HOME
NODEJS_HOME="/usr/local/node-v0.12.0-linux-x64"; export NODEJS_HOME
PATH="$HOME/bin:$HOME/.local/bin:$HOME/.rvm/bin:$NODEJS_HOME/bin:$JAVA_HOME/bin:$PATH"; export PATH

# RVM (RUBY)
source "$HOME/.rvm/scripts/rvm"
