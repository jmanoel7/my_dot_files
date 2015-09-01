mkdir ubuntu
rm -rf tails/
l.
sudo fdisk /dev/sdb
sudo partprobe /dev/sdb
sudo partprobe /dev/sdb1
sudo partprobe /dev/sdb
sudo partprobe /dev/sdb1
sudo partprobe /dev/sdb
sudo mkdosfs -F 32 -n LINUXMINT /dev/sdb1
sudo sync
unetbootin.sh 
mount
umount /dev/sdc1 
sudo fdisk /dev/sdc
sudo mkdosfs -F 32 -n JOAO_MANOEL /dev/sdc1
s sync
cd ..
cd antergos/
l.
md5sum -c antergos-2015.07.01-x86_64.iso.md5 
sudo ddrescue -d -D --force 
gpg2 --verify antergos-2015.07.01-x86_64.iso.sig antergos-2015.07.01-x86_64.iso
sudo ddrescue -d -D --force antergos-2015.07.01-x86_64.iso /dev/sdc
s sync
cd GNU_Linux/linuxmint/17.2/
ls
file casper-rw 
cp casper-rw /media/joaomanoel/LINUXMINT/
s sync
cat ~/.themes/Firefox\ Fix/README 
cd ..
l.
sudo fdisk -l
sudo fdisk /dev/sdb
sudo partx 
sudo partx /dev/sdb
sudo partprobe /dev/sdb
sudo mkdosfs -v -F 32 -f 2 -n JOAO_MANOEL /dev/sdb1
sudo syn
sudo sync
clear
ls
df -h
mount
vim /media/joaomanoel/LINUXMINT/syslinux.cfg 
tamanho.sh 
tamanho.sh /media/joaomanoel/LINUXMINT/casper-rw -m
tamanho.sh ./casper-rw -m
tamanho.sh ./casper-rw m
tamanho.sh ./casper-rw -m
tamanho.sh ./casper-rw -
tamanho.sh ./casper-rw -h
du h ./casper-rw 
l. ./casper-rw 
du -h ./casper-rw 
du --block-size=1G ./casper-rw 
du --block-size=1GD ./casper-rw 
du --block-size=1MD ./casper-rw 
for i in /media/joaomanoel/LINUXMINT/casper-rw; do clear; ll $i; sleep 2; done
for ((;;)); do clear; ll /media/joaomanoel/LINUXMINT/casper-rw; sleep 2; done
unzip 512mb.zip -d /media/joaomanoel/LINUXMINT/
sudo sync
sync
cat R
cat readme.txt 
cd ..
cd linuxmint/
cd 17.2/
file casper-rw 
file /media/joaomanoel/LINUXMINT/casper-rw 
rm /media/joaomanoel/LINUXMINT/casper-rw
cp casper-rw /media/joaomanoel/LINUXMINT/
sync
umount /media/joaomanoel/LINUXMINT/
l.
cd Área\ de\ Trabalho/
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i *.desktop
cd
cd .local/share/applications
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i *.desktop
cat /etc/issue
cat /etc/issue.net
cat /etc/issue
cat /etc/lsb-release
echo $PATH
shellcheck 
mv ../joaomanoel/.rvm .
mv ../joaomanoel/.receitanet/ .
sudo mv ../joaomanoel Backup/joaomanoel.bak.debian.0
ll ..
sudoedit /etc/sudoers
sudo passwd jmanoel7 
AGI
SDU
sudoedit /etc/apt/sources.list
sudoedit /etc/apt/sources.list.d/getdeb.list 
sudoedit /etc/apt/sources.list.d/official-package-repositories.list 
sudoedit /etc/apt/sources.list.d/official-source-repositories.list 
cd src/b43/
./b43-fwcutter-018-install.sh 
./b43-install.sh 
./unload_modules_wifi.sh 
sudo ./unload_modules_wifi.sh 
sudo cp b43.conf /etc/modprobe.d/
sudo cp wireless.conf /etc/modules-load.d/
sudo depmod -a
modprobe b43
s modprobe b43
SDU
. ~/.profile 
cd
. .bashrc
sudoedit /etc/NetworkManager/NetworkManager.conf 
sudo initctl stop network-manager 
sudo initctl start network-manager 
SDU
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper ^python2.7.*$ python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper ^python2\.7.*$ python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper python2.7 python2.7-dbg python2.7-dev python2.7-doc python2.7-examples python2.7-minimal python-pip python-pip-whl python-setupdocs python-setuptools python-setuptools-doc python-setuptools-git python-setuptools-whl python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme apt-file git git-sh git-gui git-doc git-man bzr bzr-doc bzrtools mercurial mercurial-buildpackage mercurial-common mercurial-git mercurial-keyring subversion subversion-tools cvs cvs-buildpackage cvsutils cvs-autoreleasedeb git-buildpackage 
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper python2.7 python2.7-dbg python2.7-dev python2.7-doc python2.7-examples python2.7-minimal python-pip python-pip-whl python-setupdocs python-setuptools python-setuptools-doc python-setuptools-git python-setuptools-whl python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme apt-file git git-sh git-gui git-doc git-man bzr bzr-doc bzrtools mercurial mercurial-buildpackage mercurial-common mercurial-git mercurial-keyring subversion subversion-tools cvs cvs-buildpackage cvsutils cvs-autoreleasedeb git-buildpackage icedtea-7-plugin 
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper python2.7 python2.7-dbg python2.7-dev python2.7-doc python2.7-examples python2.7-minimal python-pip python-pip-whl python-setupdocs python-setuptools python-setuptools-doc python-setuptools-git python-setuptools-whl python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme apt-file git git-sh git-gui git-doc git-man bzr bzr-doc bzrtools mercurial mercurial-buildpackage mercurial-common mercurial-git mercurial-keyring subversion subversion-tools cvs cvs-buildpackage cvsutils cvs-autoreleasedeb git-buildpackage icedtea-7-jre-jamvm icedtea-7-plugin
sudo apt-get install caja caja-common caja-dropbox caja-extensions-common caja-folder-color-switcher caja-gksu caja-image-converter caja-open-terminal caja-sendto caja-share caja-wallpaper python2.7 python2.7-dbg python2.7-dev python2.7-doc python2.7-examples python2.7-minimal python-pip python-pip-whl python-setupdocs python-setuptools python-setuptools-doc python-setuptools-git python-setuptools-whl python-wxglade python-wxgtk2.8 python-wxmpl python-wxtools python-wxversion wx2.8-doc wx2.8-examples wx2.8-headers wx2.8-i18n ^libwx.*2.8.*$ libwxsqlite3-2.8-0 libwxsqlite3-2.8-dev libwxsvg0 libwxsvg-dev gnome-brave-icon-theme shiki-brave-theme shiki-colors shiki-colors-metacity-theme shiki-dust-theme shiki-human-theme shiki-illustrious-theme shiki-noble-theme shiki-wine-theme shiki-wise-theme apt-file git git-sh git-gui git-doc git-man bzr bzr-doc bzrtools mercurial mercurial-buildpackage mercurial-common mercurial-git mercurial-keyring subversion subversion-tools cvs cvs-buildpackage cvsutils cvs-autoreleasedeb git-buildpackage icedtea-7-jre-jamvm icedtea-7-plugin ^openjdk-7-.*$
AGC
AGAC
AGI
cd .local/share/applications
cat firefox-dev.desktop 
firefox-dev
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i .gtk-bookmarks 
cat .gtk-bookmarks
l. .gtk-bookmarks
mv .gtk-bookmarks Meus_Projetos/my_dot_files/.gtk-bookmarks 
ln -s Meus_Projetos/my_dot_files/.gtk-bookmarks
l. .gtk-bookmarks 
cat .gtk-bookmarks
cd .config/gtk-3.0
l.
cat bookmarks 
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i bookmarks 
cat bookmarks 
cd .config/autostart
l.
cat autostart-mate.desktop 
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i *.desktop
l.
cat autostart-mate.desktop 
cat /home/jmanoel7/bin/autostart-mate.sh 
echo $PATH
ls
l.
cat clipit-startup.desktop 
cat autostart-mate.desktop 
cat clipit-startup.desktop 
cat dropbox.desktop 
sudo ln -s caja-dropbox /usr/bin/dropbox
l. /usr/bin/dropbox
l.
cat guake.desktop 
cat hplip-systray.desktop 
cat start-compiz.desktop 
cat teamviewer-teamviewer10.desktop 
l.
cat ~/bin/autostart-mate.sh 
sudo apt-get install clipit guake terminator hplip hplip-data hplip-doc hplip-gui
rm ~/bin/terminal.sh 
cat ~/bin/terminator.sh 
sudo ln -s /home/jmanoel7/bin/terminator.sh /usr/local/bin/
l. /usr/local/bin/
sudo update-alternatives --config x-terminal-emulator 
sudo update-alternatives --confi x-terminal-emulator 
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/terminator.sh 100
sudo update-alternatives --config x-terminal-emulator 
x-terminal-emulator 
x-terminal-emulator -e 'cd /home/'
x-terminal-emulator -e cd /home/
x-terminal-emulator -e cd /home
x-terminal-emulator -e "cd /home"
x-terminal-emulator -e cd
man x-terminal-emulator
sudo update-alternatives --config x-terminal-emulator 
man x-terminal-emulator
sudo update-alternatives --config x-terminal-emulator 
x-terminal-emulator -x "cd /home"
x-terminal-emulator -e "cd /home"
x-terminal-emulator -e ls
man terminator
terminator -e cd /home
terminator -e cd
cd
cat bin/terminator.sh 
terminator
cat ~/.local/share/applications/terminator.desktop 
sudo apt-get install vim vim-common vim-doc vim-gtk vim-gui-common vim-nox vim-runtime vim-tiny
AGC
AGAC
AGI
dropbox
dropbox start -i
ps axw | grep drop
ps axw | grep dropbox
clear
ps axw | grep dropbox
dropbox.py status
dropbox status
kill -9 2604
kill -9 2929
ps axw | grep dropbox
dropbox start -i
dropbox start
mv .dropbox-dist/ .dropbox-dist.bak
ps axw | grep dropbox
kill -9 3090
kill -9 3246
kill -9 3461
ps axw | grep dropbox
caja-dropbox start -i
ps axw | grep dropbox
rm .komodoedit/ -rf
rm .config/autostart/dropbox.desktop 
cp /usr/share/applications/caja-dropbox.desktop .config/autostart/
cd .config/autostart/
cat caja-dropbox.desktop 
sudo rm /usr/bin/dropbox 
sudo ln -s /home/jmanoel7/bin/dropbox.py /usr/bin/dropbox
l. /usr/bin/dropbox
ps axw | grep dropbox
killall -9 dropbox 
ps axw | grep dropbox
killall -9 caja-dropbox 
ps axw | grep dropbox
dropbox.py start -i
mv .dropbox-dist.bak/ .dropbox-dist
dropbox.py start -i
dropbox.py status
ps axw | grep dropbox
sudo apt-get purge caja-dropbox 
sudo rm /usr/bin/dropbox 
cd
sudo apt-get install cabal-install cabal-debian 
sudo apt-get install cabal-install cabal-debian ghc ghc-doc ghc-dynamic ghc-haddock ghc-mod ghc-prof ghc-testsuite
sudo apt-get install cabal-install cabal-debian ghc ghc-doc ghc-dynamic ghc-haddock ghc-prof ghc-testsuite
echo $PATH 
echo $PATH | grep cabal
apt-cache search cask
sudo apt-file update 
cd
cat .xinitrc 
l. .xinitrc 
mv ~/Downloads/dropbox_2015.02.12_amd64.deb src/dropbox/
l.
cd
cd Meus_Projetos/my_shell_scripts/
git pull
cat bin/i3.sh 
cat bin/terminator.sh 
cat bin/mate-session.sh 
l.
cat bin/terminator.sh 
git add .
git status
cd ..
mv my_shell_scripts/ my_shell_scripts.bak
cd my_shell_scripts.bak/
git add .
git add --ignore-removal bin/autostart-razorqt.sh
git add .
git add --ignore-removal bin/autostart-razorqt.sh
git add --all bin/autostart-razorqt.sh
git add .
git add --ignore-removal bin/autostart-xfce.sh
git add .
git add --all bin/autostart-xfce.sh
git add .
git add --all .
git add --ignore-removal .
git add .
git commit -a
git push 
git pull
git push 
git pull
git commit -a
git push 
cd ..
cd my_dot_files/
git add .
git add --ignore-removal .
git add --all .
git add .
git commit -a
git push
git pull
git push
git pull
git push
cat .xinitrc__LIGHTDM__ 
l.
git commit -a
git push 
cd ..
mv my_dot_files/ my_dot_files.bak/
l. my_*
echo my_*
ç;
l.
cd
cd Meus_Projetos/
ln -s my_shell_scripts.bak my_shell_scripts
ln -s my_dot_files.bak/ my_dot_files
echo my*
l. my*
l. my_*
ln -s my_dot_files.bak my_dot_files
ln -fs my_dot_files.bak my_dot_files
l. my_dot_files
rm my_dot_files
ln -fs my_dot_files.bak my_dot_files
l. my_dot_files
l. my_shell_scripts
cd 
cd
cd Meus_Projetos/
mv sistec-download sistec-download.bak
git clone https://github.com/jmanoel7/sistec-download.git
cd sistec-download
l. sistec_download.py 
head -1 sistec_download.py
chmod a+x sistec_download.py
l. sistec_download.py
./sistec_download.py 
vi sistec_lib.py
./sistec_download.py 
cat out.html 
file out.html 
mv out.html out.html.gz
gunzip out.html.gz
file out.html 
cat out.html 
firefox-dev out.html 
vi sistec_lib.py
rm out.html 
./sistec_download.py 
cat out.html 
vi sistec_lib.py
./sistec_download.py 
git add .
git commit -a
rm out.html 
git add .
git add --all .
git add .
git commit --all
cat sistec_download.py 
git push 
ps axw | grep dropbox
dropbox status
killall -9 dropbox 
sudo apt-get purge dropbox 
find /var/ -name 'jmanoel7'
s find /var/ -name 'jmanoel7'
l. /var/lib/sudo/
s ls -la /var/lib/sudo/jmanoel7
apt-cache show caja-dropbox 
cd src/dropbox/
l.
rm dropbox.py 
rm nautilus-dropbox-1.4.0.tar.bz2 
rm dropbox_2015.02.12_amd64.deb 
l.
cat how-to-install-from-command-line.txt 
l.
cat how-to-compile-from-source.txt 
cat init-dropboxd.sh 
rm ~/bin/dropbox.py 
l. /usr/bin/dro*
l.
rm ~/bin/init-dropboxd.sh 
l.
cat init-dropboxd.sh 
cat install-dropboxd.sh 
rm ~/bin/install-dropboxd.sh 
l.
cat init-dropboxd.sh 
vi curl-files.sg
cp ~/Modelos/shell-script.sh dropbox-curl.sh
vi dropbox-curl.sh 
l.
sudo apt-get install exuberant-ctags 
AGC
AGAC
AGI
l.
rm dropbox_2015.02.12_amd64.deb 
l.
mv dropbox-curl.sh curl-dropbox.sh 
l.
cat install-dropboxd.sh 
l.
./curl-dropbox.sh 
l.
file *.deb
file nautilus-dropbox-1.4.0.tar.bz2 
cat nautilus-dropbox-1.4.0.tar.bz2 
cat ./curl-dropbox.sh 
curl -o nautilus-dropbox-1.4.0.tar.bz2 --location  'https://www.dropbox.com/download?dl=packages/nautilus-dropbox-1.4.0.tar.bz2'
file nautilus-dropbox-1.4.0.tar.bz2 
l.
file dropbox.py 
cat dropbox.py 
vi dropbox-curl.sh 
vim curl-dropbox.sh 
rm dropbox* nautilus-dropbox-1.4.0.tar.bz2 
l.
./curl-dropbox.sh 
file dropbox* nautilus-dropbox-1.4.0.tar.bz2 
l.
chmod a+x dropbox.py 
l.
sudo dpkg -i dropbox_2015.02.12_amd64.deb 
sudo apt-get install caja-dropbox 
cmp /usr/share/applications/caja-dropbox.desktop ~/.config/autostart/caja-dropbox.desktop 
l.
caja-dropbox start -i
dropbox start -i
cd
mv .dropbox-dist .dropbox-dist.bak
dropbox start -i
dropbox start
ps axw | grep drop
killall -9 dropbox 
ps axw | grep drop
ps axw | grep dropbox
sudo apt-get purge caja-dropbox 
rm .config/autostart/caja-dropbox.desktop 
cp /usr/share/applications/dropbox.desktop .config/autostart/
rm -rf .dropbox-dist
dropbox start -i
cd src/dropbox/
l.
cp curl-dropbox.sh init-dropboxd.sh install-dropboxd.sh dropbox.py ~/bin/
cd 
cd Meus_Projetos/my_shell_scripts
git add .
git commit -a
git push 
cd ..
cd
clear
ls
mv etc.tar.xz Backup/
ls
l. Backup
cd 
clear
l
cd Meus_Projetos/my_dot_files
grep yapf .vimrc_windows 
grep isort .vimrc_windows 
git add .
git add -a .
git add --all .
git add .
git commit -a
l. my_dot_files.bak 
rm my_dot_files.bak 
git add .
git add --all .
git commit -a
l. .config_autostart/
git commit -a
git push
ps axw | grep termi
cat ~/.local/share/applications/terminator.desktop 
l. /home/jmanoel7/bin/terminator.sh 
chmod a+x bin/*.sh
chmod a+x bin/*.py
terminator 
l. target
echo $DEBEMAIL 
echo $DEBFULLNAME 
l. ../../dropbox/
mate-about
cd src/
mkdir mate/
cd mate/
l
l. caja-dropbox-caja-dropbox-1.8.0.tar.gz 
mv ~/Downloads/caja-dropbox-caja-dropbox-1.10.0.tar.gz .
tar xzvf caja-dropbox-caja-dropbox-1.10.0.tar.gz 
cd caja-dropbox-caja-dropbox-1.10.0/
l.
./autogen.sh 
sudo apt-get install libcaja-extension1 libcaja-extension-dev
AGAC
AGC
AGI
./autogen.sh 
./configure --prefix=/usr
make
cat docgen.py 
make DESTDIR="${PWD}/build_deb" install
cd build_deb/
l.
mkdir DEBIAN
cd DEBIAN/
l.
sudo apt-get install equivs devscripts
sudo apt-get install equivs devscripts dh-make dh-make-perl dh-make-drupal dh-make-php
equivs-control 
l.
equivs-control control
vi control 
apt-cache show caja-dropbox >> control 
vi control 
apt-cache show *
apt-cache show dropbox 
vi control 
cat control 
cd ..
l.
l. DEBIAN/
cd ..
dpkg-deb -h
dpkg-deb --help
cat build_deb/DEBIAN/control 
dpkg-deb --hel
cat build_deb/DEBIAN/control 
dpkg-deb -b ./build_deb/ ./caja-dropbox_1.10.0-1_amd64.deb
vi build_deb/DEBIAN/control 
dpkg-deb -b ./build_deb/ ./caja-dropbox_1.10.0-1_amd64.deb
sudo dpkg -i ./caja-dropbox_1.10.0-1_amd64.deb 
cd
cat /usr/share/applications/caja-dropbox.desktop 
cd src/mate/caja-dropbox-caja-dropbox-1.10.0/build_deb/usr/
l.
cd share/
l.
cd ../bin/
l.
ln -s caja-dropbox dropbox 
l.
cd ..
cd share/
cd ../bin/
rm dropbox 
mv caja-dropbox dropbox 
l.
cd ..
cd share/applications/
cat caja-dropbox.desktop 
cd ..
cd bin/
mv dropbox caja-dropbox 
l.
cd
cd src/mate/caja-dropbox-caja-dropbox-1.10.0/
mv caja-dropbox_1.10.0-1_amd64.deb ..
l.
cd ..
ls
rm -rf caja-dropbox-caja-dropbox-1.10.0/
l. caja-dropbox*
cd
clear
cd
caja-dropbox start -i
caja-dropbox 
mv .dropbox-dist.bak/ .dropbox-dist
caja-dropbox start -i
mv .dropbox-dist/ .dropbox-dist.bak
mv .dropbox .dropbox.bak
caja-dropbox start -i
cp /usr/share/applications/caja-dropbox.desktop .config/autostart/
cd .config/autostart/
l.
cat caja-dropbox.desktop 
cd
cd Meus_Projetos/my_dot_files
git add .
git commit -a
git push
clear
ls
clear
cd ..
less README.md 
SDU
sudo dpkg --set-selections
sudo apt-get dist-upgrade 
AGC
AGAC
AGI
cd
cd .vim/bundle/
rm YouCompleteMe/
rm YouCompleteMe/ -rf
grep YouCom ~/.vimrc 
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe/
grep recursive README.md 
git submodule update --init --recursive
grep 'install.sh' README.md 
grep apt README.md
sudo apt-get install cmake cmake-curses-gui cmake-data cmake-doc cmake-qt-gui
grep 'install.sh' README.md 
less README.md 
sudo apt-get install ^clang.*3.6.*$
sudo apt-get install ^clang.*3.6.*$ ^libboost.*$
sudo apt-get install ^clang.*3.6.*$ ^libboost.*1.55.*$
grep 'install.sh' README.md 
./install.sh --clang-completer --system-libclang --system-boost --omnisharp-completer
less README.md 
grep 'install.sh' README.md 
./install.sh --clang-completer --omnisharp-completer
cd
clear
vim
gvim
l. Meus_Projetos
cd Meus_Projetos/
l.
cd my_dot_files
l.
l. -t
l. .config_autostart/
cd .config_autostart/
l.
cat autostart-mate.desktop 
cat autostart-mate\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop 
cat autostart-mate.desktop 
rm autostart-mate\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop 
l.
cat start-compiz\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop 
diff start-compiz.desktop start-compiz\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop 
mv start-compiz\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop start-compiz.desktop
l. start-compiz.desktop 
cat start-compiz.desktop 
grep joaomanoel *
sed 's,/home/joaomanoel,/home/jmanoel7,g' -i autostart-mate.desktop 
grep joaomanoel *
cat autostart-mate.desktop 
cat /home/jmanoel7/bin/autostart-mate.sh
cd
cd Meus_Projetos/my_dot_files
l. -t
cd .local_share_applications/
l.
grep joaomanoel *
grep jmanoel7 *
for i in "* (Cópia em conflito de noteship 2015-08-18).desktop"; do echo $i; done
for i in "* (Cópia em conflito de noteship 2015-08-18).desktop"; do echo -e "$i \n"; done
for i in "* (Cópia em conflito de noteship 2015-08-18).desktop"; do echo -e "${i}\n"; done
for i in "* (Cópia em conflito de noteship 2015-08-18).desktop"; do echo $i; done
for i in *\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop; do echo $i; done
for i in *\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).desktop; do mv "$i" "$(echo "$i" | sed 's/^\(.\+\) (Cópia em conflito de noteship 2015-08-18)\(\.desktop\)$/\1\2/')" -i; done
y
l.
rm wine-extension-*
l.
cd ..
l. -t
cd .config_gtk-2.0/
l.
cat  gtkfilechooser\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).ini 
cat gtkfilechooser.ini 
rm gtkfilechooser\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).ini 
l.
cat gtkfilechooser.ini 
cd ..
cd .config_gtk-3.0/
l.
cat bookmarks
cat bookmarks\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) 
mv bookmarks\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) bookmarks
cat bookmarks 
cd ..
l. -t
l. .themes/
l. .themes/ashos-dark/
l. .themes/ashos-dark/xfwm4/
l.
l. .bash_history 
l. ~/.bash_history 
rm \ \(Cópia\ em\ conflito\ de\ desktop-sti\ 2015-08-02\).bash_history 
l.
mv \ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).bash_history .bash_history 
cat \ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).gtk-bookmarks 
cat .gtk-bookmarks 
mv \ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).gtk-bookmarks .gtk-bookmarks 
l.
diff \ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).vimrc_windows .vimrc_windows 
mv \ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).vimrc_windows .vimrc_windows 
l.
find . -name '*Cópia*'
cd .git/
diff index\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) index
mv index\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) index
mv FETCH_HEAD\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) FETCH_HEAD 
mv ORIG_HEAD\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) ORIG_HEAD
mv COMMIT_EDITMSG\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) COMMIT_EDITMSG
l.
cd ..
find . -name '*Cópia*'
cd .git/refs/remotes/origin/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
cd heads/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
cd logs/refs/remotes/origin/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd  ..
cd heads/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
mv HEAD\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) HEAD
cd ..
find . -name '*Cópia*'
git add .
git add --all .
git commit -a
cp /usr/share/applications/caja-dropbox.desktop .config_autostart/
cd .config_autostart/
rm dropbox.desktop 
l.
cat autostart-mate.desktop 
grep joaomanoel *

git add --all .
git commit -a
git push 
l. .config_autostart/
cd
echo 'wine-extension-xml (Cópia em conflito de noteship 2015-08-18).desktop' | sed 's/^\(.\+\) (Cópia em conflito de noteship 2015-08-18)\.desktop$/\1/'
echo 'wine-extension-xml (Cópia em conflito de noteship 2015-08-18).desktop' | sed 's/^\(.\+\) (Cópia em conflito de noteship 2015-08-18)\(\.desktop\)$/\1\2/'
cd Meus_Projetos/
rm my_shell_scripts
mv my_shell_scripts.bak/ ~/Backup/my_shell_scripts.bak.0
git clone https://github.com/jmanoel7/my_shell_scripts.git
l. ~/bin/*.sh
chmod a+x ~/bin/*.sh
chmod a+x ~/bin/*.py
cd my_shell_scripts/
git add --all .
git commit -a
l. bin/*.awk
cat bin/lower.sh 
git push 
ls
cd build/
l.
mkdir cmake
cd cmake/
cmake ../.. -DCMAKE_INSTALL_PREFIX='/usr'
make
ls
rm -rf *
cmake ../.. -DCMAKE_INSTALL_PREFIX=/usr
make
l. /home/jmanoel7/Documentos/Programas/gnu_linux/desenvolvimento/tidy-html5/build/documentation/tidy1.xsl
find ../../ -name documentation/tidy1.xsl
find ../../ -name 'tidy1.xsl'
cd ..
ln -s ../documentation .
cd cmake/
rm -rf *
l.
cmake ../.. -DCMAKE_INSTALL_PREFIX=/usr
make
ls
make DESTDIR="$PWD/debpkg" install
l. debpkg/
l. debpkg/usr/
l. debpkg/usr/bin/
cd debpkg/
l.
mv usr/bin/tidy usr/bin/tidy5
l.
l. usr/
l. usr/include/
l. usr/lib/
l. /usr/lib/libtidy.so 
sudo dpkg -i /home/jmanoel7/Downloads/tidy-5.0.0-64bit.deb 
sudo apt-get purge tidy tidy-doc 
sudo dpkg -i /home/jmanoel7/Downloads/tidy-5.0.0-64bit.deb 
sudo apt-get purge libtidy-0.99-0 
sudo dpkg -i /home/jmanoel7/Downloads/tidy-5.0.0-64bit.deb 
alias
alias | grep pip
P2I python-utidylib
P2I -utidylib
sudo pip2 install --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile pip
sudo pip2 install --force-reinstall --upgrade --no-use-wheel --compile pip
P2I python-utidylib
P2I utidylib
P2I --allow-external python-utidylib
sudo pip2 --allow-external install --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile python-utidylib
sudo pip2 install --allow-external --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile python-utidylib
sudo pip2 install --allow-external --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile utidylib
sudo pip2 install --allow-external --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile pycurl2
sudo pip2 install --force-reinstall --upgrade --no-cache-dir --no-use-wheel --compile pycurl
sudo pip2 install --force-reinstall --upgrade pycurl
sudo apt-get install libcurl-dev
sudo apt-get install libcurl4-openssl-dev 
sudo apt-get install libcurl4-openssl-dev  libssl-doc
sudo pip2 install --force-reinstall --upgrade pycurl
sudo pip2 install --force-reinstall --upgrade pycurl2
alias
sudo pip2 install --force-reinstall --upgrade pip
l.
l. usr/bin/
cd usr/bin/
l.
mv tidy5 tidy
ln -s tidy tidy5
l.
cd
cd 
cd src/desenvolvimento/tidy-html5/
l.
rm -rf build/
git pull
cat README.
cat README.md 
ls
less README.md 
firefox-dev README.html 
l. /usr/bin/tidy 
/usr/bin/tidy --version
du -h .
mv ~/Downloads/tidy-5.0.0-64bit.deb .
l.
cd
ccd
cd
clear
l.
P2I install pyopenssl ndg-httpsclient pyasn1
P2I pyopenssl ndg-httpsclient pyasn1
P2I pycurl
mv astah-community_7.0.0.846701-0_all.deb ~/src/astah/
mv Astah\ Quick\ Start\ Tutorial\ \(HD\).mp4 ~/src/astah/
cd ~/src/astah/
l.
rm astah-community_6.9.0.b4c6e9-0_all.deb 
l.
mv ~/Downloads/astah-anycode-plugin-1.3.2_GA.jar .
rm astah-anycode-plugin-1.3.0_GA.jar 
l.
sudo dpkg -i astah-community_7.0.0.846701-0_all.deb 
l.
cd
cmp /usr/share/applications/astah_community.desktop .local/share/applications/astah_community.desktop 
diff /usr/share/applications/astah_community.desktop .local/share/applications/astah_community.desktop 
rm .local/share/applications/astah_community.desktop
astah-com 
cd
clear
l
cd
cd .local/eclipse/
vi eclipse.ini 
cd Meus_Projetos/my_dot_files
cd
mv .vim/bundle/vim-utils/ Meus_Projetos/vim-utils
ln -s Meus_Projetos/vim-utils .vim/bundle/vim-utils/
ln -s Meus_Projetos/vim-utils .vim/bundle/vim-utils
l. .vim/bundle/vim-utils
ln -fs ../../Meus_Projetos/vim-utils .vim/bundle/vim-utils
l. .vim/bundle/vim-utils
l. .vim/bundle/vim-utils/
mv .vim/bundle/vim-colors Meus_Projetos/
mv .vim/bundle/vim-games Meus_Projetos/
ln -fs ../../Meus_Projetos/vim-games .vim/bundle/
ln -fs ../../Meus_Projetos/vim-colors .vim/bundle/
l. .vim/bundle/
cd .vim/bundle/vim-utils
git status
git show master 
cat README.md 
cd ftplugin/
l.
vim html-entities.vim
cd ..
cd vim-utils
l. ..
l. ../
pwd
l. ../vim-games
l. ../vim-colors
cat ../vim-colors/README.md 
cat ../vim-games/README.md 
git add .
git commit -a
git push
cd ..
cd
gvim
cd .vim/bundle/
l.
cd vim-utils
l.
l. plugin/
mv ftplugin/html-entities.vim plugin/
apt-cache search html-parser
sudo apt-get install perl perl-base perl-cross-debian perlconsole perl-tk perltidy perlqt-dev perlprimer perlprimer-doc perlbrew perlbal libhtml-parser-perl libhtml-stripscripts-parser-perl
gvim
cat plugin/html-entities.vim 
nano plugin/html-entities.vim 
cat plugin/html-entities.vim 
gvim
nano plugin/html-entities.vim 
gvim
find /home/jmanoel7/Downloads/ -name "*.html"
nano plugin/html-entities.vim 
gvim /home/jmanoel7/Downloads/PayPal.html
tidy 
gvim /home/jmanoel7/Downloads/PayPal.html
git add .
git add --all .
git commit -a
git push
cd 
cd Downloads/
gvim htmlspecialchars.vba 
l. ~/.vim/
l. ~/.vim/doc/
l. ~/.vim/ftplugin/
l. -t ~/.vim/
l. -t ~/.vim/doc/
l. -t ~/.vim/
l. -t ~/.vim/ftplugin/
l. -t ~/.vim/ftplugin/html/
gvim PayPal
gvim PayPal.html 
rm -rf ~/.vim/doc/
rm -rf ~/.vim/ftplugin
l. -t ~/.vim/
rm -rf ~/.vim/.VimballRecord 
l. -t ~/.vim/
l. astah-community_7.0.0.846701-0_all.deb atom-amd64
rm atom-amd64.deb*
mv atom-amd64\(1\).deb atom-amd64.deb
l. ~/debs
l. ~/debs/
l. ~/debs/atom/
cmp atom-amd64.deb ~/debs/atom/atom-amd64.deb 
mv atom-amd64.deb 
cmp atom-amd64.deb ~/debs/atom/atom-amd64.deb 
mv atom-amd64.deb ~/debs/atom/atom-amd64.deb
l. ~/debs/
l. ~/debs/google/
l.
l. ~/debs/
l. ~/debs/lightdm-webkit-greeter/
cd 
cd debs/
cd google/
l.
sudo dpkg -i google-*.deb ../atom/atom-amd64.deb 
sudo update-alternatives --config x-www-browser 
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /home/jmanoel7/.local/bin/firefox-dev 300
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /home/jmanoel7/.local/bin/firefox-stable 250
sudo update-alternatives --config x-www-browser 
sudo update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser /home/jmanoel7/.local/bin/firefox-dev 300
sudo update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser /home/jmanoel7/.local/bin/firefox-stable 250
sudo update-alternatives --config x-www-browser 
sudo update-alternatives --config gnome-www-browser 
l. /etc/apt/sources.list.d/
sudoedit /etc/apt/sources.list.d/official-package-repositories.list 
grep backports /etc/apt/sources.list.d/official-package-repositories.list
grep backports /etc/apt/sources.list.d/official-package-repositories.list | sudo tee -a /etc/apt/sources.list.d/official-source-repositories.list 
se /etc/apt/sources.list.d/official-source-repositories.list
SDU
sudo apt-get purge libtidy
sudo dpkg -a --configure 
sudo apt-get purge tidy
sudo dpkg -i /home/jmanoel7/src/desenvolvimento/tidy-html5/tidy-5.0.0-64bit.deb 
AGC
AGAC
sudo dpkg --set-selections 
SDU
kega-fusion 
l. ~/.local/share/applications/kega-fusion.desktop 
cmp /usr/share/applications/kega-fusion.desktop ~/.local/share/applications/kega-fusion.desktop 
diff /usr/share/applications/kega-fusion.desktop ~/.local/share/applications/kega-fusion.desktop 
vi ~/.local/share/applications/kega-fusion.desktop
diff /usr/share/applications/kega-fusion.desktop ~/.local/share/applications/kega-fusion.desktop 
vi ~/.local/share/applications/kega-fusion.desktop
cp ~/.local/share/applications/kega-fusion.desktop ~/Área\ de\ Trabalho/
cd
clear
cd
cd src/
mv astah/ desenvolvimento/
cd
cd Jogos
l.
cd kega-fusion/
l.
cd kega-fusion/
l.
pwd
l.
sudo dpkg -i kega-fusion_3.63-2_i386.deb 
cd
clear
cd
clear
SDU
cd .vim/bundle/
cd vim-games
git add .
git commit -a
git pull
l.
l. plugin/
cd ..
l.
cd vim-utils
git pull 
cd ..
cd vim-colors
git pull
cd
clear
l.
cd Meus_Projetos/
cd sistec-download
l.
head -4 sistec_download.py 
l. /usr/bin/python
l. -t
rm "*.pyc"
l.
rm *.pyc
l.
mv sistec_lib.py sistec_lib.py.bak
mv sistec_lib\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).py sistec_lib.py
l. -t
l. -t sistec_lib.py*
mv sistec_download.py sistec_download.py.bak
mv sistec_download\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\).py sistec_download.py
l.
find . -name "*Cópia*"
cd .git/
l. *Cópia*
mv COMMIT_EDITMSG\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) COMMIT_EDITMSG
mv index\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) index
mv packed-refs\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) packed-refs
l. *Cópia*
find . -name "*Cópia*"
cd refs/remotes/origin/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
cd heads/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
cd logs/refs/remotes/origin/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
mv HEAD\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) HEAD
cd ..
cd heads/
mv master\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) master
cd ..
mv HEAD\ \(Cópia\ em\ conflito\ de\ noteship\ 2015-08-18\) HEAD
cd ..
find . -name "*Cópia*"
cd ..
find . -name "*Cópia*"
l.
./sistec_download.py 
cd
grep execute ~/Meus_Projetos/my_dot_files/.vimrc_windows 
P2I isort yapf
cd Meus_Projetos/sistec-download
gvim sistec_download.py
P2I jedi
gvim sistec_lib.py
curl 'http://sistec.mec.gov.br/gridciclo/turmas' -H 'Host: sistec.mec.gov.br' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:42.0) Gecko/20100101 Firefox/42.0' -H 'Accept: application/json' -H 'Accept-Language: pt-BR,pt;q=0.8,en-US;q=0.5,en;q=0.3' --compressed -H 'DNT: 1' -H 'X-Requested-With: XMLHttpRequest' -H 'X-Request: JSON' -H 'Content-Type: application/x-www-form-urlencoded; charset=utf-8' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'Referer: http://sistec.mec.gov.br/index/index' -H 'Cookie: _ga=GA1.3.1681186009.1429670106; ZDEDebuggerPresent=php,phtml,php3; PHPSESSID=5381bec23bc5299d195c7e3499538ca4; perfil_cookie=ASSESSOR+DA+UNIDADE+DE+ENSINO; co_usuario=1494081; sistecNoticias=0' -H 'Connection: keep-alive' -H 'Content-Length: 0' -o sistec.json
grep -r req
ls
cat nosetests.json 
file tabela-sql-sistec.
file tabela-sql-sistec.sql 
cat tabela-sql-sistec.sql 
cmp OEXT.zip OEXT.zip\(1\).rar 
cmp OEXT.zip.rar OEXT.zip\(1\).rar 
rm OEXT.zip\(1\).rar
cmp MUNDISAU.zip\(1\).rar MUNDISAU.zip.rar 
rm MUNDISAU.zip\(1\).rar
ls
cmp MUNDISAU.zip.torrent Jurassic_World_2015/MUNDISAU.zip.torrent 
rm MUNDISAU.zip.torrent
cmp OEXT.zip.torrent O_Exterminador_do_Futuro_Genesis/OEXTDUB.zip.torrent 
cd Meus_Projetos/sistec-download
l.
mv ../sistec-download.bak.1/sistec.json .
l.
chmod a+x sistec_download.py 
head -2 sistec_download.py
l.
gvim sistec_lib.py 
l. ~/bin/*sistec*
l. ~/bin/*req*
l.
cat README.md 
l.
vi .gitignore 
l.
l. *.sql
l.
ls
vi .gitignore 
l.
ls
grep pip -r
grep pip -r ~/bin/
grep pip -r .
l.
l. ../
grep -r sistec ~/bin/
grep sistec -r ~/bin/
grep pip -r ~/bin/
vi sistec-download-sql.sh 
vi sistec-download-certificado.sh 
history | less
cd ..
cd
P2I JsonPare
jp
cd
cd Meus_Projetos/sistec-download
l.
cat sistec.json 
cat sistec.json | jp dados
cat sistec.json | jp dados | head
cat sistec.json | jp dados.1
cat sistec.json | jp dados.0
cat sistec.json | json dados.0
cat sistec.json | jp dados.0
cat sistec.json | jp dados.0.1
cat sistec.json | jp dados.0.Status
cat sistec.json | jp dados.0.status
cat sistec.json | jp dados.0.Status
cat sistec.json | json dados.0.Status
cat sistec.json | jp dados.0.Status
cat sistec.json | jp dados.0."Status"
cat sistec.json | jp dados.0.'Status'
cat sistec.json | jp 'dados'.0.'Status'
cat sistec.json | jp 'dados'.'0'.'Status'
cat sistec.json | jp dados.0
cat sistec.json | jp dados.0.'Nome do Ciclo'
cat sistec.json | json dados.0.'Nome do Ciclo'
cat sistec.json | json dados.0.Nome do Ciclo
cat sistec.json | json dados.0.'Nome do Ciclo'
cat sistec.json | jp dados.0.'Mês de Ocorrência'
cat sistec.json | json dados.0.'Mês de Ocorrência'
cat sistec.json | json dados.0.u'Mês de Ocorrência'
cat sistec.json | json dados.0.u"Mês de Ocorrência"
cat sistec.json | json udados.0."Mês de Ocorrência"
P2I yayson
yayson.py 
cat sistec.json | yayson.py dados.0
yayson.py sistec.json 
cat sistec.json | yayson.pyhttps://github.com/dsoprea/JsonPare 
cat sistec.json | jp dados.0
cat sistec.json | jp dados.0."M\u00eas de Ocorr\u00eancia"
cat sistec.json | jp dados.0.'M\u00eas de Ocorr\u00eancia'
cat sistec.json | jp dados.0.'Mês de Ocorrência'
cat sistec.json | jp dados.0.u'Mês de Ocorrência'
cat sistec.json | jp dados.0.'Mês de Ocorrência'
cat sistec.json | jp dados.0.1
cat sistec.json | jp dados.0.0
cat sistec.json | jp dados.0
cat sistec.json | jp dados.0 | jp "M*"
cat sistec.json | jp dados.0 | jp "Mês de Ocorrência"
cat sistec.json | jp dados.0 | json "Mês de Ocorrência"
cat sistec.json | jp dados.0 | jp u"Mês de Ocorrência"
cat /usr/local/bin/jp 
se /usr/local/bin/jp 
cat sistec.json | jp dados.0 | jp u"Mês de Ocorrência"
cat sistec.json | jp dados.0 | jp "Mês de Ocorrência"
cat sistec.json | jp dados.0
P2I bpython
cat sistec.json | jp dados.0
bpython-curses 
rm eg 
bpython-curses 
se /usr/local/bin/jp 
cat sistec.json | jp dados.0."Mês de Ocorrência"
cat sistec.json | jp dados.0
bpython-curses 
cat sistec.json | jp dados
cat sistec.json | jp dados.234
cat sistec.json | jp dados.23
cat sistec.json | jp dados.20
cat sistec.json | jp dados.15
cat sistec.json | jp dados.16
cat sistec.json | jp dados.17
cat sistec.json | jp dados.18
cat sistec.json | jp dados.19
cat sistec.json | jp dados.20
cat sistec.json | jp dados.19
cat sistec.json | jp
cat sistec.json | head
cat sistec.json | jp dados.0
cat sistec.json | jp dados.19
grep FIC sistec.json 
grep Forma sistec.json 
grep FORM sistec.json 
grep 'FORMAÇÃO' sistec.json 
cat sistec.json | jp dados.0.tipo
cat sistec.json | jp dados.0.Tipo
cat sistec.json | jp dados.1.Tipo
cat sistec.json | jp dados.2.Tipo
cat sistec.json | jp dados.3.Tipo
cat sistec.json | jp dados.4.Tipo
cat sistec.json | jp dados.5.Tipo
cat sistec.json | jp dados.6.Tipo
for ((i=0; i<20; i++)); do echo -en "\n${i}\n\t"; cat sistec.json | jp dados.${i}.Tipo; done
for ((i=0; i<20; i++)); do echo -en "\n${i}\n\t"; cat sistec.json | jp dados.${i}.'Nome do Ciclo'; done
cat sistec.json | jp dados.5
cat sistec.json | jp dados.8
cd
apt-get install phpmyadmin ^mysql.*5\.6.*$
s apt-get install phpmyadmin ^mysql.*5\.6.*$
sudo apt-get install phpmyadmin ^mysql.*5\.6.*$ php5-adodb php5-xsl php5-sqlite php5-geoip php5-common php5-cli php5-dev php5-dbg php5-curl
sudo apt-get install phpmyadmin ^mysql.*5\.6.*$ php5-adodb php5-xsl php5-sqlite php5-geoip php5-common php5-cli php5-dev php5-dbg php5-curl javascript-common libhtml-template-perl pkg-php-tools php5-gd
sudo apt-get install phpmyadmin ^mysql.*5\.6.*$ php5-adodb php5-xsl php5-sqlite php5-geoip php5-common php5-cli php5-dev php5-dbg php5-curl javascript-common libhtml-template-perl pkg-php-tools php5-gd apache2-doc apache2-utils 
l. ~/doc
sudo apt-get install txt2tags
cd Meus_Projetos/
git clone https://github.com/jmanoel7/sokoban.sed.git
cd sokoban.sed/
sed -nf sokoban.sed 
cmp DominandoSed.pdf ../Sed/DominandoSed.pdf 
rm -rf ../Sed/
umount /media/jmanoel7/JM7_PHONE 
sudo fdisk /dev/sdb
sudo mkdosfs -F 32 -n 'JM7_PHONE' /dev/sdb1
sudo sync
sudo umount /media/jmanoel7/JM7_PHONE 
sudo fdisk /dev/sdb
sudo mkdosfs -F 32 -n 'JM_PHONE' /dev/sdb1
sudo sync
umount /media/jmanoel7/JM_PHONE 
sudo sync
sudo rm /media/jmanoel7/JM7_USB1/Filmes/O_Exterminador_do_Futuro_Genesis/ -rf
sudo umount /media/jmanoel7/JM7_USB1 
sudo mount /dev/sdb1 /mnt/
cd Filmes
sudo cp -af O_Exterminador_do_Futuro_Genesis/ /mnt/
sudo sync
sudo umount /mnt 
cd Meus_Projetos/sistec-download
./sistec_download.py 
file ./sistec_download.py
AGI dos2unix
AGI dos2unix flip tofrodos
AGI dos2unix flip tofrodos iconv
AGI dos2unix flip tofrodos recode recode-doc
file sistec_download.py 
./sistec_download.py
vi ./sistec_download.py
./sistec_download.py
cat ./sistec_download.py | dos2unix 
$(cat ./sistec_download.py | dos2unix)
cat ./sistec_download.py | dos2unix | python
cat sistec-download-sql.sh 
cat ./sistec_download.py | dos2unix | python
bpython-curses 
cat ./sistec_download.py | dos2unix | python
bpython-curses 
cat <<EOF >instituicoes.txt
<select name="tipo"   id="tipo" >
<option title="Selecione" value="" >Selecione...</option><option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS ANÁPOLIS" value='1494081'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS ANÁPOLIS</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS APARECIDA DE GOIÂNIA" value='1494085'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS APARECIDA DE GOIÂNIA</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS CIDADE DE GOIÁS" value='1494086'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS CIDADE DE GOIÁS</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS FORMOSA" value='1494089'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS FORMOSA</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS GOIÂNIA" value='1494091'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS GOIÂNIA</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS GOIÂNIA OESTE" value='1494094'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS GOIÂNIA OESTE</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS INHUMAS" value='1494096'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS INHUMAS</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS ITUMBIARA" value='1494098'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS ITUMBIARA</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS JATAÍ" value='1494101'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS JATAÍ</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS LUZIÂNIA" value='1494103'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS LUZIÂNIA</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS SENADOR CANEDO" value='1494106'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS SENADOR CANEDO</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS URUAÇU" value='1494107'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS - CAMPUS URUAÇU</option>
<option title="ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS CAMPUS ÁGUAS LINDAS DE GOIÁS" value='1494082'>ASSESSOR DA UNIDADE DE ENSINO - INSTITUTO FEDERAL DE GOIÁS CAMPUS ÁGUAS LINDAS DE GOIÁS</option>

</select>
EOF

cat instituicoes.txt 
bpython-curses 
cat __options__.py 
cat __options__.py | grep teext
cat __options__.py | grep text
bpython-curses 
cat ./sistec_download.py | dos2unix | python
cat sistec_lib.py
vi sistec_lib.py
cat sistec_lib.py
vi sistec_lib.py
vi sistec_download.py 
vi sistec_lib.py
cat ./sistec_download.py | dos2unix | python
vi sistec_lib.py
cat ./sistec_download.py | dos2unix
cat ./sistec_download.py | dos2unix | env
cat ./sistec_download.py | dos2unix | python2
sudo invoke-rc.d apache2 stop
sudo invoke-rc.d mysql stop
sudo update-rc.d -f mysql disable
sudo update-rc.d -f mysql remove 
sudo update-rc.d -f apache2 remove 
sudo update-rc.d -f mysql remove 
sudo update-rc.d -f apache2 remove 
sudo update-rc.d apache2 remove 
sudo update-rc.d mysql remove 
l.
md5sum -c manjaro-i3-openrc-0.8.13.1-x86_64.iso.md5 
moun t
mount
umount /dev/sdc1 
sudo fdisk -l ./manjaro-i3-openrc-0.8.13.1-x86_64.iso
sudo dd if=./manjaro-i3-openrc-0.8.13.1-x86_64.iso of=/dev/sdc bs=4096; sudo sync
dmesg 
sudo fidsk /dev/sdc
sudo fdisk /dev/sdc
umount /media/jmanoel7/JM_PHONE 
sudo fdisk /dev/sdc
sudo sync
sudo mkfs.ext4 -F -L JOAO_MANOEL /dev/sdc1
sudo mkfs.ext4 -c -F -L JOAO_MANOEL /dev/sdc1
sudo sync
mount
vi
vi Meus_Projetos/sistec-download/sistec_lib.py
cd .vim/bundle/
mv YouCompleteMe ~/Backup/VIM_YouCompleteMe
vi ~/.vimrc
l. vim-utils/ftplugin/
cd
gvim ~/Meus_Projetos/sistec-download/sistec_lib.py
mv ~/Backup/VIM_YouCompleteMe ~/.vim/bundle/YouCompleteMe
clear
gvim ~/Meus_Projetos/sistec-download/sistec_lib.py
mv .vim/bundle/jedi-vim ~/Backup/
vim ~/.vimrc 
gvim ~/Meus_Projetos/sistec-download/sistec_lib.py
gvim ~/Meus_Projetos/my_dot_files/.vimrc_windows 
vim ~/.vimrc 
gvim ~/Meus_Projetos/my_dot_files/.vimrc_windows 
vim ~/.vimrc 
tail ~/.vimrc 
gvim ~/Meus_Projetos/my_dot_files/.vimrc_windows 
tail ~/.vimrc 
tail ~/Meus_Projetos/my_dot_files/.vimrc_windows
vim ~/.vimrc 
tail ~/Meus_Projetos/my_dot_files/.vimrc_windows
tail ~/.vimrc 
grep UltiS ~/.vimrc
grep UltiS ~/Meus_Projetos/my_dot_files/.vimrc_windows
clear
mkdir GNU_Linux/Manjaro-Linux
mv GNU_Linux/linuxmint GNU_Linux/LinuxMint/
l. GNU_Linux
l. GNU_Linux/
mv cd GNU_Linux/LinuxMint/
cd GNU_Linux/LinuxMint/
cd 17.2/
l.
rm casper-rw 
l.
cd
l. GNU_Linux/
mv GNU_Linux/openelec GNU_Linux/OpenElec
l. GNU_Linux/
mv Downloads/manjaro-* GNU_Linux/Manjaro-Linux/
cd GNU_Linux/Manjaro-Linux/
l.
curl -o manjaro-gnome-0.8.13.1-x86_64.iso http://ufpr.dl.sourceforge.net/project/manjarolinux/community/Gnome/2015.07/manjaro-gnome-0.8.13.1-x86_64.iso
curl -oL -C - manjaro-gnome-0.8.13.1-x86_64.iso http://ufpr.dl.sourceforge.net/project/manjarolinux/community/Gnome/2015.07/manjaro-gnome-0.8.13.1-x86_64.iso
curl -c - -oL manjaro-gnome-0.8.13.1-x86_64.iso http://ufpr.dl.sourceforge.net/project/manjarolinux/community/Gnome/2015.07/manjaro-gnome-0.8.13.1-x86_64.iso
man curl
curl -o manjaro-gnome-0.8.13.1-x86_64.iso -L 'http://ufpr.dl.sourceforge.net/project/manjarolinux/community/Gnome/2015.07/manjaro-gnome-0.8.13.1-x86_64.iso' -C -
rm manjaro-gnome-0.8.13.1-x86_64.iso
curl -o manjaro-gnome-0.8.13.1-x86_64.iso -L 'http://ufpr.dl.sourceforge.net/project/manjarolinux/community/Gnome/2015.07/manjaro-gnome-0.8.13.1-x86_64.iso' -C -
md5sum -c manjaro-gnome-0.8.13.1-x86_64-md5sum.txt 
md5sum -c manjaro-i3-openrc-0.8.13.1-x86_64.iso.md5 
sudo apt-file find bin/ddrescue
apt-file find bin/ddrescue
sudo apt-get install gddrescue 
sudo umount /media/jmanoel7/JM7_USB0 
ddrescue --help
s ddrescue -D -d -f manjaro-gnome-0.8.13.1-x86_64.iso /dev/sdc
l.
cat .Xclients 
cat .xinitrc 
cat .xsession 
cat .xinitrc 
cat .Xresources
cat .Xresources.bak 
cat .Xresources.bak  >> .Xresources
ls -la .Xresources
cat .Xresources
rm .Xresources.bak 
cat .bashrc.bak 
mv .bashrc.bak .bashrc.manjaro
mv .bash_logout.bak .bash_logout.manjaro
du -h .mozilla.bak/
ls -la /etc/skel/
rm .bash_logout.manjaro 
rm .bashrc.manjaro 
rm -rf .mozilla.bak/
cat .xinitrc.bak 
cat .xinitrc.bak >> .xinitrc
rm .xinitrc.bak
vi .xinitrc 
nano .xinitrc 
grep export .xinitrc
grep export .xinitrc >> .xsessionrc 
nano .xsessionrc
nano .xsessionrc
nano .xinitrc 
grep setxkb .xinitrc >> .xsessionrc 
nano .xsessionrc
. .xsessionrc
nano .xinitrc 
. .xsessionrc
nano .xsessionrc
ls -la .xsessionrc
ls -la .xinitrc 
ls
ls -la /.install-temp/
sudo mv /.install-temp/* /usr/local/
sudo rmdir -p /.install-temp/
tar cJvf cfg/etc_skel_manjaro.tar.xz /etc/skel/
l. cfg/etc_skel_manjaro.tar.xz
ls
sudo mkdir /usr/local/tmp
l. /usr/local/tmp/
l. tmp 
sudo mkdir /usr/local/temp
l. tmp 
sudo rm -rf /usr/local/tmp/
l. tmp
l. tmp/
ls
cd
df -h
l. ../jmanoel7.bak/.config/gtk-
l. ../jmanoel7.bak/.config/gtk-*
mv .config/gtk-3.0/ .config/gtk-3.0.bak
mv ../jmanoel7.bak/.config/gtk-* .config/
l. .config/gtk-3.0
l. .config/gtk-3.0/
l. .config/gtk-3.0/bookmarks 
cat .config/gtk-3.0/bookmarks
cat .config/gtk-3.0.bak/bookmarks 
cd ../jmanoel7.bak/.config/
l.
l. ~/.config/autostart/
cd ..
rm -rf .config/
cd .
cd .local/
l.
rm ninja-ide.git 
ls
l.
pwd
l.
l. share/
cd ..
rm -rf .local/
l.
cd ..
s rmdir jmanoel7.bak/
l.
cd
sudo pacman -Syyu
sudoedit 
sudoedit /etc/pacman-mirrors.conf 
sudo nanno /etc/pacman-mirrors.conf 
cmp Vingadores.Era.de.Ultron.2015.720p.WEB-DL.DUAL-LAPUMiA.mkv ~/Filmes/Vingadores.Era.de.Ultron.2015.720p.WEB-DL.DUAL-LAPUMiA/Vingadores.Era.de.Ultron.2015.720p.WEB-DL.DUAL-LAPUMiA.mkv 
cd .themes/
ls
l. -t
rm mona\ 3.0/ -rf
l.
l. -t
rm -rf MY_MONA_3.0/
l.
l. -t
rm -rf MONA_3.0/
l.
l. -t
rm -rf ashos-dark/
l. AshOS-Dark/
rm -rf AshOS-Dark/
l.
rm -rf oxy*
l.
rm -rf Oxygen-Fluxbox/ Theme\ -\ L_Mint-Darkx/
l.
cd
sudo killall -9 sudoedit
sudo nano  /etc/pacman-mirrors.conf 
sudo nano  /etc/pacman.d/mirrorlist 
sudo nano  /etc/pacman.d/mirrors/Brasil 
sudo nano  /etc/pacman.d/mirrorlist 
sudo pacman-mirrors

sudo nano  /etc/pacman.d/mirrorlist 
sudo nano  /etc/pacman.d/mirrors/Brasil 
sudo nano  /etc/pacman.d/mirrorlist 
sudo nano  /etc/pacman.d/mirrors/Brasil 
sudo pacman-mirrors -h
sudo pacman-mirrors -b stable -c Brasil 
sudo nano  /etc/pacman.d/mirrors/Brasil 
sudo nano  /etc/pacman.d/mirrorlist 
sudo umount /run/media/jmanoel7/JM7_USB1/
sudo sync
sudo umount /run/media/jmanoel7/JM7_USB1/
ls
rm debs
mv Dropbox/debs .
l.
sudo pacman-mirrors -b stable -c Brasil 
sudo pacman -Syyu
ping 8.8.8.8
sudo pacman -Syyu
ping 8.8.8.8
sudo nano /etc/NetworkManager/NetworkManager.conf 
ping 8.8.8.8
sudo resolvconf -u
cat /etc/resolv.conf
sudo ping 8.8.8.8
sudo systemctl stop network-manager
sudo systemctl start network-manager
sudo systemctl start NetworkManager
sudo systemctl restart NetworkManager
cat /etc/resolv.conf
sudo ping 8.8.8.8
sudo nano /etc/NetworkManager/NetworkManager.conf 
sudo pacman
sudo pacman-mirrors -b stable -c Brasil 
sudo pacman -Syyu
cat .xinitrc 
l. .xinitrc
l. Meus_Projetos/my_dot_files/.xinitrc__SLIM__ 
cat Meus_Projetos/my_dot_files/.xinitrc__SLIM__ 
rmdir .config/autostart/
cd .local/share/applications
cp firefox-dev.desktop firefox-dev.desktop.bak
cp firefox-emanuela.desktop firefox-emanuela.desktop.bak
cp firefox-stable.desktop firefox-stable.desktop.bak
cp /usr/share/applications/firefox.desktop firefox-stable.desktop
vi firefox-stable.desktop
rm firefox-stable.desktop.bak 
ls
cat firefox-stable.desktop >> firefox-dev.desktop
vi firefox-dev.desktop
rm firefox-dev.desktop.bak 
cat firefox-stable.desktop >> firefox-emanuela.desktop
rm firefox-emanuela.desktop.bak
vi firefox-emanuela.desktop.bak
vi firefox-emanuela.desktop 
l. *.bak
cp firefox-emanuela.desktop ~/Área\ de\ trabalho/firefox-emanuela.desktop 
sync
cd
sudo update-desktop-database 
cd .themes
l.
cd ..
cd Meus_Projetos/
mv my_dot_files.bak/ ~/Backup/
cd my_dot_files 
l. my_dot_files 
rm my_dot_files 
l. my_shell_scripts/
l. my_shell_scripts
mv ~/Backup/my_dot_files.bak .
mv my_dot_files.bak/ my_dot_files/
cd my_dot_files/
mv ~/.Xclients .
mv ~/.xsession .
cd
ln -s Meus_Projetos/my_dot_files/.Xclients .
ln -s Meus_Projetos/my_dot_files/.xsession .
l. .xsession
l. .xsession*
cd Meus_Projetos/my_dot_files/
chmod a+x .xinitrc__*
chmod a+x .xsession*
cd
l.
mv .xprofile Meus_Projetos/my_dot_files/
ln -s Meus_Projetos/my_dot_files/.xprofile .
l.
cd Meus_Projetos/my_dot_files/
git add .
git commit -a
export EDITOR=nano
export VISUAL=nano
git commit -a
rm .xinitrc__SLIM__ 
mv .xinitrc__LIGHTDM__ .xinitrc
l. .xinitrc 
cd
ln -sf Meus_Projetos/my_dot_files/.xinitrc .
l. .xinitrc 
cd Meus_Projetos/my_dot_files/
git add ,
git add .
git commit -a
git push
cd ..
cd my_dot_files/
cd .config_autostart/
l.
rm autostart-mate.desktop 
rm ~/bin/autostart-mate.sh 
l.
rm caja-dropbox.desktop 
l.
rm clipit-startup.desktop 
l.
rm guake.desktop 
l.
rm start-compiz.desktop 
l.
rm ~/bin/start-compiz.sh 
l.
cat teamviewer-teamviewer10.desktop 
vi teamviewer-teamviewer10.desktop 
l.
cat teamviewer-teamviewer10.desktop 
l.
cat hplip-systray.desktop 
vi hplip-systray.desktop 
cat hplip-systray.desktop 
cat teamviewer-teamviewer10.desktop 
cp /usr/share/applications/dropbox.desktop .
l.
cat dropbox.desktop 
vi dropbox.desktop 
cd
cd Meus_Projetos/my_dot_files/
cd
cd .config/
rm ~/.conkyrc 
mv autostart/manjaro-welcome.desktop ~/Meus_Projetos/my_dot_files/.config_autostart/
l. ~/Meus_Projetos/my_dot_files/.config_autostart/
ln -s ../Meus_Projetos/my_dot_files/.config_autostart autostart
l. autostart
l. autostart/
cd
cd Meus_Projetos/my_dot_files/
git add .
cd
l. .gitconfig 
ln -s Meus_Projetos/my_dot_files/.conky .
cd .conky
l.
cd ..
cd Meus_Projetos/my_dot_files/
. ~/.bashrc
. ~/.profile 
git add .
git commit -a
git push
cd ..
l. ~/Dropbox/
cp -af my_dot_files/ my_shell_scripts/ ~/Backup
sync
cd my_shell_scripts/
l. bin/
l. bin/ -t | head
git add .
git commit -a
git push 
cd
cat ~/.gtkrc-2.0 
sudo pacman -Ss dmz
sudo pacman -Sy xcursor-vanilla-dmz xcursor-vanilla-dmz-aa
sudo tar xzf ~/cfg/icons/gnome-colors-5.5.1.tar.gz -C /usr/share/icons/
l. /usr/share/icons/
sudo tar tf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz 
sudo rm /usr/share/icons/AUTHORS 
sudo rm /usr/share/icons/Adwaita/
sudo rm /usr/share/icons/ChangeLog 
sudo rm /usr/share/icons/COPYING 
sudo rm /usr/share/icons/Makefile 
sudo rm /usr/share/icons/README 
l. /usr/share/icons/README
l. /usr/share/icons/
sudo tar tf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz gnome-tribute
sudo tar xzvf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz gnome-tribute -C /usr/share/icons/ --no-same-owner
sudo tar tf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz gnome
sudo tar tf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz gnome-carbonite
sudo tar xzvf ~/cfg/icons/gnome-colors-extras-5.5.1.tar.gz gnome-carbonite -C /usr/share/icons/ --no-same-owner
l. /usr/share/icons/
l. gnome-carbonite/
sudo mv gnome-* /usr/share/icons/
sudo tar tf ~/cfg/icons/extra-gnome-colors-icons-20.tar.gz 
tar xzfv ~/cfg/icons/extra-gnome-colors-icons-20.tar.gz -C tmp/
l. tmp/
sudo chown jmanoel7\. -R /usr/local/temp/
tar xzfv ~/cfg/icons/extra-gnome-colors-icons-20.tar.gz -C tmp/
cd tmp
l.
cat README 
./install-extra-icons.sh 
sudo ./install-extra-icons.sh 
cd ..
rm -rf tmp/*
l. tmp/
l.
l. tmp/
l.
rm ~/cfg/icons/elementary_icons_by_danrabbit-d12yjq7.zip 
rm ~/cfg/icons/oxymentary*
cd .local/share/applications/
l.
cd ..
rmdir applications/
ln -s ../../Meus_Projetos/my_dot_files/.local_share_applications applications/
l.
ln -s ../../Meus_Projetos/my_dot_files/.local_share_applications applications
l.
l. applications/
cd applications/
ls
rm chrome-*
ls
rm userapp-*
ls
rm defaults.list 
ls
rm terminator.desktop 
ls
rm rxvt-unicode.desktop 
ls
rm root-menu.desktop 
ls
rm mime*
ls
cat faraday-start.desktop 
vi
nano faraday-start.desktop 
nano faraday-stop.desktop 
cd
l. bin/faraday-*
l.
sudo pacman -Syyu
sudo pacman -Ss vim
sudo pacman -Sy gvim-python3 vim-spell-pt vim-spell-br
sudo pacman -Sy gvim-python3 vim-spell-pt
vim
sudo pacman -Sy gvim
vim
ctags 
ctags --version
grep ctags .vimrc 
vi .vimrc 
sudo ln -s vim /usr/bin/vi
vi ~/.vimrc 
grep ctags .vimrc 
l. /usr/bin/ctags
/usr/bin/ctags
/usr/bin/ctags --version
sudo pacman -Sy bash-completion
. .profile 
sudo pacman -Sy dropbox python2-dropbox python2 python2-pip python2-setuptools python2-setuptools_scm python2-virtualenv python2-virtualenv-clone
sudo pacman -Sy dropbox python2-dropbox python2 python2-pip python2-setuptools python2-setuptools_scm python2-virtualenv python2-virtualenv-clone wxgtk wxgtk2.8 wxpython wxpython2.8 wxsqlite3
dropbox start -i
echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p
dropbox start -i
bg
cd .icons
l.
rm thunderbird-stable.png*
mv thunderbird-stable.svg.orig thunderbird-stable.svg
l.
rm firefox-stable.png*
mv firefox-stable.svg.orig firefox-stable.svg
l.
l. firefox-*
find /usr/share/icons/gnome-brave/ -name 'firefox*'
find /usr/share/icons/ -name 'firefox*'
eom /usr/share/icons/hicolor/384x384/apps/firefox.png
eog /usr/share/icons/hicolor/384x384/apps/firefox.png
cp /usr/share/icons/hicolor/384x384/apps/firefox.png .
mv firefox.png firefox-stable.png
eog firefox-stable.svg 
rm firefox-stable.svg
l.
l. firefox-*
eog ~/.local/firefox-dev/browser/icons/mozicon128.png 
cmp ~/.local/firefox-dev/browser/icons/mozicon128.png firefox-dev.png 
l. ~/.local/firefox-dev/browser/icons/mozicon128.png 
find ~/.local/firefox-dev/ -name '*.png'
l. firefox-dev.png 
cp /home/jmanoel7/.local/fir
l.
l. firefox-*
find /home/jmanoel7/.local/thunderbird/ -name '*.png'
eog /home/jmanoel7/.local/thunderbird/chrome/icons/default/default256.png
cp /home/jmanoel7/.local/thunderbird/chrome/icons/default/default256.png thunderbird-stable.png
rm thunderbird-stable.svg 
l. thunderbird-stable.png 
cd
cd Meus_Projetos/my_dot_files/
git add .
git commit -a
git push
cd ../my_shell_scripts/
git add .
git commit -a
git push
git pull
cd
sudo pacman -Sy libreoffice-fresh-pt-BR libreoffice-still-pt-BR 
sudo pacman -Sy libreoffice-fresh-pt-BR
sudo pacman -Sy libreoffice-still-pt-BR
cd .icons
l.
eog instantbird-dev.png 
find /home/jmanoel7/.local/instantbird/ -name '*.png'
eog /home/jmanoel7/.local/instantbird/icons/mozicon128.png
l.
l. instantbird-dev.png 
cp /home/jmanoel7/.local/instantbird/icons/mozicon128.png instantbird-dev.png 
cd .local/
rm -rf ../.activestate/ komodo-edit-9/ share/applications/komodo-edit-9.desktop 
cd ..
cd Meus_Projetos/my_dot_files/
git add .
git gui
sudo pacman -Sy git-gui
sudo pacman -Ss git-gui
sudo pacman -Ss git
sudo pacman -Ss git | grep GUI
sudo pacman -Ss git | grep gui
sudo pacman -Ss qgit
sudo pacman -Sy qgit
git gui
rm ~/.local/share/applications/git-gui.desktop 
cd .icons/
l.
rm start-here-debian.*
l.
rm komodo-*
l.
rm debian-swirl.*
l.
rm emblem-people.svg 
l.
rm git-gui.png 
l.
rm terminal.svg 
l.
eog sqlitemanager.png 
l.
cd
cd Meus_Projetos/my_dot_files/
git add .
git commit -a
git push
cd
cd Meus_Projetos/my_shell_scripts/
git add .
git commit -a
git pull
cd
cd bin/
rm termina*
vi i3-sensible-editor 
vi i3-sensible-pager 
vi i3-sensible-terminal 
cd
cd Meus_Projetos/my_shell_scripts/
git add .
git commit -a
git push
ln -s /opt/videos/IFG .
cd .icons/
cd
cd .vim/bundle/
cat ~/.vimrc 
rm -rf YouCompleteMe/
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe/
git submodule update --init --recursive
less install.sh
grep 'install.sh' README.md 
./install.sh --clang-completer --system-libclang --omnisharp-completer --system-boost
grep apt README.md 
grep pacman README.md 
sudo pacman -Sy cmake clang clang-analyzer clang-tools-extra clang35
sudo pacman -Sy cmake clang clang-analyzer clang-tools-extra
sudo pacman -Sy cmake clang clang-analyzer clang-tools-extra boost boost-libs

grep install.sh ~/.vimrc 
./install.sh --clang-completer --system-libclang --system-boost --omnisharp-completer
cd
vi .vimrc 
vi Meus_Projetos/my_dot_files/.vimrc_windows 
cd Meus_Projetos/my_dot_files/
git add ,
git add .
git commit -a
git push
cd
clear
ps axw | grep dropbox
ps axw
file .face 
eog .face 
rm .face 
cp Dropbox/Public/Curriculo_Lattes/joaomanoel_atualizada_150x150.jpg .face
eog .face 
mv .face Meus_Projetos/my_dot_files/
ln -s Meus_Projetos/my_dot_files/.face .
l. .face 
cd
cd Meus_Projetos/my_dot_files/
git add .
git commit -a
git push 
cd
dropbox start -i
bg
echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p
fg
dropbox start -i
bg
sudo pacman -Sy mysql-workbench mysql-python phpmyadmin apache apache-ant apache-ant-doc
sudo systemctl start httpd.service 
ps axw | grep mysql
ps axw | grep maria
sudo pacman -Sy mariadb mariadb-clients 
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo pacman -Sy perl-dbd-mysql
ps axw | grep maria
sudo systemctl start mysqld.service 
sudo pacman -Sy phpmyadmin 
pacman -h
pacman -Ql phpmyadmin 
cat /usr/share/webapps/phpMyAdmin/README 
sudo pacman -Sy php php-apache
sudo systemctl restart httpd.service 
l. /etc/httpd/conf/extra/phpmyadmin.conf
l. /etc/httpd/conf/extra/
l. /etc/webapps/
l. /etc/webapps/phpmyadmin/
l. /etc/php/php.ini 
cat /etc/php/php.ini
cat /etc/php/php.ini | grep openba
cat /etc/php/php.ini | grep open
cat /etc/php/php.ini | grep open_basedir
sudo systemctl stop httpd.service 
sudo systemctl stop mysqld.service 
umount /run/media/jmanoel7/MJRO0813 
sudo fdisk /dev/sdc
sudo partprobe /dev/sdc
sudo partx /dev/sdc
sudo partx /dev/sdc1
sudo partprobe /dev/sdc1
sudo mkdosfs -F 32 -n JOAO_MANOEL /dev/sdc1
cd Meus_Projetos/
git clone https://www.github.com/jmanoel7/icp-brasil-unofficial
git clone https://www.github.com/jmanoel7/icp-brasil-unofficial.git
ll icp-brasil-unofficial/
rm -rf ICP-BRasil/
sync
umount /run/media/jmanoel7/JOAO_MANOEL 
ps axw | grep http
ps axw | grep sql
ps axw | grep maria
ps axw | grep apache
ps axw | grep nautilus
kill -9 1553
ps axw | grep nautilus
xrced 
l. .local/share/applications/
l. ~/.local/share/applications
l. ~/.local/share/applications/
rm .bash_*
ln -s Meus_Projetos/my_dot_files/.bash* .
rm .profile 
ln -s Meus_Projetos/my_dot_files/.profile .
ls
SDU
sudo apt-get clean 
