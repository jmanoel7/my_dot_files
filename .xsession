#!/bin/sh
#
# ~/.xsession
#
# Executed by XSession script

if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

if [ -f ~/.Xresources ]; then
    xrdb -merge ~/.Xresources
fi

if [ -f ~/.Xkbmap ]; then
    setxkbmap "$(cat ~/.Xkbmap)"
fi

