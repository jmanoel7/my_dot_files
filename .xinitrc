#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

if [ -x ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

if [ -x "$1" ]; then
    DEFAULT_SESSION="$1"
else
    DEFAULT_SESSION="i3"
fi

exec "$DEFAULT_SESSION"
