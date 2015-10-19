# System settings before starting X
umask 022
. ~/.bashrc

# set up alsa
/usr/bin/amixer sset Master Mono 90% unmute  &> /dev/null
/usr/bin/amixer sset Master 90% unmute  &> /dev/null
/usr/bin/amixer sset PCM 90% unmute &> /dev/null

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
