#!/bin/bash

if [ -f ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

DEFAULT_SESSION="x-session-manager"
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
        (sleep 5; dropbox start -i) &
        (sleep 5; pamac-tray) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        thunar --daemon &
        urxvt &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session i3
        ;;
    "i3-with-shmlog")
        compton -b -f -m 0.95 &
        nitrogen --restore &
        volumeicon &
        clipit &
        nm-applet &
        #/opt/teamviewer/tv_bin/script/teamviewer &
        #hp-systray -x &
        (sleep 5; dropbox start -i) &
        (sleep 5; pamac-tray) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        thunar --daemon &
        urxvt &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session i3-with-shmlog
        ;;
    "awesome")
        compton -b -f -m 0.95 &
        nitrogen --restore &
        volumeicon &
        clipit &
        nm-applet &
        #/opt/teamviewer/tv_bin/script/teamviewer &
        #hp-systray -x &
        (sleep 5; dropbox start -i) &
        (sleep 5; pamac-tray) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        thunar --daemon &
        urxvt &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session awesome
        ;;
    "ubuntu")
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session gnome-session --session=ubuntu
        ;;
    *)
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session $DEFAULT_SESSION
        ;;
esac

