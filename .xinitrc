#!/bin/bash

if [ -f ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

DEFAULT_SESSION="ubuntu"
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
        /bin/sh -c 'sleep 5; dropbox.py start -i' &
        /bin/sh -c 'sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1' &
        nautilus --no-default-window --no-desktop &
        i3-sensible-terminal &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch i3
        ;;
    "i3-with-shmlog")
        compton -b -f -m 0.95 &
        nitrogen --restore &
        volumeicon &
        clipit &
        nm-applet &
        #/opt/teamviewer/tv_bin/script/teamviewer &
        #hp-systray -x &
        /bin/sh -c 'sleep 5; dropbox.py start -i' &
        /bin/sh -c 'sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1' &
        nautilus --no-default-window --no-desktop &
        i3-sensible-terminal &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch i3-with-shmlog
        ;;
    "ubuntu")
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch gnome-session --session=ubuntu
        ;;
    *)
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/im-launch $DEFAULT_SESSION
        ;;
esac

