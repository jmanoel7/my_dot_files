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
        (sleep 1; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        #(sleep 1; fbsetbg -l) &
        (sleep 1; fbsetroot -mod 4 4 -fg '#646464' -bg '#505050') &
        (sleep 1; compton --config ~/.config/compton.conf -b) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 1; volti) &
        (sleep 1; volumeicon) &
        (sleep 1; clipit) &
        (sleep 4; conkywonky.sh) &
        (sleep 4; dropbox start -i) &
        (sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; i3-sensible-terminal) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/i3
        ;;
    "i3-with-shmlog")
        (sleep 1; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        #(sleep 1; fbsetbg -l) &
        (sleep 1; fbsetroot -mod 4 4 -fg '#646464' -bg '#505050') &
        (sleep 1; compton --config ~/.config/compton.conf -b) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 1; volti) &
        (sleep 1; volumeicon) &
        (sleep 1; clipit) &
        (sleep 4; conkywonky.sh) &
        (sleep 4; dropbox start -i) &
        (sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; i3-sensible-terminal) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/i3-with-shmlog
        ;;
    "fluxbox")
        (sleep 1; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        #(sleep 1; fbsetbg -l) &
        (sleep 1; fbsetroot -mod 4 4 -fg '#646464' -bg '#505050') &
        (sleep 1; compton --config ~/.config/compton.conf -b) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 1; volti) &
        (sleep 1; volumeicon) &
        (sleep 1; clipit) &
        (sleep 4; conkywonky.sh) &
        (sleep 4; dropbox start -i) &
        (sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; terminator.wrapper) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/startfluxbox
        ;;
    "openbox")
        #(sleep 1; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 1; volti) &
        (sleep 1; volumeicon) &
        (sleep 1; clipit) &
        #(sleep 2; fbsetbg -l) &
        (sleep 2; fbsetroot -mod 4 4 -fg '#646464' -bg '#505050') &
        (sleep 3; compton --config ~/.config/compton.conf -b) &
        (sleep 4; conkywonky.sh) &
        (sleep 5; tint2 -c ~/.config/tint2/tint2rc) &
        (sleep 5; dropbox start -i) &
        #(sleep 5; pamac-tray) &
        #(sleep 5; hp-systray -x) &
        #(sleep 5; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; urxvt) &
        (sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/jmanoel7/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/openbox
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
