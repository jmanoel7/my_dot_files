#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -z "$(pidof -x Xsession)" ]; then
    if [ -d /etc/X11/xinit/xinitrc.d ]; then
        for f in /etc/X11/xinit/xinitrc.d/*; do
            [ -x "$f" ] && . "$f"
        done
        unset f
    fi
    setxkbmap "$(cat ~/.Xkbmap)"
    xrdb -merge ~/.Xresources
fi

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session /usr/bin/gpg-agent --homedir /home/jmanoel7/.gnupg --use-standard-socket --sh --daemon)"
fi

/usr/bin/xdg-user-dirs-update

if [ -x ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi

if [ -x "$1" ]; then
    DEFAULT_SESSION="$1"
else
    DEFAULT_SESSION="/usr/bin/openbox-session"
fi

case "$DEFAULT_SESSION" in
    "/usr/bin/openbox-session")
        export DE=openbox
        sed -i 's/ablive/'"$(whoami)"'/' \
            ~/.config/obmenu-generator/schema.pl \
            ~/.config/obmenu-generator/config.pl
        /usr/bin/openbox-session > ~/log/openbox_startup.log 2>&1
        ;;
    *)
        exec "$DEFAULT_SESSION"
        ;;
esac

