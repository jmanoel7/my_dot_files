alias s='sudo'
alias se='sudoedit'
alias editmirror='se /etc/pacman.d/mirrorlist'
alias ll='ls -lhF --group-directories-first'
alias l.='ls -lhaF --group-directories-first'
alias l='ls -CF --group-directories-first'
alias la='ls -aCF --group-directories-first'
if [ -x "$(which vim)" ]; then
    alias vi="$(which vim)"
elif [ -x "$(which nvi)" ]; then
    alias vi="$(which nvi)"
fi
alias me="mcedit"
alias shred="shred -zf"
#alias python="python2"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
alias 7zip='7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on'
alias 7zipenc='7z a -t7z -m0=lzma2 -mx=9 -mfb=64 -md=32m -ms=on -mhe=on -p'
alias AC='sudo apt clean'
alias AU='sudo apt update'
alias AD='sudo apt dist-upgrade'
alias KV='sudo apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys'
alias KA='sudo apt-key add'
alias AI='sudo apt install'
alias AF='sudo apt -f install'
alias AR='sudo apt remove'
alias AP='sudo apt purge'
alias AL='sudo apt autoclean'
alias AV='sudo apt autoremove'
alias AG='sudo apt --purge autoremove'
alias AS='sudo apt clean && sudo apt update && sudo apt upgrade && sudo apt clean && sudo apt -f install'
alias AY='sudo apt clean && sudo apt update && sudo apt dist-upgrade && sudo apt clean && sudo apt -f install'
alias PACU='sudo pacman -Syyuu --noconfirm && sudo pacman -Scc --noconfirm'
alias PACC='sudo pacman -Scc --noconfirm'
alias PACR='sudo pacman -Rcns --noconfirm'
alias PACI='sudo pacman -Sy --needed --noconfirm'
alias PACS='sudo pacman -Ss'
alias YU='yaourt -Syyuu --noconfirm && yaourt -Scc --noconfirm'
alias YC='yaourt -Scc --noconfirm'
alias YR='yaourt -Rcns --noconfirm'
alias YI='yaourt -Sy --needed --noconfirm'
alias YS='yaourt -Ss'
alias M='python manage.py'
alias MH='python manage.py shell'
alias MR='python manage.py runserver'
alias MC='python manage.py collectstatic'
alias MS='python manage.py syncdb'
alias MSA='python manage.py sqlall'
alias MSR='python manage.py sqlreset'
alias KM='kill -9 `ps axw | grep manage.py | grep -v grep | cut -d " " -f 1`'
alias 256colors='(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)'
alias ST="scrot -b 'scrot_%d-%m-%Y_%H:%M:%S_\$wx\$h.png' -e 'mv \$f ~/Dropbox/Captura_de_Tela/'"
alias STS="scrot -b -s 'scrot_%d-%m-%Y_%H:%M:%S_\$wx\$h.png' -e 'mv \$f ~/Dropbox/Captura_de_Tela/'"
alias STU="scrot -b -u 'scrot_%d-%m-%Y_%H:%M:%S_\$wx\$h.png' -e 'mv \$f ~/Dropbox/Captura_de_Tela/'"
alias P2I='pip2 install --force-reinstall --upgrade'
alias P2IC='pip2 install --force-reinstall --upgrade --no-cache-dir --no-binary :all: --compile'
alias P3I='pip3 install --force-reinstall --upgrade'
alias P3IC='pip3 install --force-reinstall --upgrade --no-cache-dir --no-binary :all: --compile'
alias SP2I='sudo pip2 install --force-reinstall --upgrade'
alias SP2IC='sudo pip2 install --force-reinstall --upgrade --no-cache-dir --no-binary :all: --compile'
alias SP3I='sudo pip3 install --force-reinstall --upgrade'
alias SP3IC='sudo pip3 install --force-reinstall --upgrade --no-cache-dir --no-binary :all: --compile'
