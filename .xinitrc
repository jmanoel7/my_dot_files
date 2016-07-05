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
        (sleep 1; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        (sleep 2; xsetroot -solid '#2E3436') &
        #(sleep 2; nitrogen --restore) &
        (sleep 2; compton -b -f -m 0.95) &
        #(sleep 3; volti) &
        (sleep 3; volumeicon) &
        (sleep 3; clipit) &
        (sleep 4; dropbox start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 4; conkywonky.sh) &
        (sleep 5; i3-sensible-terminal) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session i3
        ;;
    "i3-with-shmlog")
        (sleep 1; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        (sleep 2; xsetroot -solid '#2E3436') &
        #(sleep 2; nitrogen --restore) &
        (sleep 2; compton -b -f -m 0.95) &
        #(sleep 3; volti) &
        (sleep 3; volumeicon) &
        (sleep 3; clipit) &
        (sleep 4; dropbox start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 4; conkywonky.sh) &
        (sleep 5; i3-sensible-terminal) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session i3-with-shmlog
        ;;
    "awesome")
        (sleep 1; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        (sleep 2; xsetroot -solid '#2E3436') &
        #(sleep 2; nitrogen --restore) &
        (sleep 2; compton -b -f -m 0.95) &
        #(sleep 3; volti) &
        (sleep 3; volumeicon) &
        (sleep 3; clipit) &
        (sleep 4; dropbox start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 4; conkywonky.sh) &
        (sleep 5; terminator.wrapper) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session awesome
        ;;
    "windowmaker")
        (sleep 0.5; wmsystemtray) &
        (sleep 1; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        (sleep 2; xsetroot -solid '#2E3436') &
        #(sleep 2; nitrogen --restore) &
        (sleep 2; compton -b -f -m 0.95) &
        #(sleep 3; volti) &
        (sleep 3; volumeicon) &
        (sleep 3; clipit) &
        (sleep 4; dropbox start -i) &
        (sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        #(sleep 4; conkywonky.sh) &
        (sleep 5; terminator.wrapper) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/wmaker
        ;;
    "fluxbox")
        (sleep 1; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        (sleep 2; fbsetroot -solid '#2E3436') &
        #(sleep 2; nitrogen --restore) &
        (sleep 2; compton -b -f -m 0.95) &
        #(sleep 3; volti) &
        (sleep 3; volumeicon) &
        (sleep 3; clipit) &
        (sleep 4; dropbox start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 4; conkywonky.sh) &
        (sleep 5; terminator.wrapper) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session startfluxbox
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

