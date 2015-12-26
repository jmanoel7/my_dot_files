#!/bin/sh
#
# ~/.xsession
#
# Executed by XSession script


########################################
## GENERAL CONFIG
########################################

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session /usr/bin/gpg-agent --homedir /home/jmanoel7/.gnupg --use-standard-socket --sh --daemon)"
fi

/usr/bin/xdg-user-dirs-update

if [ -x ~/.xsessionrc ]; then
    . ~/.xsessionrc
fi


########################################
## OPENBOX CONFIG
########################################

export DE=openbox

sed -i 's/ablive/'"$(whoami)"'/' \
    ~/.config/obmenu-generator/schema.pl \
    ~/.config/obmenu-generator/config.pl

