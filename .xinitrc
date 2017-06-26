#!/bin/bash

umask 022
export QT_STYLE_OVERRIDE=GTK+

if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

if [ -f ~/.Xresources ]; then
    xrdb -merge ~/.Xresources
fi

if [ -f ~/.Xkbmap ]; then
    setxkbmap "$(cat ~/.Xkbmap)"
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
        (sleep 4; dropbox.py start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; i3-sensible-terminal) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/joaomanoel/.gnupg/gpg-agent-info-noteship \
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
        (sleep 4; dropbox.py start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; i3-sensible-terminal) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/joaomanoel/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/i3-with-shmlog
        ;;
    "fluxbox")
        (sleep 1; gnome-keyring-daemon --components=ssh,secrets,pkcs11) &
        #(sleep 1; fbsetbg -l) &
        (sleep 1; fbsetroot -mod 4 4 -fg '#646464' -bg '#505050') &
        (sleep 1; compton -b) &
        (sleep 1; thunar --daemon) &
        (sleep 1; nm-applet) &
        #(sleep 1; volti) &
        (sleep 1; volumeicon) &
        (sleep 1; clipit) &
        (sleep 4; conkywonky.sh) &
        (sleep 4; dropbox.py start -i) &
        #(sleep 4; pamac-tray) &
        #(sleep 4; hp-systray -x) &
        #(sleep 4; /opt/teamviewer/tv_bin/script/teamviewer) &
        (sleep 5; urxvt) &
        (sleep 5; plank) &
        #(sleep 5; killall -9 gnome-keyring-daemon >/dev/null 2>&1) &
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --sh --daemon \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/startfluxbox
            #/usr/bin/gpg-agent --daemon --sh --write-env-file=/home/joaomanoel/.gnupg/gpg-agent-info-noteship \
        ;;
    "ubuntu")
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/joaomanoel/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/gnome-session --session=ubuntu
        ;;
    "xfce4")
        exec \
            /usr/bin/dbus-launch --exit-with-session /usr/bin/startxfce4
        ;;
    *)
        exec \
            /usr/bin/ssh-agent \
            /usr/bin/gpg-agent --daemon --sh --write-env-file=/home/joaomanoel/.gnupg/gpg-agent-info-noteship \
            /usr/bin/dbus-launch --exit-with-session $DEFAULT_SESSION
        ;;
esac
