sudo apt-get install lintian libcrypt-ssleay-perl libwww-perl cppcheck devscripts pyflakes libperl-critic-perl desktop-file-utils mp3check mp3val fontforge-nox freetype2-demos gettext-lint jlint pngcheck jpeginfo vorbis-tools oggz-tools lacheck fdupes python-magic libxml2-utils similarity-tester moreutils pep8 blhc libconfig-model-perl libconfig-model-dpkg-perl bfbtester elfutils hlint adequate i18nspector epubcheck iwyu python-jpylyzer libb-lint-perl codespell duck
lintian
sudo apt-get install lintian libcrypt-ssleay-perl libwww-perl cppcheck devscripts pyflakes libperl-critic-perl desktop-file-utils mp3check mp3val fontforge-nox freetype2-demos gettext-lint jlint pngcheck jpeginfo vorbis-tools oggz-tools lacheck fdupes python-magic libxml2-utils similarity-tester moreutils pep8 blhc libconfig-model-perl libconfig-model-dpkg-perl bfbtester elfutils hlint adequate i18nspector epubcheck iwyu python-jpylyzer libb-lint-perl codespell duck
cd ..
l.
mkdir .tmp
mv *.deb sqlite-src-3081002.zip sqlite-src-3081002.zip.sha1 .tmp
l.
firefox-stable How\ To\ Compile\ SQLite.html 
mv How\ To\ Compile\ SQLite.html .tmp/
l.
l. .tmp/
l. sqlite-src-3081002/
l. sqlite-src-3081002/doc/
l.
unzip -l sqlite-doc-3081002.zip 
unzip -l sqlite-doc-3081002.zip  | grep index
unzip -l sqlite-doc-3081002.zip  | grep index.html
mv sqlite-doc-3081002.zip* .tmp/
l.
rm -rf *
l.
mv .tmp/* .
rmdir .tmp/
l.
dpkg -c sqlite3_3.8.10.2-1_amd64.deb 
dpkg -e sqlite3_3.8.10.2-1_amd64.deb 
engrampa sqlite3_3.8.10.2-1_amd64.deb 
rm sqlite3_3.8.10.2-1_amd64.deb
l. 
cmp control DEBIAN/control 
rm -rf DEBIAN/
l.
sha1sum -c *.sha1
l.
unzip sqlite-src-3081002.zip 
mv sqlite-src-3081002 sqlite3-3.8.10.2
tar cJf sqlite3-3.8.10.2.tar.xz sqlite3-3.8.10.2/
l.
sha1sum sqlite3-3.8.10.2.tar.xz 
sha1sum sqlite3-3.8.10.2.tar.xz  > sqlite3-3.8.10.2.tar.xz.sha1
l.
sha1sum -c *.sha1
l.
mv sqlite3-3.8.10.2.tar.xz sqlite3-3.8.10.2.orig.tar.xz
vi sqlite3-3.8.10.2.orig.tar.xz.sha1
vi sqlite3-3.8.10.2.tar.xz.sha1
mv sqlite3-3.8.10.2.tar.xz.sha1 sqlite3-3.8.10.2.tar.xz.sha1
mv sqlite3-3.8.10.2.tar.xz.sha1 sqlite3-3.8.10.2.orig.tar.xz.sha1
l.
sha1sum -c *.sha1
sha1sum -c sqlite3-3.8.10.2.orig.tar.xz.sha1 
cat sqlite3-3.8.10.2.orig.tar.xz.sha1
l.
rm -rf sqlite3-3.8.10.2
l.
rm sqlite-src-3081002.zip*
l.
unzip sqlite-doc-3081002.zip 
mv sqlite-doc-3081002 sqlite3-doc-3.8.10.2
tar cJf sqlite3-doc-3.8.10.2.orig.tar.xz sqlite3-doc-3.8.10.2/
l.
tar tf sqlite3-doc-3.8.10.2.orig.tar.xz 
l.
sha1sum sqlite3-doc-3.8.10.2.orig.tar.xz > sqlite3-doc-3.8.10.2.orig.tar.xz.sha1
l.
rm -rf sqlite-doc-3081002.zip* sqlite3-doc-3.8.10.2
l.
sha1sum -c *.sha1
l.
tar xJf sqlite3-3.8.10.2.orig.tar.xz 
tar xJf sqlite3-doc-3.8.10.2.orig.tar.xz 
l.
cd sqlite3-3.8.10.2/
dh_make -f ../sqlite3-3.8.10.2.orig.tar.xz
l.
cat README.md 
l.
vi debian/changelog 
vi debian/control 
sudo apt-get install autotools-dev 
AGC
AGI
sudo apt-get build-dep sqlite3
l.
cat ../sqlite3-3.8.7.1/debian/rules 
cat ../sqlite3-3.8.7.1/debian/control 
cat ../sqlite3-3.8.7.1/debian/rules 
cat ../sqlite3-3.8.7.1/debian/control 
cd ..
rm -rf sqlite3-3.8.10.2
rm -rf sqlite3_3.8.10.2.orig.tar.xz 
l. *orig*
tar xJf sqlite3-doc-3.8.10.2.orig.tar.xz 
mv sqlite3-doc-3.8.10.2 www
rm sqlite3-doc-3.8.10.2.orig.tar.xz*
l.
tar cJf sqlite3-3.8.10.2.orig-www.tar.xz www
rm -rf www
l.
rm -i *.sha1
l.
tar tf sqlite3-3.8.10.2.orig.tar.xz 
mv sqlite3-3.8.10.2.orig.tar.xz
mv sqlite3-3.8.10.2.orig.tar.xz sqlite3-3.8.10.2.tar.xz
l.
mv sqlite3-3.8.10.2.orig-www.tar.xz sqlite3-3.8.10.2.www.tar.xz 
l.
l. sqlite3-3.8.7.1/
l. sqlite3-3.8.7.1/debian/
tar tf sqlite3_3.8.7.1-1+deb8u1.debian.tar.xz 
tar xzvf sqlite3_3.8.7.1-1+deb8u1.debian.tar.xz
tar xaf sqlite3_3.8.7.1-1+deb8u1.debian.tar.xz
cd debian/
l.
cat libsqlite3-tcl.install 
cat libsqlite3-tcl.dirs 
cat libsqlite3-dev.install.in 
cat libsqlite3-dev.dirs 
cat libsqlite3-0.install.in 
cat libsqlite3-dev.install.in 
cat sqlite3.install 
cat libsqlite3-0.symbols 
cat lemon.manpages 
cat lemon.1 
cat sqlite3.dirs 
cat sqlite3.manpages 
l. ../sqlite3-3.8.7.1/sqlite3.1
file ../sqlite3-3.8.7.1/sqlite3.1
l.
cat sqlite3-doc.docs 
cat sqlite3-doc.doc-base 
cat lemon.docs 
file ../sqlite3-3.8.7.1/doc/lemon.html 
cat libsqlite3-0.docs 
l. /usr/share/doc/libsqlite3-0/
cmp /usr/share/doc/libsqlite3-0/README.Debian ../sqlite3-3.8.7.1/debian/README.Debian 
cmp /usr/share/doc/libsqlite3-0/README.Debian README.Debian 
l.
cat libsqlite3-0.install.in
cat libsqlite3-dev.install.in
cat lemon.install
cat libsqlite3-tcl.install
ll /usr/lib/tcltk/sqlite3
cat libsqlite3-tcl.dirs 
cat sqlite3.install
cat sqlite3.manpages
cat lemon.install 
cd ..
l.
tar tf sqlite3-3.8.10.2.tar.xz | grep lemon
cd ..
cd sqlitebrowser/
l.
rm -rf sqlitebrowser-3.6.0
l.
engrampa sqlitebrowser_3.6.0-1_amd64.deb 
l.
cat control 
rm sqlitebrowser_3.6.0-1_amd64.deb 
apt-get --print-uris download sqlitebrowser 
l.
rm backup-053120150616-pre-sqlitebrowser.tgz 
k.
l.
rm *win*
l.
rm SQLiteDatabaseBrowserPortable_3.6.0_English.paf.exe*
l.
rm sqlitebrowser-3.6.0.zip 
l.
tar xzvf sqlitebrowser-3.6.0.tar.gz 
cmp sqlitebrowser-3.6.0.tar.gz ~/Downloads/sqlitebrowser-3.6.0.tar.gz 
rm ~/Downloads/sqlitebrowser-3.6.0.tar.gz
l.
cd sqlitebrowser-3.6.0/
mkdir build
cd build/
cmake ..
cmake -DCMAKE_INSTALL_PREFIX="/usr" ..
rm -rf *
l.
cmake -DCMAKE_INSTALL_PREFIX="/usr" ..
grep usr cmake_install.cmake 
l.
make -j2
grep DESTDIR Makefile 
grep DESTDIR -r .
make DESTDIR=$(pwd)/tmp install
ll tmp/
ll tmp/usr/
ll tmp/usr/bin/
ll tmp/usr/
ll tmp/usr/share/
ll tmp/usr/share/app
ll tmp/usr/share/applications/
cd tmp/
l.
mkdior DEBIAN
mkdir DEBIAN
l.
chmod 775 DEBIAN/
l.
l. DEBIAN/
cd DEBIAN/
mv ../../../../control .
l.
vi control 
l.
chmod 555 control 
l.
chmod 644 control 
l.
cd ..
chmod 755 DEBIAN/
l.
cd ..
dpkg -b ./tmp/ .
l.
sudo dpkg -i sqlitebrowser_3.6.0-1_amd64.deb 
mv sqlitebrowser_3.6.0-1_amd64.deb ../../
l.
cd ..
l.
equivs-control 
equivs-control  control
l.
vi control 
l.
rm control 
rm -rf sqlitebrowser-3.6.0
l.
cd
AGC
AGI
cd Vídeos/Tec_Info/
gnome-mplayer Dominando\ Unicode\ \(parte\ 1-2\)\ \(HD\).mp4 
cd Meus_Projetos/my_dot_files/
cp .vimrc _vimrc 
file _vimrc
unix2dos _vimrc
file _vimrc
vi _vimrc 
file _vimrc
SDU
cd src/banco_de_dados/sqlite
l.
rm -rf sqlite3-3.8.7.1/
l.
sudo apt-get --reinstall install lemon libsqlite3-0 libsqlite3-0-dbg libsqlite3-dev libsqlite3-tcl sqlite3 sqlite3-doc
AGC
AGI
ls lemon*.deb libsqlite3-0*.deb libsqlite3-0-dbg*.deb libsqlite3-dev*.deb libsqlite3-tcl*.deb sqlite3*.deb sqlite3-doc*.deb
rm lemon*.deb libsqlite3-0*.deb libsqlite3-0-dbg*.deb libsqlite3-dev*.deb libsqlite3-tcl*.deb sqlite3*.deb sqlite3-doc*.deb
l. *.deb
l.
rm -rf debian/
l.
rm sqlite3_3.8.7.1-1+deb8u1_amd64.build sqlite3_3.8.7.1-1+deb8u1_amd64.changes sqlite3_3.8.7.1-1+deb8u1.dsc sqlite3_3.8.7.1.orig.tar.bz2 sqlite3_3.8.7.1.orig-www.tar.bz2
l.
cd ..
l. sqlite
l. sqlitebrowser/
cd
df -h
java -version
javac -version
sudo update-alternatives --config x-cursor-theme 
l. /usr/share/icons/Fog/256x256/
l. /usr/share/icons/Fog/256x256/places/
l. /usr/share/icons/Fog/256x256/
l. /usr/share/icons/Fog/256x256/status/
l. .icons/
l. /usr/share/icons/Fog/256x256
find /usr/share/icons/Fog/ -name '*start*'
find /usr/share/icons/Fog/ -name '*menu*'
find /usr/share/icons/Fog/ -name "*menu*"
find /usr/share/icons/Fog/ -name "*here*"
find /usr/share/icons/Fog/ -name "*start*"
find /usr/share/icons/Fog/ -name "*mate*"
find /usr/share/icons/Fog/ -name "*.png"
find /usr/share/icons/ -name "*start*"
find /usr/share/icons/ -name "*start-here*"
find /usr/share/icons/ -name "*start-here-debian*"
eom /usr/share/icons/Mint-X-Dark/places/24/start-here-debian.png
eom /usr/share/icons/gnome/scalable/places/start-here.svg
cat /usr/share/icons/Fog/index.theme 
cat /usr/share/icons/mate/
find /usr/share/icons/mate -name "*start-here*"
sudo apt-get install gimp-ufraw 
sudo apt-get install gimp gimp-cbmplugs gimp-data gimp-data-extras gimp-dds gimp-gap gimp-gluas gimp-gmic gimp-gutenprint gimp-lensfun gimp-plugin-registry gimp-texturize gimp-ufraw ufraw ufraw-batch
SDU
sudo apt-get install gimp gimp-cbmplugs gimp-data gimp-data-extras gimp-dds gimp-gap gimp-gluas gimp-gmic gimp-gutenprint gimp-lensfun gimp-plugin-registry gimp-texturize gimp-ufraw ufraw ufraw-batc
sudo apt-get install caja caja-common caja-extensions-common caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share apt-offline apt-offline-gui apt-src apt-build apt-doc apt-file gdebi gdebi-core aptitude aptitude-common aptitude-doc-en aptitude-robot
sudo apt-get install openbox openbox-dev openbox-menu obconf obmenu 
sudo apt-get install openbox openbox-dev openbox-menu obconf obmenu wine wine32-development-preloader wine32-dev-tools wine64 wine64-bin wine64-development wine64-development-preloader wine64-development-tools wine64-dev-tools wine64-tools wine-binfmt wine-development wine-python-2.7 winetricks winexe
sudo apt-get install openbox openbox-dev openbox-menu obconf obmenu wine wine32-development-preloader wine32-dev-tools wine64 wine64-bin wine64-development wine64-development-preloader wine64-development-tools wine64-dev-tools wine64-tools wine-binfmt wine-development winetricks
sudo apt-get install openbox openbox-dev openbox-menu obconf obmenu wine wine32-development-preloader wine32-dev-tools wine64 wine64-bin wine64-development wine64-development-preloader wine64-development-tools wine64-dev-tools wine64-tools wine-binfmt wine-development winetricks xorriso genisoimage wodim growisofs cdrdao abcde vcdimager transcode transcode-doc transcode-utils dosemu dosbox conky conky-all conky-cli conky-std
sudo apt-get install openbox openbox-dev openbox-menu obconf obmenu wine wine32-development-preloader wine32-dev-tools wine64 wine64-bin wine64-development wine64-development-preloader wine64-development-tools wine64-dev-tools wine64-tools wine-binfmt wine-development winetricks xorriso genisoimage wodim growisofs cdrdao abcde vcdimager transcode transcode-doc transcode-utils dosemu dosbox conky conky-all
AGc
AGC
AGI
AGI '^metasploit.*$'
sudo apt-get install metasploit metasploit-common metasploit-framework
AGI metasploit metasploit-common metasploit-framework
metasploit metasploit-common metasploit-framework
sudo apt-get install -t kali-only metasploit metasploit-common metasploit-framework
sudo apt-get install -t kali-only metasploit-framework
sudo apt-get install -t kali-only metasploit metasploit-common metasploit-framework
dpkg -l | egrep '^h'
sudo apt-get install -t kali-only metasploit metasploit-common metasploit-framework libffi5
cd src/security/
l.
mkdir metasploit
cd metasploit/
sudo apt-get source libffi5
sudo apt-get source -t kali libffi5
sudo apt-get source -t kali-onlyy libffi5
sudo apt-get source -t kali-only libffi5
cat /etc/apt/sources.list.d/kali.list 
cd
cat /opt/gnu_linux/UNetbootin/readme.txt 
l. *saneago*
cat pg_saneago_fev-2015.txt
cd
cd .seqzo/.md06/
l. *saneago*
cd ../.md05/
l. *saneago*
eom saneago_nada-consta_03-out-2014.png 
cd
cd Downloads/
ll *.deb
sudo dpkg -i *.deb
mv p11-kit-modules_0.20.2-2ubuntu2_i386.deb q-academico/
rm p11-kit-modules_0.20.2-2ubuntu2_amd64.deb 
clear
ll q-academico/
apt-cache search fog
apt-cache search icon theme
sudo apt-get install tango-icon-theme tango-icon-theme-common tango-icon-theme-extras  wm-icons '^gnome-icon-theme.*$'  ubuntustudio-icon-theme elementary-icon-theme breathe-icon-theme gnome-color-chooser ubuntu-mobile-icons ubuntume-themes  tangerine-icon-theme lubuntu-icon-theme xubuntu-icon-theme lxde-icon-theme 
sudo apt-get install tango-icon-theme tango-icon-theme-common tango-icon-theme-extras  wm-icons '^gnome-icon-theme.*$'  ubuntustudio-icon-theme elementary-icon-theme breathe-icon-theme gnome-color-chooser ubuntu-mobile-icons ubuntume-themes  tangerine-icon-theme lubuntu-icon-theme xubuntu-icon-theme lxde-icon-theme mate-icon-theme mate-icon-theme-faenza
SDU
AGC
AGI
sudo apt-get install wine wine1.4 wine1.4-amd64 wine1.4-dev wine1.4-i386 wine1.6 wine1.6-amd64 wine1.6-dev wine-gecko2.21 wine-mono0.0.8 winetricks
cd ol
cd Downloads/q-academico/
ll
whereis wine 
ll /usr/bin/wine
file /usr/bin/wine
linux32 wine setup.exe 
ps qaxw
ps axw
kill -9 22537
wine --version
cd
cd Área\ de\ Trabalho/
ll
cat Q-Acadêmico.desktop 
env WINEPREFIX="/home/joaomanoel/.wine" linux32 wine C:\\\\Program\\ Files\\ \\(x86\\)\\\\Qualidata\\\\Q-Acadêmico\\\\ExecQualidata.exe AcadCEFET\\ SGE-2\\ -p\\ MULT
env WINEPREFIX="/home/joaomanoel/.wine" wine C:\\\\Program\\ Files\\ \\(x86\\)\\\\Qualidata\\\\Q-Acadêmico\\\\ExecQualidata.exe AcadCEFET\\ SGE-2\\ -p\\ MULT
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\\\\Program\\ Files\\ \\(x86\\)\\\\Qualidata\\\\Q-Acadêmico\\\\ExecQualidata.exe" "AcadCEFET\\ SGE-2\\ -p\\ MULT"
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\\\\Program\\ Files\\ \\(x86\\)\\\\Qualidata\\\\Q-Acadêmico\\\\ExecQualidata.exe" AcadCEFET\\ SGE-2\\ -p\\ MULT
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\Program Files (x86)\Qualidata\Q-Acadêmico\ExecQualidata.exe" AcadCEFET\\ SGE-2\\ -p\\ MULT
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\Program Files (x86)\Qualidata\Q-Acadêmico\ExecQualidata.exe" "AcadCEFET SGE-2 -p MULT"
apt-file find /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so:
apt-file find /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so
sudo apt-file update
apt-file find /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so
sudo dpkg --add-architecture i386
SDU
sudo apt-file update
apt-file find /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\Program Files (x86)\Qualidata\Q-Acadêmico\ExecQualidata.exe" "AcadCEFET SGE-2 -p MULT"
cd
cd Downloads/
sudo dpkg -i p11-kit-modules_0.20.2-2ubuntu2_amd64.deb 
cd
cd Área\ de\ Trabalho/
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\Program Files (x86)\Qualidata\Q-Acadêmico\ExecQualidata.exe" "AcadCEFET SGE-2 -p MULT"
ll /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so:
ll /usr/lib/i386-linux-gnu/pkcs11/p11-kit-trust.so 
apt-file find p11-kit-trust.so 
file /usr/lib/x86_64-linux-gnu/pkcs11/p11-kit-trust.so
env WINEPREFIX="/home/joaomanoel/.wine" wine "C:\Program Files (x86)\Qualidata\Q-Acadêmico\ExecQualidata.exe" "AcadCEFET SGE-2 -p MULT"
cp -af ~/Downloads/q-academico/ .
s mv ~/Downloads/q-academico/ .
s mv ~/Downloads/fedora/ .
s mv ~/Downloads/debian .
compiz --replace &
compiz-decorator --replace &
gsettings get org.mate.session.required-components windowmanager
gsettings set org.mate.session.required-components windowmanager compiz
gsettings get org.mate.session.required-components windowmanager
ccsm 
SDU
sudo dpkg --purge apt-build 
SDU
clear
cmp SHA1SUMS /media/joaomanoel/LINUX_MINT/debian/SHA1SUMS
l.
ll
ls
l. fedora/
sudo mv fedora/ /usr/local/
l.
gpg2 --verify SHA1SUMS.sign SHA1SUMS
sha1sum -c SHA1SUMS
grep debian-live-8.0.0-amd64-standard+nonfree.iso SHA1SUMS| sha1sum-c
grep debian-live-8.0.0-amd64-standard+nonfree.iso SHA1SUMS | sha1sum -c
grep debian-live-8.0.0-amd64-mate-desktop+nonfree.iso SHA1SUMS | sha1sum -c
cd ..
l. iso-live/
ls iso-live/
cd 
cd /usr/local/
ll fedora/
sudo ls -alFh --color fedora/
unetbootin.sh 
sudo fdisk /dev/sdb 
sudo umount /dev/sdb1
sudo fdisk /dev/sdb 
sudo mkdosfs -F 32 -n JOAO_MANOEL /dev/sdb1
cd src/b43/
ls
./b43-fwcutter-018-install.sh 
cat b43-install.sh 
whereis -b b43-fwcutter | sed 's/^[^:]*:[[:blank:]]*\([^[:blank:]]*\)[[:blank:]]*.*$/\1/'
b43-install.sh 
sudo depmod -a
dpkg -l | grep compiz
l.
cat wireless.conf 
cat /etc/modules
cat /etc/modules-load.d/modules.conf 
l. /etc/modules
cat /etc/modules
file /etc/modules
l. /etc/modules
cat /etc/modules-load.d/modules.conf 
cat /etc/modules-load.d/cups-filters.conf 
cat wireless.conf /etc/modules
cmp /etc/modules /etc/modules-load.d/modules.conf 
s cp wireless.conf /etc/modules-load.d/
l. /etc/modules-load.d/
l.
grep wl /etc/modprobe.d/*.conf
cat blacklist-wireless.conf 
$EDITOR 
se /etc/modprobe.d/broadcom-sta-dkms.conf 
cp /etc/modprobe.d/broadcom-sta-dkms.conf .
cat broadcom-sta-dkms.conf 
cat blacklist-wireless.conf 
rm blacklist-wireless.conf 
vi broadcom-sta-dkms.conf 
cat broadcom-
cat broadcom-sta-dkms.conf 
cp broadcom-sta-dkms.conf b43.conf
vi b43.conf 
cp b43.conf /etc/modprobe.d/
s rm /etc/modprobe.d/broadcom-sta-dkms.conf 
s cp b43.conf /etc/modprobe.d/
cat /etc/modprobe.d/b43.conf 
sudo depmod -a
sudo modprobe -r wl
sudo modprobe b43
gpg2 --verify sha256sum.txt.gpg 
gpg2 --verify sha256sum.txt.gpg sha256sum.txt
grep lmde-2-201503-mate-64bit.iso sha256sum.txt
grep lmde-2-201503-mate-64bit.iso sha256sum.txt | sha256sum  -c
SDU
l. src/security/
l. src/security/ntop/
l. src/security/ntop/ntopng/
dpkg -l | grep ntop
ll /usr/local/bin/
sudo unetbootin.sh 
unetbootin.sh 
cat Fedora-Live-x86_64-20-CHECKSUM 
gpg2 --verify Fedora-Live-x86_64-20-CHECKSUM 
sha256sum -c Fedora-Live-x86_64-20-CHECKSUM
sudo mv L* /usr/local/
s sync
l.
cat /etc/debian_version 
lsb_release -s -d
lsb_release -d
lsb_release -s -d
os=`lsb_release -s -d`
echo $os
test "$os" =~ "Debian 8.0".* && echo OK
[[ "$os" =~ "Debian 8.0".* ]] && echo OK
[[ "$os" =~ "Debian".*"8.0".* ]] && echo OK
[[ "$os" =~ Debian.*"8.0".* ]] && echo OK
[[ "$os" =~ Debian.*8.0.* ]] && echo OK
[[ "$os" =~ 'Debian.*8.0.*' ]] && echo OK
[[ "$os" =~ "Debian.*8.0.*" ]] && echo OK
[[ "$os" =~ Debian.*8.0.* ]] && echo OK
[[ "$os" =~ "Debian".*8.0.* ]] && echo OK
[[ "$os" =~ "Debian".*"8.0".* ]] && echo OK
os=$(lsb_release -s -d)
[[ "$os" =~ "Debian".*"8.0".* ]] && echo OK
[[ "$os" =~ "Debian 8.0".* ]] && echo OK
alias
FX -P
cat .mozilla/firefox/profiles.ini 
cat ~/.local/share/applications/firefox-dev.desktop 
FX -P
firefox-dev -P devel
SDU
sudo apt-get install abntex '^latex.*$' tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts 
sudo apt-get install abntex '^latex.*$' tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts  texstudio-l10n
apt-cache show texstudio-l10n
apt-cache show texstudio
apt-cache show texpower 
sudo apt-get install abntex '^latex.*$' tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower 
apt-cache show texworks
sudo apt-get install abntex '^latex.*$' '^texlive.*$' tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower
apt-cache show tex-gyre 
sudo apt-get install '^latex.*$' '^texlive.*$' abntex tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower '^texworks.*$' lyx lyx-common
sudo apt-get install '^latex.*$' '^texlive.*$' abntex tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower '^texworks.*$' lyx lyx-common fonts-freefont
sudo apt-get install '^latex.*$' '^texlive.*$' abntex tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower '^texworks.*$' lyx lyx-common
sudo apt-get install '^latex.*$' '^texlive.*$' abntex tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower '^texworks.*$' lyx lyx-common musixtex 
cd Downloads/
sudo dpkg -i texstudio_2.9.4_amd64.deb 
AGF 
sudo dpkg -i texmaker_debian_jessie_4.4.1_amd64.deb 
mkdir ~/debs
mv *.deb ~/debs
l. ~/debs
l.
cd .vim/bundle/
df -h
git clone git://git.code.sf.net/p/vim-latex/vim-latex vim-latex-vim-latex
mv vim-latex-vim-latex vim-latex
rm -rf vim-latex/
git clone https://github.com/vim-latex/vim-latex.git
cd
rm -rf .instantbird/
df -h
l. ~/.seqzo/
nano .vimrc 
vim
vim ~/.vim/bundle/vim-latex/ftplugin/tex_latexSuite.vim 
find ~/.vim/bundle/vim-latex/ -name tex.vim
vim ~/.vim/bundle/vim-latex/ftplugin/tex_latexSuite.vim 
grep 'iskeyword' -r ~/.vim/bundle/vim-latex/
vim ~/.vim/bundle/vim-latex/ftplugin/tex_latexSuite.vim 
gvim
l. .vim/bundle/
sudo apt-get install '^latex.*$' '^texlive.*$' abntex tetex-brev texinfo texinfo-doc-nonfree texi2html texify tex-gyre tex-common tex4ht tex4ht-common texmacs-extra-fonts texpower '^texworks.*$' lyx lyx-common musixtex 
SDU
s rm -rf /usr/local/fedora/
apt-cache search py2exe
apt-cache search creepy
cd src/security/
ll metasploit/
git clone https://github.com/jkakavas/creepy.git
git clone https://github.com/jkakavas/creepy-plugins.git
cd creepy
l.
sudo python2.7 setup.py 
sudo python2.7 setup.py instal
sudo pip2.7 install py2exe
l.
sudo apt-get install python3-pip 
SDU
ps axw
sudo killall -9 aptitude
ps axw
SDU
AGC
AGI
sudo apt-get install python3-pip 
AGC
AGI
sudo pip3 install py2exe
sudo python3 setup.py install
l.
sudo pip2 install creepy
creepy
ll /usr/local/bin/
ll /usr/local/lib/python
ll /usr/local/lib/python2.7/
ll /usr/local/lib/python2.7/site-packages/
ll /usr/local/lib/python2.7/dist-packages/
ll /usr/local/lib/python2.7/dist-packages/creepy
ll /usr/local/lib/python2.7/dist-packages/creepy-0.1.5.egg-info/
cat /usr/local/lib/python2.7/dist-packages/creepy-0.1.5.egg-info/installed-files.txt 
sudo pip3 install creepy
cat /usr/local/lib/python3.4/dist-packages/creepy
cat /usr/local/lib/python3.4/dist-packages/creepy-0.1.5.egg-info/installed-files.txt 
cat /usr/local/lib/python3.4/dist-packages/creepy-0.1.5.egg-info/PKG-INFO 
l.
ll gui/
cd ..
mv creepy creepy.old
mv creepy-plugins/ creepy-plugins.old
tar xzvf ~/Downloads/jkakavas-creepy-v1.3-3-g69792b5.tar.gz 
tar xzvf ~/Downloads/jkakavas-creepy-plugins-1573b0d.tar.gz 
cd jkakavas-creepy-69792b5/
l.
sudo python3 setup.py install
sudo python3 setup.py --help
sudo python3 setup.py help
cat setup.py 
cd
man debuild 
sudo apt-get -t kali-only install creepy
cd src/security/
apt-get -t kali-only source creepy
rm -rf creepy*
rm -rf jkakavas-creepy-*
mkdir creepy
cd creepy/
mv ~/Downloads/creepy_0.1.94* .
l.
sudo dpkg -i creepy_0.1.94-1_all.deb 
AGF
sudo dpkg -i creepy_0.1.94-1_all.deb 
apt-cache search python-osmgpsmap
mv ~/Downloads/osm-gps-map_1.0.2* .
l.
tar xzvf osm-gps-map_1.0.2.orig.tar.gz 
tar tf osm-gps-map_1.0.2-3.debian.tar.xz 
tar xJvf osm-gps-map_1.0.2-3.debian.tar.xz -C osm-gps-map-1.0.2/
l. osm-gps-map-1.0.2/
l. osm-gps-map-1.0.2/debian/
l.
cd osm-gps-map-1.0.2/
debuild -h
debuild -i -us -uc -b
sudo apt-get install d-shlibs libsoup2.4-dev python-gobject-dev python-gtk2-dev
AGF
sudo apt-get install d-shlibs libsoup2.4-dev python-gobject-dev python-gtk2-dev libboost-python1.55.0 python-flickrapi python-oauth python-pyexiv2 python-pyexiv2-doc python-tweepy
debuild -i -us -uc -b
cd ..
l.
l. *.deb
sudo dpkg -i *.deb
l.
cd osm-gps-map-1.0.2/
vi debian/control 
cd ..
AGF
l.
rm creepy_0.1.94-1_all.deb 
l.
tar xzvf creepy_0.1.94.orig.tar.gz 
l.
tar tf creepy_0.1.94-1.debian.tar.gz 
tar xzf creepy_0.1.94-1.debian.tar.gz  -C ilektrojohn-creepy-b7b83fc/creepy/
cd ilektrojohn-creepy-b7b83fc/
l.
mv creepy/debian/ .
l.
cat debian/
cat debian/rules 
l.
debuild -i -us -uc -b
l. ../
l. -t ../
cd ../
sudo dpkg -i *.deb
cd ilektrojohn-creepy-b7b83fc/
vi debian/control 
l. -t ../
rm ../creepy_0.1.94-1_amd64.*
rm ../creepy_0.1.94-1_all.deb 
debuild -i -us -uc -b
cd ..
l. -t .
s dpkg -i *.deb
cd
AGC
AGF
clear
creepy 
sudo apt-get install libosmgpsmap-dev python-osmgpsmap
sudo apt-get purge creepy 
lyx
ps axw
ps axw | grep lyx
lyx
sudo apt-get purge texmaker latexila latexila-data texworks texworks-help-en texworks-scripting-lua texworks-scripting-python
sudo apt-get purge texmaker texstudio latexila latexila-data 
sudo apt-get install texstudio-l10n 
sudo apt-get purge ^texstudio.*$
cd Downloads/
ll -t | head
ll -t | head -30
ll texworks-0.4.6-20150403-git_c29723a.tar.gz
rm texworks-0.4.6-20150403-git_c29723a.tar.gz 
cd
ls
cd bin
ls
vi yad-run.sh 
cd
java -version
l.
gpg2 --import jcameron-key.asc 
gpg2 --verify webmin_1.750_all.deb-sig.asc webmin_1.750_all.deb
gpg2 --verify webmin-1.750.tar.gz-sig.asc webmin-1.750.tar.gz
l.
sudo dpkg -i webmin_1.750_all.deb 
AGF
l.
md5sum -c md5sums.txt 
l.
ps axw
l.
sudo apt-get install nmap nmapsi4 zenmap 
SDU
AGP 
AGAP 
AGU 
sudo service webmin stop
sudo update-rc.d -f webmin disable
sudo update-rc.d -f webmin remove 
ps axw | grep webmin
AGD 
SDU
mv ~/Downloads/*.wbm* .
l. ipchains-0.83.1.wbm.gz 
l. mrtg-0.2p3.wbm 
l. inetd.wbm.gz 
yumdownloader  --destdir=/tmp fedora-release
ll /tmp/
s yumdownloader  --destdir=/tmp fedora-release
apt-cache search compiz
apt-cache show compizfusion-mate
cd src/security/
l.
cd ntop/
l.
cd ..
l.
dpkg -l | grep ntop
apt-cache show ntopng
l.
l. ntop/
l. /usr/local/bin/
cd ntop/
l.
l. nDPI/
mv ~/Downloads/nDPI-1.6.tar.gz .
mv ~/Downloads/ntopng-2.0.tar.gz .
mv ~/Downloads/PF_RING-6.0.3.tar.gz .
l.
cd
dpkg -l | grep ntopng
cd
cd src/security/
ps axw | grep ntop
mkdir nst
cp /usr/local/fedora/nst-20-6535.tar.gz nst/
cd nst/
sync
l.
sync
l.
tar xzvf nst-20-6535.tar.gz 
cd nst-20-6535/
l.
./configure 
l. wui/
cd wui/
./configure 
./configure --help
cd ..
apt-cache search fedora
sudo apt-get install yum yum-utils rpm rpm2cpio rpm2html rpm-common rpm-i18n rpmlint
yum makecache
s yum makecache
s yum repolist all
./configure --help
sudo rpm -i ~/Downloads/fedora-release-20-1.noarch.rpm 
sudo mkdir /usr/local/fedora/chroot
sudo rpm --root /usr/local/fedora/chroot --initdb
sudo rpm --root /usr/local/fedora/chroot -ivh /tmp/fedora-release-20-4.noarch.rpm 
sudo yum --installroot=/usr/local/fedora/chroot install bash
sudo yum --installroot=/usr/local/fedora/chroot groupinstall "minimal install"
sudo yum --installroot=/usr/local/fedora/chroot groupinstall Minimal\ Install
sudo yum --installroot=/usr/local/fedora/chroot grouplist
sudo yum --installroot=/usr/local/fedora/chroot groups list
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas do sistema"
sudo yum --installroot=/usr/local/fedora/chroot groups list
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas administrativas"
sudo yum --installroot=/usr/local/fedora/chroot install fedora*
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas do sistema"
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas do sistema" "Ferramentas administrativas"
sudo apt-get install e17 e17-data e17-dev
SDU
sudo yum --installroot=/usr/local/fedora/chroot groups list
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas*"
clear
cd src/security/nst/nst-20-6535/wui/
l.
cat Makefile 
l. /home/joaomanoel/src/security/nst/nst-20-6535/wui/include/make/makefile
l. ../config/config.mk
cat nstwui-README.txt 
ls
l. apps/
l. apps/geo/
l. apps/geo/lib/
l.
l. php/
l. php/networking/
l. php/
l. 
l. images/
cat Makefile 
cat /home/joaomanoel/src/security/nst/nst-20-6535/wui/include/make/makefile
l.
cd ..
l.
mv lmde/ linuxmint/lmde2
l. linuxmint/lmde2
cd linuxmint/
mv lmde2/ lmde-2
l.
cd lmde-2/
l.
mv lmde2-betsy-about.pdf lmde-2-about.pdf
mv lmde2-betsy-release-notes.pdf lmde-2_release-notes.pdf 
mv lmde-2-about.pdf lmde-2_about.pdf
l.
cd ..
l.
mkdir linuxmint-17.1
mv * linuxmint-17.1
mv linuxmint-17.1/lmde-2/ .
l.
l. linuxmint-17.1/
l.
mv linuxmint-17.1/ linuxmint-17
l.
l. linuxmint-17/
l.
cd ..
l.
l. debian/
cd debian/
mkdir debian-live-8.0.0-amd64
l.
mv * debian-live-8.0.0-amd64
l.
l. debian-live-8.0.0-amd64/
clear
l. 
l. debian-live-8.0.0-amd64/
cd ..
l.
l. debian/
l. linuxmint/
l.
l. suap/
mv suap ../vbox_vms/
l. ../vbox_vms/
l. ../vbox_vms/suap/
l.
l. fedora/
cat fedora/README.txt 
l. fedora/
l.
l. fedora/
cd fedora/
mv README.txt README_nst-20-6535.txt 
l.
mv README_nst-20-6535.txt nst-20-6535_README.txt 
l.
mv nst-20-6535_README.txt nst-20-6535.README.txt 
l.
whereis mate-screenshot 
l. Imagens/screen_shoots/
l. $PWD/Imagens/screen_shoots/
echo $PWD/Imagens/screen_shoots/
eom
/usr/bin/eom 
l. $PWD/Imagens/screen_shoots/
l. $PWD/Imagens/screen_shoots/ -t
chown joaomanoel\: -R $PWD/Imagens/screen_shoots/
l. $PWD/Imagens/screen_shoots/ -t
l. bin/*cry*
cd src/security/
l.
l. exploit-database/
l. ~/bin/*search*
cd
cd .local/bin/
l.
cd
cd src/security/exploit-database/
git pull
l.
./searchsploit 
./searchsploit gimp local
gimp --version
cp ~/Modelos/shell-script.sh ~/bin/search-exploit.sh
vi ~/bin/search-exploit.sh
l. ~/bin/search-exploit.sh
mv ~/bin/search-exploit.sh ~/bin/search-exploit.sh
l.
mv ~/bin/search-exploit.sh ~/bin/searchsploit
l. ~/bin/searchsploit
cd
searchsploit
searchsploit gimp loca
searchsploit gimp local
searchsploit ntopng
cd
clear
l. VirtualBox\ VMs
l. VirtualBox\ VMs/
sudo chown joaomanoel\: -R /usr/local/vbox_vms
sudo chown joaomanoel\: -R /usr/local/fedora/
sudo chown joaomanoel\: -R /usr/local/LMDE/
sudo chown joaomanoel\: -R /usr/local/LinuxMint/
sudo chown joaomanoel\: -R /usr/local/fedora/
sudo mv /opt/gnu_linux /usr/local/
sudo chown joaomanoel\: -R /usr/local/gnu_linux/
cd /usr/local/gnu_linux/
mv ../fedora .
s mv ../fedora 
s mv ../fedora .
s mv ../L* .
l.
mv UNetbootin/ unetbootin/
l.
rmdir teste/
l.
mv SUAP/ suap
l.
mv LMDE/ lmde
l.
mv LinuxMint/ linuxmint/
l.
mv Debian/ debian
l.
l. lmde/
l. debian/
l.
l. linuxmint/
l.
cd fedora/
l.
sudo yum --installroot=/usr/local/fedora/chroot groups install "Ferramentas*"
sudo yum --installroot=/usr/local/gnu_linux/fedora/chroot groups install "Ferramentas*"
l.
chroot 
chroot --help
l.
l. chroot/
sudo chown joaomanoel\: -R .
du -h .
du -h ..
l.
df -h
cd
clear
chroot /usr/local/gnu_linux/fedora/chroot
sudo chroot /usr/local/gnu_linux/fedora/chroot
sudo chroot /usr/local/gnu_linux/fedora/chroot /bin/bash
cd /usr/local/gnu_linux/fedora/
l.
tar xzvf nst-20-6535.tar.gz -C chroot/usr/src/
sudo chown joaomanoel\: -R .
sudo chroot /usr/local/gnu_linux/fedora/chroot /bin/bash
l.
du -h .
cmp Estudo\ de\ caso\ Teste\ 01.pdf Estudo\ de\ caso\ Teste\ 01\(1\).pdf 
rm Estudo\ de\ caso\ Teste\ 01\(1\).pdf
sudo dpkg-reconfigure -plow virtualbox-guest-.*
sudo dpkg-reconfigure -plow virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11
sudo dpkg-reconfigure -plow virtualbox-guest-utils 
sudo dpkg-reconfigure -plow virtualbox-guest-x11 
lsmod | grep vbox
sudo modprobe -r vboxguest
sudo modprobe -r vboxguest1
sudo modprobe -r vboxguest
sudo modprobe vboxguest
sudo modprobe vboxsf
sudo modprobe vboxvideo1
sudo modprobe vboxvideo
sudo modprobe vboxsf
sudo modprobe vboxguest
lsmod | grep vbox
sudo invoke-rc.d vboxdrv status
sudo invoke-rc.d -l vboxdrv status
sudo invoke-rc.d vboxdrv status
sudo invoke-rc.d vboxdrv -l status
sudo invoke-rc.d vboxdrv status -l
sudo invoke-rc.d vboxdrv status
sudo invoke-rc.d vboxdrv stop
sudo invoke-rc.d vboxdrv status
sudo invoke-rc.d vboxdrv start
sudo journalctl -xn
vi /etc/init.d/vboxdrv:
vi /etc/init.d/vboxdrv
l. /lib/lsb/init-functions
l. /etc/debian_version 
cat /etc/debian_version
cat /etc/redhat-release 
vi /etc/init.d/vboxdrv
se /etc/init.d/vboxdrv
SDU
lsmod | grep vbox
sudo apt-get purge lyx lyx-common
AGI libboost-regex1.55.0 libboost-signals1.55.0
AGC
AGI
AGI '^texstudio.*$'
AGC
AGI
/usr/bin/eom
ccsm
sudo chmod g+w -R Imagens/
ll Imagens/
ll Imagens/captura-de-tela/
ll Imagens/captura-de-tela/ -a
ccsm
ll Dropbox/
ll Dropbox/Ca
ll Dropbox/Captura_de_Tela/
sudo apt-get install e17 e17-data e17-dev
sudo apt-get install openbox openbox-dev openbox-menu openbox-xdgmenu openbox-gnome-session obmenu obconf 
s
sudoedit /etc/sudoers
sudo ls
man sudo
man sudo.conf 
man sudo
man sudoers 
sudoedit /etc/sudoers
clear
sudo clear
ps axw
man enlightenment_start 
man enlightenment
ps axwej
ps axwe
ps axweu
ps axwej
ps axwejp
ps ej
ps ejw
ps eja
ps ejp
ps -a
ps -axw
ps -axwu
ps -axwue
ps -axwuej
ps -axwue
ps -axwuem
ps --help all
ps --help todos
ps --ajuda
ps --ajuda todos
ps -aH
ps -aHxw
ps axwejh 
ps axwejhH
ps a
ps --ajuda todos
ps axwejH
ps axwejHf
ps axwejf
ps axwHf
ps -axwHf
ps -axHf
ps -aHf
ps -aeHf
ps -ejHf
ps -ejHfu
ps -eHfu
ps -axw
ps -axwu
ps -axwuf
ps -ejHf
ps -ejHuf
ps -ejHf
ps -ejhf
ps -ejHf
ps -axwf
ps -axwuf
sudo apt-get install rxvt-unicode.*
sudo apt-get install rxvt-unicode rxvt-unicode-lite 
sudo apt-get install rxvt-unicode rxvt-unicode-ml 
sudo apt-get install rxvt-unicode-256color 
sudo apt-get install rxvt-unicode-lite 
sudo apt-get install rxvt-unicode-256color 
sudo apt-get install
sudo apt-get install mc screen byobu gpm 
mc
ps axwuf
vi .xinitrc 
l. .xinitrc
file /home/joaomanoel/Dropbox/Public/Meus_Projetos/my_dot_files/.xinitrc
vi .xinitrc 
ps axwuf | grep dropbox
vi .xinitrc 
dropbox 
dropbox  status
dropbox ls
sudo apt-get install caja-dropbox 
dpkg -L caja-dropbox
ll /usr/bin/dropbox 
file /usr/bin/dropbox
dropbox 
vi .xinitrc 
ll /usr/bin/x-terminal-emulator 
ll /etc/alternatives/x-terminal-emulator
vi .xinitrc 
cat .xsession
cat .xsessionrc 
cat .xinitrc 
ll /usr/bin/enlightenment
file /usr/bin/enlightenment
file /usr/bin/enlightenment*
vi .xinitrc 
ps axwuf
cat .xinitrc 
ps axwuf
l. .xinitrc 
l. .xsession
l. .xsessionrc 
cat .xsessionrc
rm .xinitrc 
rm .xsessionrc 
cp /home/joaomanoel/Dropbox/Public/Meus_Projetos/my_dot_files/.xsessionrc .
cp /home/joaomanoel/Dropbox/Public/Meus_Projetos/my_dot_files/.xinitrc .
l. .x*
chmod a+x .xsession
chmod a+x .xsessionrc 
l. .x*
file .x*
cat .xsessionrc 
cat .xinitrc 
ls
vi
SDU
cd Downloads/
sudo dpkg -i teamviewer_10.0.41499_i386.deb 
AGF
dropbox status
ps axe
ps axw | grep team
teamviewer 
linux32 teamviewer 
vi ~/.xinitrc 
killall -9 enlightenment_start 
sudo service mdm stop 
startx
vi .xinitrc 
startx
vi .xinitrc 
rxvt-unicode 
vi .xinitrc 
startx
sudo service mdm start
firefox-st
cd Vídeos
ls
file enade.webm 
file enade.*
l. enade.*
totem enade.webm 
l. enade.*
vlc-wrapper enade.webm 
l. enade.*
file enade.*
vlc enade.webm 
vlc enade.mp4 
file enade.mp4 
file enade.*
l. enade.*
totem enade.mp4 
vlc enade.mp4 
l. enade.*
file enade.*
l. enade.*
totem enade.mp4 
l. enade.*
vlc enade.mp4 
l. enade.*
rm enade.asf 
rm enade.webm 
l.ç enade.mp4 
l. enade.mp4 
file enade.mp4
dropbox start -i
l. enade.mp4 
vlc enade.mp4
ps axwuef
ps axwuf
ps axwuf | grep gpg
ps axwuf | grep agent
ps axwuf | grep ssh-agent
cat .config/autostart/gpg-agent.desktop 
ps axwuf | grep gnome-keyring
ps axwuf | grep keyring
ps axwuf | grep hplip
ls
man uxterm 
[joaomanoel@noteship:~] $ 
ls
sudoedit /etc/sudoers
SDU
sudo service teamviewerd status
ls src/
ls src/desktop-sharing/
ls src/desktop-sharing/teamviewer/
cd src/desktop-sharing/teamviewer/
rm *
mv ~/Downloads/teamviewer_* .
sudo dpkg -i teamviewer_10.0.41499_i386.deb 
l.
apt-cache search connman
sudo apt-get install eterm rxvt-unicode-256color rxvt-unicode
sudo apt-get install eterm rxvt-unicode-256color rxvt-unicode-ml 
apt-cache show rxvt-unicode-256color 
sudo apt-get install eterm rxvt-unicode-256color 'connman.*$'
nm-applet &
caja-dropbox status
caja-dropbox start
clipit &
teamviewer &
nm-applet &
clipit 
ps axwuf 
ps axwuf  | grep team
sudo apt-get install evince-hwp
apt-cache show evince-hwp
sudo apt-get install evince-hwp
sudo apt-get install evince evince-hwp  evince-gtk
sudo apt-get install evince evince-hwp
evince
sudo apt-get install evince-gtk 
evince
apt-cache show evince-gtk 
sudo update-alternatives --config x-cursor-theme 
l. /usr/share/icons/default/index.theme
l. /etc/alternatives/x-cursor-theme
cat /usr/share/icons/DMZ-Black/cursor.theme
cat /usr/share/icons/default/index.theme
cat /usr/share/icons/elementaryXubuntu-dark/index.theme 
cat /usr/share/icons/elementaryXubuntu-dark/index.theme | grep cur
cat /usr/share/icons/default/index.theme
cat /usr/share/icons/elementaryXubuntu-dark/index.theme | grep Icon
dpkg -l | grep enlight
cat /usr/share/icons/DMZ-Black/
cat /usr/share/icons/DMZ-Black/cursor.theme 
l. /usr/share/icons/DMZ-Black/cursors/
dpkg -l | grep e17 |
dpkg -L e17
dpkg -L e17 | grep curso
dpkg -L e17 | grep cursor
dpkg -L e17-data | grep cursor
dpkg -L e17-dev | grep cursor
dpkg -L e17-data
l. /usr/share/enlightenment/
l. /usr/share/enlightenment/data/
l. /usr/share/enlightenment/data/themes/
file /usr/share/enlightenment/data/themes/default.edj 
l. /usr/share/enlightenment/data/icons/
l. /usr/share/enlightenment/data/images/
l. /usr/share/icons/default
sudo apt-get install '^connman.*$'
sudo apt-get install '^connman.*$' indicator-session-gtk2 
apt-cache show indicator-session
apt-cache show indicator-session-gtk2 
apt-cache show indicator-network
sudo apt-get install '^connman.*$' indicator-network
sudo apt-get install '^connman.*$'
connman-ui-gtk 
bg
ls
dpkg -L e17
dpkg -L e17-dev 
dpkg -L e17-data 
file /usr/share/enlightenment/data/themes/default.edj
file /usr/share/enlightenment/data/themes/default.edj 
view /usr/share/enlightenment/data/themes/default.edj
gview /usr/share/enlightenment/data/themes/default.edj
l. /usr/share/enlightenment/data/themes/default.edj
dpkg -L libeet1
dpkg -L libecore-input1 
dpkg -L libe
dpkg -L libecore-input1 
dpkg -L libecore-x1 
l. /usr/share/icons/default/
cat /usr/share/icons/default/
cat /usr/share/icons/default/index.theme 
l. /usr/share/icons/moblin/cursors/
file /usr/share/icons/moblin/cursors/
file /usr/share/icons/moblin/cursors/*
find /usr/share/enlightenment/ -name '*' -exec file
find /usr/share/enlightenment/ -name '*' -exec file '{}'
find /usr/share/enlightenment/ -name '*' -exec file '{}' \;
find /usr/share/enlightenment/ -name '*' -exec file \;
find /usr/share/enlightenment/ -name '*' -exec file '{}' \;
find /usr/share/enlightenment/ -name '*' -exec file '{}' \; | grep X11
file /usr/share/icons/moblin/cursors/*
find /usr/share/enlightenment/ -name '*' -exec file '{}' \; | grep X11
find /usr/share/icons/ -name '*' -exec file '{}' \; | grep X11
find /usr/share/enlightenment/ -name '*' -exec file '{}' \; | grep X11
find /usr/share/et -name '*' -exec file '{}' \; | grep X11
find /usr/share/enlightenment/
grep Icon -r /usr/share/enlightenment/
cat /usr/share/enlightenment/data/config/default/profile.desktop
cat /usr/share/enlightenment/data/config/default/e.cfg 
file /usr/share/enlightenment/data/config/default/e.cfg
sudo mkdir /usr/share/icons/enlightenment/
sudo cp /usr/share/icons/default/index.theme /usr/share/icons/enlightenment/
cd /usr/share/icons/enlightenment/
l.
s vi index.theme 
sudo update-alternatives --install 
sudo update-alternatives --help 
sudo update-alternatives --install /usr/share/icons/default/index.theme x-cursor-theme /usr/share/icons/enlightenment/index.theme 1
sudo update-alternatives --config x-cursor-theme 
cd .local/share/applications/
cp eclipse-IDE.desktop connman.desktop
vi connman.desktop 
man connman
vi connman.desktop 
man connman
echo 'network management daemon' >> connman.desktop 
vi connman.desktop 
dpkg -L connman-ui 
eom /usr/share/connman_ui_gtk/icons/network_ready.png
eom /usr/share/enlightenment/data/icons/audio_player2.png 
find /usr/share/icons/gnome/ -name '*network*'
eom /usr/share/icons/gnome/24x24/places/gtk-network.png
/usr/share/icons/gnome/24x24/places/network.png
l. /usr/share/icons/gnome/24x24/places/
l. /usr/share/icons/gnome/24x24/places/network*
eom /usr/share/icons/gnome/scalable/status/network-idle-symbolic.svg
eom /usr/share/icons/gnome/256x256/status/network-idle.png
eom /usr/share/connman_ui_gtk/icons/ethernet.png 
eom /usr/share/connman_ui_gtk/icons/tethering.png 
vi connman.desktop 
SDU
sudo apt-get install iputils-arping libndp0 libnm-glib-vpn1 libnm-gtk-common libnm-gtk0 libteamdctl0 mobile-broadband-provider-info
AGC
AGI
cd
l. -t
l. -t /tmp/
l. -t /tmp/plugtmp/
l. -t .gconf/
l. -t .gconf/apps/
l. -t .gconf/
l. -t .gconf/desktop/
l. -t .gconf/desktop/gnome/
l. -t .config/vlc/
l. ~/Downloads/ -t | head
l. -t | head -20
l. /tmp/
l. -t /tmp/
find /tmp/ -name "*.srt"
s find /tmp/ -name "*.srt"
ps axw | grep apa
ps axw | grep apac
ps axw | grep apache
ps axw | grep tomcat
sudo invoke-rc.d aptitude-robot stop
sudo invoke-rc.d tomcat7 stop
sudo invoke-rc.d tomcat8 stop
sudo update-rc.d -f tomcat7 stop
sudo update-rc.d -f tomcat7 remove 
sudo update-rc.d -f tomcat8 remove 
sudo update-rc.d -f aptitude-robot remove 
sudo update-rc.d -f aptitude-robot disable
sudo update-rc.d -f tomcat7 disable
sudo update-rc.d -f tomcat8 disable
clwea
clear
l. Vídeos/Novos/Noite.Sem.Fim/
file Vídeos/Novos/Noite.Sem.Fim/Noite.Sem.Fim.HC.HDRip.Xvid.Dual.Audio-P2p.srt 
vi Vídeos/Novos/Noite.Sem.Fim/Noite.Sem.Fim.HC.HDRip.Xvid.Dual.Audio-P2p.srt 
cd Vídeos/
l
cd Novos/
ls -t
cd Big.Game/
ls
gnome-mplayer Big\ Game.2014.WEBRip.XViD-ETRG.avi 
sudo apt-get install conky conky-all i3 i3blocks i3lock i3status i3-wm i3-wm-dbg obconf obmenu openbox openbox-dev openbox-menu tint2 xmaxima maxima maxima-doc maxima-emacs  maxima-share maxima-src maxima-test wxmaxima scilab scilab-ann scilab-celestlab scilab-cli scilab-data scilab-doc scilab-doc-pt-br  scilab-full-bin  scilab-full-bin-dbg scilab-getfem++ scilab-include scilab-minimal-bin scilab-minimal-bin-dbg scilab-plotlib scilab-test
sudo apt-get install conky conky-all i3 i3blocks i3lock i3status i3-wm i3-wm-dbg obconf obmenu openbox openbox-dev openbox-menu tint2 xmaxima maxima maxima-doc maxima-emacs  maxima-share maxima-src maxima-test wxmaxima scilab scilab-ann scilab-celestlab scilab-cli scilab-data scilab-doc scilab-doc-pt-br  scilab-full-bin  scilab-full-bin-dbg scilab-getfem++ scilab-include scilab-minimal-bin scilab-minimal-bin-dbg scilab-plotlib scilab-test '^r-cran-.*$'
s apt-file update 
sudo apt-get install conky conky-all i3 i3blocks i3lock i3status i3-wm i3-wm-dbg obconf obmenu openbox openbox-dev openbox-menu tint2 xmaxima maxima maxima-doc maxima-emacs  maxima-share maxima-src maxima-test wxmaxima scilab scilab-ann scilab-celestlab scilab-cli scilab-data scilab-doc scilab-doc-pt-br  scilab-full-bin  scilab-full-bin-dbg scilab-getfem++ scilab-include scilab-minimal-bin scilab-minimal-bin-dbg scilab-plotlib scilab-test '^r-cran-.*$' bvi hexedit hexcurse
sudo update-alternatives --config x-cursor-theme 
ps axw | grep conn
man connman
sudo apt-get install network-manager network-manager-dev network-manager-iodine network-manager-openconnect network-manager-openvpn network-manager-pptp network-manager-vpnc
ps axw | grep conn
sudo invoke-rc.d connman stop
sudo update-rc.d -f connman remove 
sudo update-rc.d -f connman1 remove 
sudo dpkg --purge ^connman.*$
AGAP ^connman.*$
AGA ^connman.*$
alias
AGP ^connman.*$
AGP e17.*$
AGP ^e
sudo update-rc.d -f connman1 remove 
AGAP
ps axw | grep conn
ps axw | grep netw
sudo invoke-rc.d network-manager start
ps axw | grep nm-ap
ps axw | grep Net
apt-file find /usr/bin/nm-applet
sudo apt-get install network-manager-gnome 
sudo apt-get install network-manager-gnome network-manager-openconnect-gnome network-manager-openvpn-gnome network-manager-vpnc-gnome network-manager-pptp-gnome
SDU
firefox -P
l. .mozilla/
l. .mozilla/firefox/
cat .mozilla/firefox/profiles.ini 
vi .mozilla/firefox/profiles.ini 
l. .mozilla/firefox/
rm -rf .mozilla/firefox/er56rf19.dev-edition-default/
rm -rf .mozilla/firefox/f4q20y68.dev-edition-default/
l. .mozilla/firefox/
vi .mozilla/firefox/profiles.ini 
l. .mozilla/firefox/
firefox -P
l.
l. .mozilla/firefox/
rm -rf .mozilla/firefox/fzdeoblr.teste/
vi .mozilla/firefox/profiles.ini 
firefox -P
FX
alias FXP
alias FX
firefox-stable -P
clear
ps axw | grep teamv
teamviewer --help
teamviewer daemon status
teamviewer daemon start
teamviewer
bg
l. /usr/share/applications/teamviewer-teamviewer10.desktop 
cat /usr/share/applications/teamviewer-teamviewer10.desktop 
cp /usr/share/applications/teamviewer-teamviewer10.desktop .config/autostart/
rm .local/share/applications/connman.desktop 
cat bin/x11vnc-server.sh 
gvim bin/x11vnc-server.sh 
cat bin/x11vnc-server.sh 
l. /usr/share/x11vnc/classes/ssl/
l. /usr/share/x11vnc/
l. /usr/share/x11vnc/classes/
l. /usr/share/x11vnc/classes/ssl/
l. /usr/share/x11vnc/classes/
l. /usr/share/x11vnc/
l. /usr/share/x11vnc/classes/
l. /usr/share/x11vnc/classes/ssl/
cat bin/x11vnc-server.sh 
gvim bin/x11vnc-server.sh
gvim bin/x11vnc-viewer.sh 
cat bin/x11vnc-viewer.sh
vim .bash_env 
cat .bash_env
l. /usr/share/vnc-java/vncviewer.jar 
l. /usr/share/vnc-java/
l. /usr/share/vnc-java/vncviewer.jar 
l. /usr/share/vnc-java/
l. /usr/share/vnc-java/vncviewer.jar
l. /usr/share/java/vncviewer-3.3.3r2.jar 
file /usr/share/java/vncviewer-3.3.3r2.jar
l.
clear
ls
cd
vim .bash_env 
echo $NODEJS_HOME 
l. /home/joaomanoel/.local/node-v0.12.3-linux-x64
l. /home/joaomanoel/.local/node-v0.12.3-linux-x64/bin/
gvim bin/x11vnc-viewer.sh 
cd .local/share/applications/
cp firefox-stable.desktop firefox-joaomanoel.desktop 
mv firefox-stable.desktop firefox-ifg-tae.desktop
vi firefox-joaomanoel.desktop 
vi firefox-ifg-tae.desktop 
l. firefox-*
l. ~/.mozilla/firefox/
mv firefox-dev.desktop firefox-dev-edition-default.desktop
l. firefox-*
cat firefox-dev-edition-default.desktop
cd .local/share/applications/
vi firefox-joaomanoel.desktop 
vi firefox-ifg-tae.desktop 
SDU
l. .seqzo/
cat .seqzo/.md03 
cat texlive2015*
apt-cache show metasploit
apt-cache search metasploit
ps qxwuf
ps axwuf
/usr/bin/gthumb
/usr/bin/gthumb  /home/joaomanoel/Dropbox/Captura_de_Tela/screenshot3.png
df -h
cd
se /etc/apt/sources.list.d/kali.list 
se /etc/apt/preferences.d/kali.pref 
SDU
sudo apt-get install -t kali-rolling-only ^metasploit.*$
sudo apt-get install -t kali-rolling-only
sudo apt-get install -t kali-rolling-only '^meta.*sploit.*$'
sudo apt-get install -t kali-rolling-only '^meta.*ploit.*$'
sudo apt-get install -t kali-rolling-only '^meta.*plo.*$'
sudo apt-get install -t kali-rolling-only '^meta.*plo.*$'
sudo apt-file update 
se /etc/apt/preferences.d/kali.pref 
se /etc/apt/sources.list.d/kali.list 
SDU
sudo apt-get install -t kali-rolling ^metasploit.*$
sudo apt-get install -t kali-rolling python-faraday
sudo apt-get install -t kali-rolling aircrack-ng
sudo apt-get install conky conky-all i3 i3blocks i3lock i3status i3-wm i3-wm-dbg obconf obmenu openbox openbox-dev openbox-menu tint2 xmaxima maxima maxima-doc maxima-emacs  maxima-share maxima-src maxima-test wxmaxima scilab scilab-ann scilab-celestlab scilab-cli scilab-data scilab-doc scilab-doc-pt-br  scilab-full-bin  scilab-full-bin-dbg scilab-getfem++ scilab-include scilab-minimal-bin scilab-minimal-bin-dbg scilab-plotlib scilab-test '^r-cran-.*$' bvi hexedit hexcurse rxvt-unicode-256color
rm texlive2015.iso.md5 
l. texlive2015-20150523.iso.*
curl -o texlive2015-20150523.iso http://linorg.usp.br/CTAN/systems/texlive/Images/texlive2015-20150523.iso
sha256sum -c texlive2015-20150523.iso.sha256 
sudo apt-get purge openbox openbox-dev openbox-menu obmenu obconf tint2 
SDU
AGAP 
AGC
AGI
sudo apt-get install dzen2 
AGC
AGI
sudo apt-file update 
apt-file find bin/dmenu
apt-cache show suckless-tools
AGI  suckless-tools
dmenu
sudo apt-get install ^i3.*$
AGC
AGAC 
AGC
AGI
SDU
cd
vi .xinitrc 
ps axw | grep clip
ps axw | grep nm-applet
vi .xinitrc 
man i3
vi .xinitrc 
grep '^Exec=' .config/autostart/teamviewer-teamviewer10.desktop 
vi .xinitrc 
x-terminal-emulator 
vi .xinitrc 
l. .xinitrc
cat .xinitrc 
vi .xinitrc 
cat .xinitrc
l. /usr/bin/i3
file /usr/bin/i3
cat .xsessionrc 
l. .xsessionrc
l. Meus_Projetos/my_dot_files/.xsessionrc
sudo apt-file update 
ls
dropbox.py 
dropbox.py status
dropbox.py start -i
nm-applet &
sudo killall -9 i3
cat .xinitrc 
caja-dropbox 
vi .xinitrc 
cat .xinitrc 
killall -9 i3
caja-dropbox start
cd .local/share/
l.
cd mime/
l.
cd ..
cd applications/
l.
vi mimeinfo.cache 
cd ..
cd mime/
l.
cd ..
cd applications/
vi defaults.list
grep audacious -r .
cd ..
grep audacious -r .
l.
l. mime/
grep audacious -r
grep audaci -r
grep firefox -r
grep udaci -r
l. mime/
cat mime/mime.cache 
l.
l. mime/
l. mime/application/
cat mime/mime.cache 
cat mime/mime.cache
cat applications/defaults.list
sed s/enlightenment_filemanager/caja/g applications/defaults.list
l. /usr/share/applications/caja.desktop 
cat /usr/share/applications/caja.desktop 
sed s/enlightenment_filemanager/caja/g applications/defaults.list -i
cat applications/defaults.list
xter
xterm
mate-terminal
dropbox start
se /etc/mdm/mdm.conf 
sudo update-alternatives --config x-cursor-theme 
l. .xinitrc 
rm .xinitrc 
rm .xsessionrc 
ln -s Dropbox/Public/Meus_Projetos/my_dot_files/.xsessionrc .
sudo apt-get purge openbox openbox-dev openbox-menu openbox-xdgmenu obconf obmenu
AGAP
SDU
AGC
AGI
clear
ps axwuf
sudo invoke-rc.d metasploit stop
mate-screensaver-command 
mate-screensaver-command -h
mate-screensaver-command -l
ps axw | grep window
sudo invoke-rc.d metasploit stop
ps axwuf
kill -9 4160
ps axwuf
kill -9 4214
ps axwuf
windowlab 
man windowlab 
cat .xinitrc 
i3lock 
i3blocks 
man i3
clear
ping www.ufg.br
clear
SDU
ps axw | grep tor
sudo invoke-rc.d tor stop
ps axw | grep tor
sudo update-rc.d tor remove 
sudo update-rc.d -f tor remove 
sudo update-rc.d -f tor disable
sudo update-rc.d tor disable
s apt-get install medit 
rm ~/Downloads/medit-1.2.0.tar.bz2 
clear
cd src/
hg clone https://medit@bitbucket.org/medit/medit
sudo apt-get install volumeicon-alsa
amixer 
sudo apt-get install volumeicon-alsa
volumeicon 
bg
man bg
man volumeicon 
echo 'volumeicon' >> ~/.xinitrc 
vi ~/.xinitrc
ps axw | grep teamv
cd medit/
l.
ls
./autogen.sh 
./configure --enable-dev-mode --prefix=/usr/local
apt-file find bin/txt2tags
AGI txt2tags
sudo apt-get clean 
sudo apt-get autoclean 
sudo apt-get clean 
sudo apt-get autoclean 
AGI
clear
./configure --enable-dev-mode --prefix=/usr/local
make -j2
cd ..
rm -rf medit/
cd
clear
ls
cd
clear
df -h
komodo-edit-9
komodo-edit-8
uxterm
sudo apt-get install xterm
SDU
uxterm
SDU
xrdb -query -all
ls
xrdb -query -all
ls
xrdb -query -all
SDU
ls
l. ~
ls
los
ll
ll ~
ll
ls
cd
ls
echo 'http://www.ufg.br'
cd /usr/local/bin/
echo 'http://www.ufg.br'
ls
vi
cd Dropbox/Public/Meus_Projetos/my_dot_files/
cat .xinitrc 
mv .xinitrc .xinitrc.i3wm
cp .xinitrc.i3wm .xinitrc.e17
vi .xinitrc.e17 
ps axwuf
vi .xinitrc.e17 
echo '/usr/bin/enlightenment_start' >> .xinitrc.e17 
vi .xinitrc.e17
cat .xinitrc.e17
vi .xinitrc.e17
cat .xinitrc.e17
sudo apt-get install volumeicon-alsa clipit
AGI alsamixergui
AGC
AGI
vi .xinitrc.e17 
cat .xinitrc.e17
cat .xinitrc.i3wm 
vi .xinitrc.e17 
vi .xinitrc.e17
vi .xinitrc.i3wm 
(x=`tput op` y=`printf %76s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done)
vi .bash_aliases 
colors
vi .bash_aliases 
. .bash_aliases
256colors 
for T in `find /usr/share/terminfo -type f -printf '%f '`;do echo "$T `tput -T $T colors`";done|sort -nk2
for T in `find /usr/share/terminfo -type f -printf '%f '`;do echo "$T `tput -T $T colors`";done|sort -nk2 | egrep '^xterm'
for T in `find /usr/share/terminfo -type f -printf '%f '`;do echo "$T `tput -T $T colors`";done|sort -nk2 | egrep '^uxterm'
for T in `find /usr/share/terminfo -type f -printf '%f '`;do echo "$T `tput -T $T colors`";done|sort -nk2 | egrep 'xterm'
for T in `find /usr/share/terminfo -type f -printf '%f '`;do echo "$T `tput -T $T colors`";done|sort -nk2 | egrep 'xterm' | grep '256'
xrdb -query -all
vi .Xresources
xrdb -merge .Xresources 
urxvt
uxterm 
xfontsel 
vi .Xresources
xrdb -merge .Xresources 
uxterm 
vi .Xresources
xrdb -merge .Xresources 
uxterm 
bg
vi .Xresources
xrdb -merge .Xresources 
uxterm 
bg
vi .Xresources
xrdb -merge .Xresources 
uxterm &
vi .Xresources
xrdb -merge .Xresources 
]
urxvt
vi .Xresources
l. /usr/share/icons/Clarity/scalable/apps/terminal.svg
eom /usr/share/icons/Tango/scalable/apps/terminal.svg 
eom /usr/share/icons/mate/scalable/apps/terminal.svg 
eom /usr/share/icons/Mint-X/scalable/apps/terminal.svg 
eom /usr/share/icons/Mint-X/apps/scalable/terminal.svg 
eom /usr/share/icons/Tango/scalable/apps/terminal.svg 
eom /usr/share/icons/mate/256x256/apps/terminal.png 
eom /usr/share/icons/Mint-X/apps/scalable/terminal.svg 
eom /usr/share/icons/mate/256x256/apps/terminal.png 
eom /usr/share/icons/Mint-X/apps/scalable/terminal.svg 
eom /usr/share/icons/Tango/scalable/apps/terminal.svg 
vi .Xresources
eom /usr/share/icons/
vi .Xresources
xrdb -merge .Xresources 
urxvt
vi .Xresources
xrdb -merge .Xresources 
urxvt
xrdb -merge .Xresources 
vi .Xresources
xrdb -merge .Xresources 
urxvt
vi .Xresources
xrdb -merge .Xresources 
urxvt
vi .Xresources
xrdb -merge .Xresources 
urxvt
vi .Xresources
urxvt -font FreeMono:slant=0:weight=200:pixelsize=14:autohint=True:minspace=True
urxvt -fn FreeMono:slant=0:weight=200:pixelsize=14:autohint=True:minspace=True
urxvt -fn 'FreeMono:slant=0:weight=200:pixelsize=14:autohint=True:minspace=True'
vi .Xresources
urxvt -fn 'xft:FreeMono:slant=0:weight=200:pixelsize=14:autohint=True:minspace=True'
urxvt -fn 'xft:FreeMono:slant=0:weight=200:pixelsize=14'
urxvt -fn 'xft:FreeMono:width=10'
urxvt -fn 'xft:FreeMono:size=10'
urxvt -fn 'xft:FreeMono'
urxvt -fn 'xft:FreeMono:width=100'
urxvt -fn 'xft:Dejavu Sans Mono:width=100'
urxvt -fn 'xft:monaco:width=10'
urxvt -fn 'xft:monaco:size=10'
urxvt -fn 'xft:monaco:size=8'
urxvt -fn 'xft:monaco:size=9'
urxvt -fn 'xft:monaco:size=10'
vi .Xresources

vi .Xresources
fc-list 
fc-list  | grep freemono
fc-list  | grep FreeMono
urxvt -fn 'xft:FreeMono:style=Regular'
urxvt -fn 'xft:Andale Mono:style=Regular,Normal'
urxvt -fn 'xft:Andale\ Mono:style=Regular,Normal'
urxvt -fn 'xft:Andale\ Mono:style=Regular:size=10'
fc-list  | grep FreeMono
fc-list  | grep Mono
urxvt -fn 'xft:DejaVu Sans Mono:style=Boo'
urxvt -fn 'xft:DejaVu Sans Mono:style=Book'
urxvt -fn 'xft:DejaVu Sans Mono:style=Book:size=10'
urxvt -fn 'terminus'
vi .Xresources
xrdb -merge .Xresources 
urxvt
dpkg -l | grep rxvt
s dpkg -P rxvt-unicode
dpkg -l | grep rxvt
urxvt
s ln -s /usr/bin/firefox /usr/local/bin/firefox-stable
urxvt
vi .Xresources
xrdb -merge .Xresources 
urxvt
xrdb -query -all
xrdb -h
xrdb -remove
urxvt
xrdb -load .Xresources 
urxvt
xrdb -query -all
ls
cd
ls
cd
ls
ll
cd Dropbox/Public/Meus_Projetos/my_dot_files/
vi .Xresources 
xrdb -load .Xresources 
urxvt
fc-list  | grep Mono
fc-list  | grep FreeMono
urxvt -fn 'xft:FreeMono:style=Regular'
urxvt -fn 'xft:FreeMono:style=Regular:size=10'
vi .Xresources 
xrdb -load .Xresources 
urxvt
ll
ll
ls
SDU
colors
vi .Xresources 
cd Dropbox/Public/Meus_Projetos/my_dot_files/
vi .Xresources 
xrdb -load .Xresources 
echo 'http://www.ufg.br'
vi .Xresources 
ll
ll ~
vi .Xresources 
xrdb -load .Xresources 
uxterm 
vi .Xresources 
xrdb -load .Xresources 
ll
cd
cd Dropbox/Public/Meus_Projetos/my_dot_files/
vi .Xresources 
xrdb -load .Xresources 
urxvt
vi .Xresources 
xrdb -load .Xresources 
urxvt
sudo apt-get install gcolor2 -y
gcolor2 
vi .Xresources 
xrdb -load .Xresources 
urxvt
sudo apt-get install gcolor2 -y
SDU
ln -s Dropbox/Public/Meus_Projetos/my_dot_files/.Xresources .
vi .Xresources 
xrdb -load .Xresources 
urxvt
SDU
vi .Xresources 
xrdb -load .Xresources 
SDU
vi .Xresources 
xrdb -load .Xresources 
echo 'http://www.ufg.br'
vi .Xresources 
xrdb -load .Xresources 
echo 'http://www.ufg.br'
vi .Xresources 
xrdb -load .Xresources 
echo 'http://www.ufg.br'
vi .Xresources 
SDU
dpkg -l | grep dropbox
sudo apt-get purge dropbox
apt-cache show caja-dropbox 
ln -s Dropbox/Public/Meus_Projetos/my_dot_files/.xinitrc.e17 .xinitrc
l. .xinitrc .xsessionrc 
cat .xinitrc 
vi .xinitrc 
vi .Xresources 
xrdb -load .Xresources 
ll
ll
vi .Xresources 
xrdb -load .Xresources 
echo '2'
ll
xxs
SDU
clear
cd /usr/share/session-migration/
cd ../xsessions/
l.
cp enlightenment.desktop xinitrc.desktop
s cp enlightenment.desktop xinitrc.desktop
se xinitrc.desktop 
se mate.desktop 
tail -3 mate.desktop
tail -4 mate.desktop
tail -3 mate.desktop
tail -3 mate.desktop | s tee -a xinitrc.desktop 
se xinitrc.desktop
cat xinitrc.desktop
se /usr/local/bin/xinitrc-start
chmod a+x /usr/local/bin/xinitrc-start
s chmod a+x /usr/local/bin/xinitrc-start
l. /usr/local/bin/xinitrc-start
file /usr/local/bin/xinitrc-start
cat /usr/local/bin/xinitrc-start
cd
mate-terminal
clear
aa
clea
clear
ls
cd
clear
sudo apt-get install lm-sensors 
sudo apt-get install lm-sensors fancontrol sensors-applet sensord read-edid i2c-tools 
sudo apt-get install lm-sensors fancontrol sensors-applet sensord read-edid i2c-tools hddtemp 
sudo apt-get install lm-sensors fancontrol sensors-applet sensord read-edid i2c-tools hddtemp libi2c-dev python-smbus rrdtool
sudo apt-get install lm-sensors fancontrol sensors-applet sensord read-edid i2c-tools hddtemp libi2c-dev python-smbus rrdtool librrds-perl
sudo dpkg-reconfigure -plow debconf
sudo dpkg-reconfigure -plow hddtemp 
sensors
vi .xinitrc 
SDU
l. .Xresources 
l. .xinitrc 
