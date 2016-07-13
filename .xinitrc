#!/bin/bash

if [ -f ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

DEFAULT_SESSION="gnome-shell"
if [ -n "$1" ]; then
    DEFAULT_SESSION="$1"
fi

case "$DEFAULT_SESSION" in
    "i3")
        #(sleep 0.5; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        (sleep 0.5; xsetroot -solid '#2E3436') &
        #(sleep 0.5; xsetbg -fullscreeb -onroot ~/.background) &
        (sleep 0.5; compton -b -f -m 0.95) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 2; volti) &
        (sleep 2; volumeicon) &
        (sleep 2; clipit) &
        (sleep 3; dropbox start -i) &
        #(sleep 3; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; conkywonky.sh) &
        (sleep 5; i3-sensible-terminal) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/i3
        ;;
    "i3-with-shmlog")
        #(sleep 0.5; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        (sleep 0.5; xsetroot -solid '#2E3436') &
        #(sleep 0.5; xsetbg -fullscreeb -onroot ~/.background) &
        (sleep 0.5; compton -b -f -m 0.95) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 2; volti) &
        (sleep 2; volumeicon) &
        (sleep 2; clipit) &
        (sleep 3; dropbox start -i) &
        #(sleep 3; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; conkywonky.sh) &
        (sleep 5; i3-sensible-terminal) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/i3-with-shmlog
        ;;
    "fluxbox")
        #(sleep 0.5; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        (sleep 0.5; fbsetbg -l) &
        #(sleep 0.5; fbsetroot -solid '#2E3436') &
        (sleep 0.5; compton -b -f -m 0.95) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 2; volti) &
        (sleep 2; volumeicon) &
        (sleep 2; clipit) &
        (sleep 3; dropbox start -i) &
        #(sleep 3; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; conkywonky.sh) &
        (sleep 5; terminator.wrapper) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/startfluxbox
        ;;
    "ubuntu")
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/gnome-session --session=ubuntu
        ;;
    *)
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session $DEFAULT_SESSION
        ;;
esac
