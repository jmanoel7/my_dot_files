#!/bin/bash

if [ -f ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

if [ -f ~/.Xresources ]; then
    xrdb -load ~/.Xresources
fi

DEFAULT_SESSION="gnome-session"
if [ -n "$1" ]; then
    DEFAULT_SESSION="$1"
fi

case "$DEFAULT_SESSION" in
    "i3")
        compton -b -f -m 0.95 &
        nitrogen --restore &
        volumeicon &
        clipit &
        nm-applet &
        #/opt/teamviewer/tv_bin/script/teamviewer &
        #hp-systray -x &
        /bin/sh -c 'sleep 5; dropbox start -i' &
        /bin/sh -c 'sleep 5; killall -9 gnome-keyring-daemon' &
        caja --no-default-window --no-desktop &
        i3-sensible-terminal &
        exec ck-launch-session dbus-launch /usr/bin/i3
        ;;
    "i3-with-shmlog")
        compton -b -f -m 0.95 &
        nitrogen --restore &
        volumeicon &
        clipit &
        nm-applet &
        #/opt/teamviewer/tv_bin/script/teamviewer &
        #hp-systray -x &
        /bin/sh -c 'sleep 5; dropbox start -i' &
        /bin/sh -c 'sleep 5; killall -9 gnome-keyring-daemon 2>&1 /dev/null' &
        caja --no-default-window --no-desktop &
        i3-sensible-terminal &
        exec ck-launch-session dbus-launch /usr/bin/i3-with-shmlog
        ;;
    "gnome-session")
        exec ck-launch-session dbus-launch gnome-session
        ;;
    *)
        exec ck-launch-session dbus-launch $DEFAULT_SESSION
        ;;
esac
