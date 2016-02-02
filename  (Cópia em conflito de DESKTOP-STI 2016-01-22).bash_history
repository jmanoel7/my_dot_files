of=/dev/block/mmcblk0p5cllc
ll
echo 85770087
sudo fastboot devices 
sudo adb devices 
sudo fastboot devices 
sudo adb reboot bootloader 
sudo fastboot devices 
sudo adb devices 
cd tmp/
ls
file *.bin
file emmc_appsboot.bin recovery.img 
sudo adb shell 
sudo adb pull /system ./system
ls system/bin/
ls system/bin/tc
sudo adb pull /system/bin/tc ./system/bin/tc
sudo adb sheel
sudo adb shell 
sudo adb pull /data/local/tmp/tc ./system/bin/tc
file ./system/bin/tc
sudo adb pull /data/local/tmp/emmc_appsboot.bin.bak .
sudo adb pull /data/local/tmp/emmc_appsboot.bin.bak
sudo adb shell 
sudo adb pull /data/local/tmp/emmc_appsboot.bin.bak
sudo adb pull /data/local/tmp/recovery.img.bak
ls -l
s chown joaomanoel\: -R .
ll
l.
du -h system/
ls
sudo adb push recovery.img /data/local/tmp/
sudo adb push emmc_appsboot.bin /data/local/tmp/
sudo adb shell 
sudo adb push[Bpush emmc_appsboot.bin /data/local/tmp/
sudo adb push recovery.img /data/local/tmp/
sudo adb shell 
sudo adb reboot
sudo fastboot devices 
sudo adb devices
sudo fastboot devices 
sudo adb devices
sudo adb shell
sudo fastboot devices 
sudo adb push 
sudo adb push emmc_appsboot.bin /data/local/
sudo adb push emmc_appsboot.bin /data/local/tmp/emmc_appsboot.bin && sudo adb shell dd if=/data/local/tmp/emmc_appsboot.bin of=/dev/block/mmcblk0p5
sudo adb push emmc_appsboot.bin /data/local/tmp/emmc_appsboot.bin && sudo adb shell su -c dd if=/data/local/tmp/emmc_appsboot.bin of=/dev/block/mmcblk0p5
sudo adb push emmc_appsboot.bin /data/local/tmp/emmc_appsboot.bin && sudo adb shell
sudo adb push emmc_appsboot.bin.bak /data/local/tmp/emmc_appsboot.bin.bak && sudo adb shell
sudo adb reboot recovery 
sudo fastboot devices 
cmp emmc_appsboot.bin ~/Downloads/emmc_appsboot.bin 
cmp emmc_appsboot.bin emmc_appsboot.bin.bak 
cp ~/Downloads/emmc_appsboot.bin emmc_appsboot.bin.1
ls
echo 'http://clubedosgeeks.com.br/sistemas-operacionais/android/como-instalar-o-bootloader-e-o-clockworkmod-no-lg-l5' >> links.txt
echo 'http://www.smartphonesandroidcc.blogspot.com.br/2013/10/desbloquear-bootloader-e-instalar-cwm.html' >> links.txt
sudo fastboot devices 
sudo adb reboot bootloader 
sudo fastboot devices 
sudo adb reboot bootloader 
echo 'http://forum.xda-developers.com/showthread.php?t=1610121' >> links.txt
cat links.txt 
ls
apt-file find /usr/bin/adb
cat sh
cat <<EOF>mensagem.txt
Em sexta-feira, 7 de agosto de 2015 13:10:57 UTC-3, Andre Garzia  escreveu:
> Lucas,
> 
> O Firefox OS nao eh um linux. Ele é muito mais proximo do android nesses
> aspectos. Ele nao trabalha com pacotes e os aplicativos do sistema nao sao
> compilados com gcc e similares.
> 
> Recomendo voce dar uma olhada no livros chamado "beyond gaia" cujo link
> pode ser obtido em http://firefoxosbooks.org para aprender mais sobre a
> arquitetura, o lançamento e ciclo de vida dos apps do Firefox OS.
> 
> Abs
> Em 04/08/2015 13:56, "Lucas Garcia de Araújo" <lukasgarcya@gmail.com>
> escreveu:
> 
> > Tornando-se root seria possível instalar aplicativos do linux. Se conseguir
> > o gcc esta tranquilo até compilar outros programas.
> > Em 02/08/2015 13:22, "Lucas Garcia de Araújo" <lukasgarcya@gmail.com>
> > escreveu:
> >
> > > Pesquisei e achei uns 3 sites que tem o mesmo download, porém isto de
> > > cadastrar o número do celular é fria.
> > >
> > > Em 1 de agosto de 2015 00:53, Reuben Morais <reuben.morais@gmail.com>
> > > escreveu:
> > >
> > >> Só uma nota pra a galera tentando desbloquear: caso algum exploit
> > >> apareça, a melhor coisa a se fazer provavelmente vai ser instalar um
> > >> Android mesmo. O Fireweb nem existe mais na árvore de dispositivos do
> > B2G
> > >> (e o nome “leo” agora é usado pra o Sony Z3), então qualquer
> > possibilidade
> > >> de suporte tá na mão da LG. Não esperem compilar um FxOS recente pra o
> > >> Fireweb.
> > >>
> > >> -- reuben
> > >> _______________________________________________
> > >> community-brasil mailing list
> > >> community-brasil@lists.mozilla.org
> > >> https://lists.mozilla.org/listinfo/community-brasil
> > >>
> > >
> > >
> > >
> > > --
> > > Atenciosamente,
> > >
> > > Lucas Garcia de Araújo
> > > Analista de Tecnologia da Informação
> > > Instituto Federal Goiano - Reitoria
> > > R. 88, nº 310 - Setor Sul, Goiânia - GO
> > > www.ifgoiano.edu.br/
> > > (62) 9108-2777
> > >
> > _______________________________________________
> > community-brasil mailing list
> > community-brasil@lists.mozilla.org
> > https://lists.mozilla.org/listinfo/community-brasil
> >

Olá pessoal, boa tarde!

Tenho excelentes notícias sobre a atualização do Firefox OS no LG FireWeb.

NOTA: para que todos os comandos e procedimentos abaixo funcionem, lembrem-se de estar com o cabo conectado ao LG FireWeb e que a "Depuração remota" está habilitada via:

Configurações >> Informações >> Mais informações >> Desenvolvedor >> Depuração remota

1) Primeiro temos que ser root:

https://dl.dropboxusercontent.com/u/39567554/Firefox_OS/lg-fireweb-d300/root_fireweb.zip

descompacte o arquivo acima e depois execute:

sudo ./runme.sh

Note que o adb ja deve estar instalado no seu linux, no meu linuxmint 17.2 por exemplo:

sudo apt-get install android-tools-adb

2) Crie o arquivo de nome "sh" (sem as aspas eh claro) com o seguinte conteúdo:

----- inicio -----
#!/system/bin/mksh
/system/xbin/su -c /system/bin/mksh $@
----- fim -----

3) Copiando o arquivo "sh" criado acima para o lg fireweb:

sudo adb push sh /data/local/tmp/sh
sudo adb shell
su
mount -o rw,remount /system
rm /system/bin/sh
cat /data/local/tmp/sh > /system/bin/sh
exit
exit

4) Instalando uma recovery.img (com ClockWorkMod) para o LG L5 no LG FireWeb:

baixe e descompacte o arquivo recovery.img de:

https://dl.dropboxusercontent.com/u/39567554/Firefox_OS/lg-fireweb-d300/CWM6_24-03-2013.rar

depois execute:

sudo adb push recovery.img /data/local/tmp/recovery.img
sudo adb shell
dd if=/data/local/tmp/recovery.img of=/dev/block/mmcblk0p17
exit
exit

6) PRONTO!!!

Agora para fazer o flash eu já conseguiria entrando em modo recovery via:

sudo adb reboot recovery 

7) O que falta agora é compilar o código leo (lg fireweb) do repositorio B2G da mozilla. O Problema é que eu não consegui achar tal código, como foi dito pelo Reuben. 
Será que o Andre Garzia ou alguem aqui não conseguiria, junto a Mozilla, esse código leo do B2G?

8) Se der certo de compilar uma versão 2.2 ou 2.5 para o LG FireWeb eu empacoto tudo no UPDATE.ZIP para flash via ClockWorkMod e disponibilizo o arquivo UPDATE.ZIP para todos nós com um tutorial bem simples, OK?

PS: Andre Garzia, eu também consegui fazer o "adb pull /system", porém não sei como isso poderia ajudar a compilar o Firefox OS.

NOTA IMPORTANTE: Todos os comandos acima foram revisados por mim, porem nao dou garantia nenhuma se der algo errado no telefone de vcs. E, lembrando que se der algo errado e vcs nao souberem o que fazer, nao prossigam com os comandos seguintes, mandem um print do que aconteceu aqui que eu ajudo na medida do possível.
EOF

cat links.txt 
cat links.txt  >> ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/links.txt 
rm links.txt 
ls
rm *.rar
ls
mv recovery.img.bak ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
ls
rm recovery.img 
rm emmc_appsboot.bin
ls
mv emmc_appsboot.bin.1 emmc_appsboot.bin
ls
mv mensagem.txt ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
cat ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
cat ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/mensagem.txt 
cat ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/mysh 
ls
rm -rf system/
ls
sudo adb shell 
sudo adb push emmc_appsboot.bin /data/local/tmp
sudo adb shell 
ls
sudo adb reboot-bootloader 
sudo fastboot devices 
sudo fastboot reboot
mv emmc_appsboot.bin ~/
cd
mv emmc_appsboot.bin ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
ls -l 
ll ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
mv tmp/emmc_appsboot.bin.bak  ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
ll ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
cmp emmc_appsboot.bin emmc_appsboot\(1\).bin 
cmp emmc_appsboot.bin ~/tmp/recovery_and_bootloader/emmc_appsboot.bin
rm emmc_appsboot*
cd
cat .gitconfig 
gcc --version
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.7 1 && sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 2 && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.7 1 && sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 2 && echo OK
gcc --version
g++ --version
sudo update-alternatives --set gcc "/usr/bin/gcc-4.8"
sudo update-alternatives --set g++ "/usr/bin/g++-4.8"
g++ --version
gcc --version
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
du -h .
df -h
du -h .
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.7 g++-4.7 g++-4.7-multilib git lib32ncurses5-dev lib32z1-dev libgconf2-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils  lzop
echo 'sudo apt-get install --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.7 g++-4.7 g++-4.7-multilib git lib32ncurses5-dev lib32z1-dev libgconf2-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils  lzop' | sed 's/4\.7/4\.8/g'
sudo apt-get install --no-install-recommends autoconf2.13 bison bzip2 ccache curl flex gawk gcc g++ g++-multilib gcc-4.8 g++-4.8 g++-4.8-multilib git lib32ncurses5-dev lib32z1-dev libgconf2-dev zlib1g:amd64 zlib1g-dev:amd64 zlib1g:i386 zlib1g-dev:i386 libgl1-mesa-dev libx11-dev make zip libxml2-utils  lzop
SDU
sudo apt-get install '^oracle-java7-.*$'
sudo apt-get install '^oracle-java7-.*$' oracle-jdk7-installer 
sudo apt-get install '^oracle-java7-.*$'
java -version
sudo update-java-alternatives
sudo update-java-alternatives -l
sudo update-java-alternatives -s java-7-oracle
java -version
clear
du -h .
cp leo.xml config.sh flash.sh ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
cd ~/Dropbox/Public/Firefox_OS/lg-fireweb-d300/
vim config.sh 
cd 
cd Dropbox/Public/Firefox_OS/
ls
mv lg-fireweb-d300/ LG-FireWeb-D300/
ls
mv lg-fireweb-d300\ \(Conflitos\ entre\ maiúsculas\ e\ minúsculas\)/ lg-fireweb-d301/
mv lg-fireweb-d301/ LG_FIREWEB_D300/
ls
mv LG_FIREWEB_D300/ LGFW_D300/
ls -la
ls -la bin/tc
ls -la bin/iptables 
ls -la bin/
ls -la bin/diag_mdlog
ls -la etc/bluetooth/
ps axw 
cd tmp/
git clone git://github.com/mozilla-b2g/B2G.git
cd B2G/
vim config.sh 
grep leo config.sh
vim flash.sh 
BRANCH=v2.5 ./config.sh leo
find . -name *.xml
cp ~/Downloads/leo.xml .repo/manifests/
BRANCH=v2.5 ./config.sh leo
find . -name leo.xml
vi config.sh 
cp ~/Downloads/leo.xml .
BRANCH=v2.5 ./config.sh leo leo.xml 
du -h
backup-inari/system
mkdir backup-leo
rm leo.xml 
vi config.sh 
vi flash.sh 
rm flash.sh 
mv ~/Downloads/flash.sh .
mv ~/Downloads/config.sh .
grep leo flash.sh 
grep leo config.sh 
less config.sh 
mkdir backup-leo
mkdir backup-leo -p
cd backup-leo/
sudo adb start-server
sudo adb kill-server
sudo adb start-server
sudo adb devices 
sudo adb shell
sudo adb pull /system .
ls
ls -la
sudo adb pull /system . > log.txt 2>&1
egrep "[Dd][eE][Nn][Ii][Ee][Dd]" log.txt 
sudo adb shell
sudo adb pull /data/local/tmp/tc ./system/bin/tc
chmod 750 ./system/bin/tc
s chmod 750 ./system/bin/tc
ls -l ./system/bin/tc
sudo adb pull /data/local/tmp/iptables ./system/bin/iptables
s chmod 750 ./system/bin/iptables
ls -l ./system/bin/iptables
sudo adb pull /data/local/tmp/diag_mdlog ./system/bin/diag_mdlog
ls -l ./system/bin/diag_mdlog
s chmod 750 ./system/bin/diag_mdlog
s chmod u+s ./system/bin/diag_mdlog
ls -l ./system/bin/diag_mdlog
egrep "[Dd][eE][Nn][Ii][Ee][Dd]" log.txt 
sudo adb shell
sudo adb pull /data/local/tmp/network.conf ./etc/bluetooth/network.conf
ls etc/
ls 
l. system/
l. system/bin/
s mv system/bin/* bin/
rmdir -p system/bin/
s rmdir -p system/bin/
ls
ls bin/
ls
egrep "[Dd][eE][Nn][Ii][Ee][Dd]" log.txt 
ls -la ./etc/bluetooth/network.conf
s chmod 440 ./etc/bluetooth/network.conf
ls -la ./etc/bluetooth/network.conf
sudo adb shell 
sudo adb pull /data/local/tmp/main.conf ./etc/bluetooth/main.conf
s chmod 440 ./etc/bluetooth/main.conf
ls -la bin/
ls -la etc/
ls -la etc/bluetooth/
sudo adb pull /data/local/tmp/input.conf ./etc/bluetooth/input.conf
ls -la etc/bluetooth/input.conf
s chmod 440 ./etc/bluetooth/input.conf
ls -la etc/bluetooth/input.conf
sudo adb pull /data/local/tmp/auto_pairing.conf ./etc/bluetooth/auto_pairing.conf 
ls -la etc/bluetooth/auto_pairing.conf
s chmod 440 ./etc/bluetooth/auto_pairing.conf
ls -la etc/bluetooth/auto_pairing.conf
s chmod 640 ./etc/bluetooth/auto_pairing.conf
ls -la etc/bluetooth/auto_pairing.conf
ls -la etc/bluetooth/
sudo adb shell ls -la /system/etc/bluetooth/
sudo adb shell ls -la /system/etc/bluetooth/*
sudo adb pull /data/local/tmp/audio.conf ./etc/bluetooth/audio.conf
s chmod 440 ./etc/bluetooth/audio.conf 
ls -la etc/bluetooth/
egrep "[Dd][eE][Nn][Ii][Ee][Dd]" log.txt 
sudo adb shell
sudo adb pull /data/local/tmp/WCN1314_qcom_wlan_nv.bin ./etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin
s chmod 640 ./etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin
l. ./etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin
sudo adb pull /data/local/tmp/WCN1314_qcom_cfg.ini ./etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
s chmod 640 ./etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini 
l. ./etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
sudo adb pull /data/local/tmp/init.qcom.sdio.sh ./etc/init.qcom.sdio.sh
s chmod 550 ./etc/init.qcom.sdio.sh
l. ./etc/init.qcom.sdio.sh
sudo adb pull /data/local/tmp/dbus.conf ./etc/dbus.conf
s chmod 440 ./etc/dbus.conf
l. ./etc/dbus.conf
l. bin/iptables 
sudo adb shell
egrep "[Dd][eE][Nn][Ii][Ee][Dd]" log.txt 
sudo adb shell
mv log.txt ~/Dropbox/Public/Firefox_OS/LGFW_D300/
ls
mkdir system
mv * system/
s mv * system/
ls
l.
l. system/
l. system/xbin/
l. system/bin/sh 
cat system/bin/sh 
sudo chown joaomanoel\: -R .
l.l
l.
l. system/
chmod a+x system/bin/sh 
cat system/bin/sh
l. system/bin/sh
cd ..
l. backup-leo/system/
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo
chmod a+x flash.sh config.sh 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo
vim config.sh 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/leo.xml .
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo leo.xml 
l. gaia/locales/
cd gaia/locales/
cat README.md 
cat languages_all.json 
cat languages_dev.json 
cat README.md 
cp languages_dev.json languages_own.json
vi languages_own.json 
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_5/es
sudo apt-get install mercurial
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_5/es
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_5/pt-BR
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_5/en-US
cat languages_own.json 
l
cat README.md 
l.
cd ..
make profile  LOCALE_BASEDIR=locales/   LOCALES_FILE=locales/languages_own.json  GAIA_DEFAULT_LOCALE=pt-BR   GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es
vi locales/languages_own.json 
vi locales/languages_dev.json 
vi locales/languages_own.json 
make profile  LOCALE_BASEDIR=locales/   LOCALES_FILE=locales/languages_own.json  GAIA_DEFAULT_LOCALE=pt-BR   GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es
ls
ls -lt
l. -t
l. -t profile/
cd ..
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es ./build.sh -j1
l. gaia/profile/

LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es ./build.sh -j1
java -version
cd tmp/B2G/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es ./build.sh -j1VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh 
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 GAIA_KEYBOARD_LAYOUTS=pt-BR,en,es ./build.sh
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
source build/envsetup.sh force
rm -rf objdir-gecko
rm -rf out
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
./build.sh -j1
rm -rf out/
./build.sh -j1
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh -j1
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
cd gaia/
make profile LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1
cd ..
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
mv backup-leo/ backup-leo-old
mv leo.xml leo-old.xml
mv backup-leo-old/ backup-leo-lg
mv leo-old.xml leo-lg.xml 
vi config.sh 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo-lg/ BRANCH=v2.5 ./config.sh leo-lg leo-lg.xml
cd tmp/B2G/
ls
mv leo-lg.xml leo.xml 
cd tmp/B2G/
vim config.sh 
cd gaia/locales/
rm -rf pt-BR/ e*
git clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/pt-BR/
git clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/pt-BR
git clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/pt-BR.git
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/pt-BR/
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/en-US
cat languages_own.json 
hg clone https://hg.mozilla.org/releases/gaia-l10n/v2_2/es/
cd gaia/locales/
rm -rf pt-BR/ e*
hg clone https://hg.mozilla.org/releases/gaia-l10n/v1_2/es/
hg clone https://hg.mozilla.org/releases/gaia-l10n/v1_2/en-US/
hg clone https://hg.mozilla.org/releases/gaia-l10n/v1_2/pt-BR/
l.
cat languages_own.json 
cd
cd gaia/locales/
l.
cd device/
ls
l.
l. qcom/
l. qcom/leo/
cd qcom/leo/
cat full_leo.mk 
cat .git/config 
gcc --version
vi external/gtest/Android.mk 
vi external/gtest/test/Android.mk 
cd hardware/msm7k/
ls
l.
cat .git/config 
cd tmp/B2G/
ls
vi config.sh 
grep -e mm7 .
grep mm7 -r .
grep mm7 -r .repo/
cat .repo/manifest.xml 
cat leo.xml 
cat leo.xml  | grep qcom
vi config.sh 
cd
cd Downloads/
cd 
cd PDF/
ls
atril 243o.pdf 
cd
cd tmp/B2G/
ls
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leO BRANCH=v2.5 ./config.sh 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leO BRANCH=v2.5 ./config.sh LEO
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leO BRANCH=v2.5 ./config.sh leo
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leO BRANCH=v2.5 ./config.sh leo leo.xml 
grep codeaurora config.sh 
grep aurora config.sh 
grep codeaurora -r .
grep codeaurora *
git clone git://codeaurora.org/leo
mv backup-leo-lg/ backup-leo
less leo.xml 
git clone git://codeaurora.org/caf/leo.git
git clone git://codeaurora.org/caf
less leo.xml 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.2 ./config.sh leo leo.xml 
vi config.sh 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.2 ./config.sh leo leo.xml 
cp /home/joaomanoel/tmp/B2G/.repo/repo/repo /home/joaomanoel/tmp/B2G/repo
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.2 ./config.sh leo leo.xml 
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
source build/envsetup.sh force
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
rm -rf objdir-gecko out/
./build.sh -j1
sudo apt-get install oracle-java6-installer 
sudo apt-get purge oracle-java7-set-default 
sudo update-java-alternatives -l
sudo update-java-alternatives -s java-6-oracle
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
build/envsetup.sh force
l. build/envsetup.sh
chmod a+x build/envsetup.sh
build/envsetup.sh force
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
rm -rf out/
l. hardware/qcom/media/
cd hardware/qcom/media/
git commit -a
cd ../../../
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh -j1
java -versq
java -version
javac -version
l. /usr/lib/jvm/
l. /usr/lib/jvm/java-6-openjdk-amd64/
l. /usr/lib/jvm/java-6-openjdk-amd64/bin/
dpkg -l | grep java
apt-file find /usr/lib/jvm/java-6-openjdk-amd64/bin/javaws 
sudo apt-get purge icedtea-netx
sudo apt-get purge '^icedtea-.*$'
l. /usr/lib/jvm/java-6-oracle/
java -version
javac -version
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh -j 1
rm -rf hardware/qcom/media/
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.2 ./config.sh leo leo.xml 
java -version
javac -version
cd gaia/locales/
cd ../../
LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v1.2 ./config.sh leo leo.xml 
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
rm -rf out/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
java -version
grep JAVA build.sh 
grep Java build.sh 
grep java build.sh 
grep jdk build.sh 
grep j build.sh 
LOCAL_MODULE_TAGS=optional LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
vi build/core/base_rules.mk
rm -rf out/
cd build/core/
ls
grep LOCAL_MODULE_TAGS -r .
vi base_rules.mk 
cd
cd tmp/B2G/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
rm -rf out/
grep '-j' build.sh 
grep '\-j' build.sh 
less build.sh 
man time
less build.sh 
vi build.sh 
man make
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
vi build/core/base_rules.mk 
rm -rf out/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
find . -name 'gtest_all_test_host'
find . -name '*gtest_all_test_host*'
cd external/gtest/test/
ls
vi Android.mk 
rm -rf out/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
cd ..

LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
vi external/gtest/test/Android.mk 
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
rm -rf out/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
cd external/gtest/
ls
l.
git rev-parse HEAD
cd ..
rm -rf out/ out/
vi external/gtest/test/Android.mk 
rm -rf out/ out/
LOCALE_BASEDIR=locales/ LOCALES_FILE=locales/languages_own.json GAIA_KEYBOARD_LAYOUTS=en,es,pt-BR GAIA_DEFAULT_LOCALE=pt-BR GAIA_PRETRANSLATE=1 ./build.sh
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo leo.xml
rm gaia/locales/languages_own.json 
rm gaia/locales/en-US/
rm gaia/locales/en-US/ -rf
rm gaia/locales/es/
rm gaia/locales/es/ -rf
rm gaia/locales/pt-BR/ -rf
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
grep 'HOST_' -r external/gtest/test/
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
rm -rf out/
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
git pull
./repo sync
rm -rf out/
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
rm -rf o
rm -rf out/
vi external/gtest/test/Android.mk 
vi external/gtest/test/gtest_all_test.cc 
rm -rf out/
vi external/gtest/test/gtest_all_test.cc 
vi external/gtest/test/Android.mk 
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
rm -rf out/
./config.sh 
./build.sh 
vi external/gtest/test/Android.mk 
vi build/core/base_rules.mk 
./build.sh 
rm -rf out/
./build.sh 
vi external/gtest/test/Android.mk
./build.sh 
vi external/gtest/test/Android.mk
./build.sh 
vi external/gtest/test/Android.mk
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v1.2 ./config.sh leo leo.xml
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v1.3 ./config.sh leo leo.xml
s reboot
cd tmp/B2G/
vi external/gtest/test/Android.mk
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
rm -rf out/
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
cd tmp/B2G/
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v1.3 ./config.sh leo leo.xml
git pull
./repo sync -d
./build.sh
rm -rf out/
./build.sh
vi external/gtest/test/Android.mk
rm -rf out/
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
cd external/gtest/
git rev-parse HEAD
git rev-parse 
git rev-parse --help
git rev-parse --sq-quote
git rev-parse --sq-quote HEAD
git rev-parse HEAD
git rev-parse --help
git rev-parse --verify HEAD
git rev-parse --help
cd ..
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
cp Meus_Projetos/my_dot_files/.face .
l. .
l. .face 
rm .face 
cp Meus_Projetos/my_dot_files/.face .
cd tmp/B2G/
ls
tar cjvf backup-leo-system.tar.bz2 backup-leo/
mv backup-leo-system.tar.bz2 ~/Dropbox/Public/Firefox_OS/LGFW_D300/
l. ~/Dropbox/Public/Firefox_OS/LGFW_D300/
ls
mate-about
whereis dropbox 
l. /usr/bin/dropbox
dropbox start
ps axw | grep dro
dropbox
dropbox status
dropbox stop
dropbox start
dropbox status
ls
sudo apt-get install zsync 
cd Downloads/
cd debian/
cd
cd Downloads/debian/
zsync -u 'http://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/current-live/amd64/iso-hybrid/' debian-live-8.2.0-amd64-gnome-desktop+nonfree.iso.zsync 
rm -rf ../manjaro/
rm -rf ../fedora-science/
ls
ls ..
ls ../linuxmint/
sudo apt-get install inkscape 
cd ..
rm -rf debian/
cd
clear
sudo apt-get install rxvt-unicode-ml 
sudo apt-get install rxvt-unicode-256color 
urxvt
ln -s Meus_Projetos/my_dot_files/.Xresources .
xrdb -load .Xresources 
vim .Xresources 
ln -s Meus_Projetos/my_dot_files/.urxvt .
l. ..
l.
vim .Xresources 
xrdb -load .Xresources 
echo '<project path="external/gtest" name="platform/external/gtest" revision="8c212ebe53bb2baab3575f03069016f1fb11e449"/>'
echo '<project path="external/gtest" name="platform/external/gtest" revision="8c212ebe53bb2baab3575f03069016f1fb11e449"/>' >> ~/Dropbox/Public/Firefox_OS/LGFW_D300/gtest.rev
cd tmp/B2G/
rm -rf out/
cat ~/Dropbox/Public/Firefox_OS/LGFW_D300/gtest.rev
cd external/gtest/
git rev-parse HEAD
cd ..
cd gtest/
git rev-parse HEAD
cd ..
rm -rf gtest/
cd gtest && git rev-parse HEAD
grep 'gtest' ../.repo/manifest.xml 
cd giflib/
cd ..
cat ~/Dropbox/Public/Firefox_OS/LGFW_D300/gtest.rev
rm -rf giflib/
cd gtest/
git rev-parse HEAD
cd ..
rm -rf gtest/
cp ../.repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.5.xml
grep '8c212ebe53bb2baab3575f03069016f1fb11e449' ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.5.xml
grep '8c212ebe53bb2baab3575f03069016f1fb11e449' ../.repo/manifest.xml
cd gtest/
git rev-parse HEAD
vim .Xresources 
cd Downloads/
cd linuxmint/
ls
gpg --verify sha256sum.txt.gpg 
gpg --verify sha256sum.txt.gpg sha256sum.txt
gpg --recv-keys 0FF405B2
gpg --verify sha256sum.txt.gpg sha256sum.txt
cat sha256sum.txt
grep linuxmint-17.2-mate-64bit.iso sha256sum.txt
grep linuxmint-17.2-mate-64bit.iso sha256sum.txt | sha256sum -c
cd ..
mkdir manjaro
mv manjaro-i3-openrc-15.11-x86_64.iso.md5 manjaro-i3-openrc-15.11-x86_64-pkgs.txt manjaro
l. manjaro
cd
cd tmp/B2G/
find .repo/ -name "*.xml"
vim .repo/manifest.xml 
cp .repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo leo.xml
grep '8c212ebe53bb2baab3575f03069016f1fb11e449' .repo/manifest.xml 
vim .repo/manifest.xml 
./repo sync -d
grep '8c212ebe53bb2baab3575f03069016f1fb11e449' .repo/manifest.xml 
./repo sync -d
grep '8c212ebe53bb2baab3575f03069016f1fb11e449' .repo/manifest.xml 
ANDROIDFS_DIR=/home/joaomanoel/tmp/B2G/backup-leo BRANCH=v2.5 ./config.sh leo leo.xml
vim .repo/manifest.xml 
./repo sync -d
VARIANT=eng MOZILLA_OFFICIAL=1 B2G_SYSTEM_APPS=1 GAIA_OPTIMIZE=1 B2G_UPDATER=1 B2G_UPDATE_CHANNEL=default MOZ_TELEMETRY_REPORTING=1 MOZ_CRASHREPORTER_NO_REPORT=1 LOCALES_FILE=locales/languages_all.json GAIA_KEYBOARD_LAYOUTS=en,pt-BR,es,de,fr,pl,zh-Hans-Pinyin,zh-Hant-Zhuyin,en-Dvorak ./build.sh
rm -rf out/
git pull
cat <<EOF>log.txt
host C++: aapt <= frameworks/base/tools/aapt/CrunchCache.cpp
In file included from frameworks/base/include/utils/AssetManager.h:25:0,
                 from frameworks/base/tools/aapt/AaptAssets.h:10,
                 from frameworks/base/tools/aapt/AaptAssets.cpp:5:
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = android::sp<AaptSymbols>]’:
frameworks/base/tools/aapt/AaptAssets.h:446:59:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
     ssize_t i = indexOfKey(key);
                               ^
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, android::sp<AaptSymbols> >’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = android::sp<AaptGroup>]’:
frameworks/base/tools/aapt/AaptAssets.cpp:1636:41:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, android::sp<AaptGroup> >’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = android::sp<AaptDir>]’:
frameworks/base/tools/aapt/AaptAssets.cpp:1700:53:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, android::sp<AaptDir> >’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
make: ** [out/host/linux-x86/obj/EXECUTABLES/aapt_intermediates/AaptAssets.o] Erro 1
make: ** Esperando que outros processos terminem.
In file included from frameworks/base/tools/aapt/FileFinder.h:14:0,
                 from frameworks/base/tools/aapt/CrunchCache.cpp:12:
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = android::sp<AaptSymbols>]’:
frameworks/base/tools/aapt/AaptAssets.h:446:59:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
     ssize_t i = indexOfKey(key);
                               ^
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, android::sp<AaptSymbols> >’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String16; VALUE = unsigned int]’:
frameworks/base/tools/aapt/ResourceTable.h:485:100:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String16, unsigned int>’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = long int]’:
frameworks/base/tools/aapt/CrunchCache.cpp:101:87:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, long int>’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
make: ** [out/host/linux-x86/obj/EXECUTABLES/aapt_intermediates/CrunchCache.o] Erro 1
In file included from frameworks/base/include/utils/AssetManager.h:25:0,
                 from frameworks/base/tools/aapt/AaptAssets.h:10,
                 from frameworks/base/tools/aapt/Main.h:14,
                 from frameworks/base/tools/aapt/Command.cpp:6:
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String8; VALUE = android::sp<AaptSymbols>]’:
frameworks/base/tools/aapt/AaptAssets.h:446:59:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
     ssize_t i = indexOfKey(key);
                               ^
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String8, android::sp<AaptSymbols> >’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
frameworks/base/include/utils/KeyedVector.h: In instantiation of ‘const VALUE& android::DefaultKeyedVector<KEY, VALUE>::valueFor(const KEY&) const [with KEY = android::String16; VALUE = unsigned int]’:
frameworks/base/tools/aapt/ResourceTable.h:485:100:   required from here
frameworks/base/include/utils/KeyedVector.h:196:31: error: ‘indexOfKey’ was not declared in this scope, and no declarations were found by argument-dependent lookup at the point of instantiation [-fpermissive]
frameworks/base/include/utils/KeyedVector.h:196:31: note: declarations in dependent base ‘android::KeyedVector<android::String16, unsigned int>’ are not found by unqualified lookup
frameworks/base/include/utils/KeyedVector.h:196:31: note: use ‘this->indexOfKey’ instead
make: ** [out/host/linux-x86/obj/EXECUTABLES/aapt_intermediates/Command.o] Erro 1

real0m38.382s
user0m14.158s
system/0m9.955s

> Build failed! <

Build with |./build.sh -j1| for better messages
If all else fails, use |rm -rf objdir-gecko| to clobber gecko and |rm -rf out| to clobber everything else.

EOF

cp log.txt ~/Dropbox/Public/Firefox_OS/LGFW_D300/
cd Downloads/
mkdir manjaro
mv manjaro* manjaro
l. manjaro/
mkdir fedora-science
mv Fedora-Spins-x86_64-23-CHECKSUM fedora-science/
ls
mkdir debian
mv debian* debian
mv SHA256SUMS* debian/
ls
lo. bunsenlabs/
l. bunsenlabs/
cd debian/
ls
cd
sudo invoke-rc.d mdm stop 
sudo invoke-rc.d mdm start
sudo apt-get install '^gcc-4.6.*' g++-4.6 g++-4.6-multilib
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 0
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 0
sudo update-alternatives --set g++ '/usr/bin/g++-4.6'
sudo update-alternatives --set gcc '/usr/bin/gcc-4.6'
gcc --version
g++ --version
make --version
java -version
dpkg -l | grep default
sudo apt-get install oracle-java6-set-default 
java -version
javac -version
rm -rf out/
pwd
cat build/core/combo/TARGET_linux-arm.mk 
cat build/core/combo/TARGET_linux-arm.mk  | grep prebuilt
cat ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml
cmp KeyedVector.h.patch ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h
cmp KeyedVector.h.patch ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.patch 
cat frameworks/base/include/utils/KeyedVector.h
tail -10 frameworks/base/include/utils/KeyedVector.h
tail -15 frameworks/base/include/utils/KeyedVector.h
tail -15 ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.old 
less build/core/combo/TARGET_linux-arm.mk 
tail -15 frameworks/base/include/utils/KeyedVector.h
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.old frameworks/base/include/utils/KeyedVector.h
rm frameworks/base/include/utils/KeyedVector.h.rej 
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.old frameworks/base/include/utils/KeyedVector.h
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.old frameworks/base/include/utils/KeyedVector.h 
sync
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.patch KeyedVector.h.patch 
vi build.sh 
l. prebuilts/
l. prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/
l. prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc --version
prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc --version
prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-g++ --version
g++ --version
gcc --version
make --version
java -version
javac -version
tail -15 frameworks/base/include/utils/KeyedVector.h
tail -15 frameworks/base/include/utils/KeyedVector.h 
java -version
cd tmp/B2G/
BRANCH=v2.2 ./config.sh leo leo.xml
git pull
./repo sync -d

make --version
gcc --version
g++ --version
./build.sh 
rm -rf o*
grep 'j1' ./build.sh 
grep 'make' ./build.sh 
./build.sh 
cd external/gtest/
git rev-parse HEAD
git checkout --help
git rebase --help
git show
cd ..
rm -rf external/gtest/
cat ~/Dropbox/Public/Firefox_OS/LGFW_D300/gtest.rev 
vi .repo/manifest.xml 
./repo sync
rm -rf o&
rm -rf o*
./build.sh 
./build.sh gecko
cd prebuilt/linux-x86
l.
l. toolchain/arm-linux-androideabi-4.4.x/
l. toolchain/arm-linux-androideabi-4.4.x/bin/arm-linux-androideabi-g++
file toolchain/arm-linux-androideabi-4.4.x/bin/arm-linux-androideabi-g++
cd ..
l. prebuilt/teste.git/.git/
cd prebuilt/linux-x86/toolchain/
git clone git://codeaurora.org/quic/la/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7
l. arm-linux-androideabi-4.7/
cd arm-linux-androideabi-4.7/
cd ../arm-linux-androideabi-4.4.x/
l.
cd ../arm-linux-androideabi-4.7/
git checkout 
cd ..
l.
git log 
git branch 
git status 
git checkout 
grep prebuilt ../leo.xml 
grep prebuilt ../.repo/manifest.xml 
grep prebuilt -r ../.repo/
cd ..
rm -rf prebuilt/
l. prebuilt/
l. prebuilt/linux-x86/
l. prebuilt/linux-x86/toolchain/
l. prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/
rm -rf o*
cat ~/Dropbox/Public/Firefox_OS/LGFW_D300/gtest.rev 
rm -rf external/gtest/
vi .repo/manifest.xml 
cp .repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml 
dropbox start
dropbox status
./repo sync
java -version
javac -version
./prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-gcc --version
./prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-g++ --version
java -version
javac -version
atril ~/Downloads/Contracheque.pdf 
l. gecko/
l. gecko/python/
l. gecko/python/rsa/
l. gecko/python/
l. gecko/python/eme/
l. gecko/python/jsmin/
l. gecko/python/PyECC/
l. gecko/python/
l. gecko/python/mock-1.0.0/
mv o* ..
gcc --version
g++ --version
cd
cd Dropbox/Public/Firefox_OS/LGFW_D300/
vi KeyedVector.h 
cp KeyedVector.h KeyedVector.h.orig
vi KeyedVector.h 
mv KeyedVector.h KeyedVector.h.new
mv KeyedVector.h.orig  KeyedVector.h
diff KeyedVector.h KeyedVector.h.new 
diff --help KeyedVector.h KeyedVector.h.new
diff --help | grep patch
diff --help
diff --git KeyedVector.h KeyedVector.h.new
diff KeyedVector.h KeyedVector.h.new
diff KeyedVector.h KeyedVector.h.new > KeyedVector.h.patch
cp KeyedVector.h KeyedVector.h.old
patch -p < KeyedVector.h.patch 
patch -p0 < KeyedVector.h.patch 
patch -p0 KeyedVector.h.patch 
patch -h
patch --help
patch -p0 KeyedVector.h.patch < KeyedVector.h
patch KeyedVector.h KeyedVector.h.patch 
cmp KeyedVector.h KeyedVector.h.new 
cat KeyedVector.h
cat KeyedVector.h.old 
cat KeyedVector.h
patch KeyedVector.h KeyedVector.h.patch 
cat KeyedVector.h
echo 'patch KeyedVector.h KeyedVector.h.patch' > KeyedVector.h.cmdpatch
cat KeyedVector.h.cmdpatch 
cd
cd tmp/B2G/
vi build.sh
cp build.sh ~/Dropbox/Public/Firefox_OS/LGFW_D300/build_v2.2.sh 
cat build.sh 
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/KeyedVector.h.patch .
vi build.sh
cp build.sh ~/Dropbox/Public/Firefox_OS/LGFW_D300/build_v2.2.sh 
l. o*
l.
gcc --version
g++ --version
make --version
java -version
javac -version
l. out/
l. out/target/
l. out/target/product/
l. out/target/product/leo/
l. out/target/product/leo/system/
l. out/target/product/leo/system/etc/
l. out/target/product/leo/system/etc/security/
l. out/target/product/leo/system/
l. out/target/product/leo/
l. out/target/product/leo/data/
l. out/target/product/leo/obj/
l. out/target/product/leo/obj/EXECUTABLES/
l. out/target/product/leo/obj/EXECUTABLES/toolbox_intermediates/
vi build.sh 
vi .repo/manifest.xml 
cp .repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml 
rm -rf prebuilts/
vi build.sh 
./repo sync
./repo sync --force-sync prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8
BRANCH=v2.2 ./config.sh leo leo.xml
git pull
df -h
man time
time nice
time nice -n19 ls
time nice -n1 ls
git clone --help
git rev-parse
git rev-parse --help
git rev-list --help
rm -rf out/
l. bootable/recovery/
cd bootable/recovery/
git rev-parse HEAD
cd ..
cd bootable/recovery/
git rev-parse HEAD
cd ..
cd external/gtest/
git rev-parse HEAD
cd ..
sudo update-alternatives --set gcc '/usr/bin/gcc-4.7'
sudo update-alternatives --set g++ '/usr/bin/g++-4.7'
/home/joaomanoel/tmp/B2G/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/bin/arm-linux-androideabi-g++ --version
/home/joaomanoel/tmp/B2G/prebuilt/linux-x86/toolchain/arm-linux-androideabi-4.4.x/arm-linux-androideabi/bin/g++ --version
ls /home/joaomanoel/tmp/B2G/prebuilt/linux-x86/toolchain/
ls /home/joaomanoel/tmp/B2G/prebuilt/linux-x86/
ls /home/joaomanoel/tmp/B2G/prebuilt/linux-x86/toolchain/
grep toolchain leo.xml 
grep toolchain .repo/manifest.xml 
grep toolchain config.sh 
grep arm-linux-androideabi -r .
cd prebuilt/
l.
l. linux-x86_64/
l. linux-x86
l. linux-x86/
l. linux-x86/toolchain/
l.
cat .git/config 
cd ..
grep prebuilt leo.xml 
grep prebuilt .repo/manifest.xml 
cd prebuilt/
git branch 
git rev-parse HEAD
git log 
git status 
git pull
cat .git/config 
git clone git://codeaurora.org/platform/prebuilt teste.git
lçs
ls
l.
l. linux-x86/
l. linux-x86/toolchain/
l. linux-x86/toolchain/i686-unknown-linux-gnu-4.2.1/
linux-x86/toolchain/i686-unknown-linux-gnu-4.2.1/bin/i686-unknown-linux-gnu-g++
linux-x86/toolchain/i686-unknown-linux-gnu-4.2.1/bin/i686-unknown-linux-gnu-g++ --version
cd ..
rm -rf teste.git/
cd ..
vim leo.xml 
git pull
BRANCH=v2.2 ./config.sh leo leo.xml
vi leo.xml 
du -h bionic/

BRANCH=v2.2 ./config.sh leo leo.xml
vi leo.xml 
BRANCH=v2.2 ./config.sh leo leo.xml
grep 4.7 leo.xml 
vi leo.xml 
mv prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.8/ prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/
prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-gcc --version
prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-g++ --version
./build.sh 
gcc --verison
gcc --versison
gcc --version
sudo update-alternatives --set g++ '/usr/bin/g++-4.6'
sudo update-alternatives --set gcc '/usr/bin/gcc-4.6'
gcc --version
g++ --version
./build.sh gecko
rm -rf prebuilts/
git pull
BRANCH=v2.2 ./config.sh leo leo.xml
man make
vi build.sh 
./build.sh gecko
/home/joaomanoel/tmp/B2G/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.7/bin/arm-linux-androideabi-g++ --version
cd objdir-gecko/
cd ..
sudo update-alternatives --set gcc '/usr/bin/gcc-4.7'
sudo update-alternatives --set g++ '/usr/bin/g++-4.7'
./build.sh gecko
./build.sh
rm -rf out/
sudo update-alternatives --set gcc '/usr/bin/gcc-4.7'
sudo update-alternatives --set g++ '/usr/bin/g++-4.7'
sudo update-alternatives --set gcc '/usr/bin/gcc-4.6'
sudo update-alternatives --set g++ '/usr/bin/g++-4.6'
./build.sh
rm -rf out/
sudo update-alternatives --set g++ '/usr/bin/g++-4.7'
sudo update-alternatives --set gcc '/usr/bin/gcc-4.7'
./build.sh
vim frameworks/base/include/utils/KeyedVector.h 
cp frameworks/base/include/utils/KeyedVector.h ~/Dropbox/Public/Firefox_OS/LGFW_D300/
mv ~/Downloads/0001-Fix-build-for-gcc-4.7-and-later.patch ~/Dropbox/Public/Firefox_OS/LGFW_D300/
dropbox status
rm -rf out/
gcc --version
g++ --version
javac -version
java -version
sudo update-java-alternatives -l
sudo update-java-alternatives -s java-7-oracle
java -version
javac -version
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
echo $JAVA_HOME 
rm -rf o*
./build.sh 
export JAVA_HOME=
unset JAVA_HOME
echo $JAVA_HOME
./build.sh 
source build/envsetup.sh force
export JAVA_HOME=/usr/lib/jvm/java-7-oracle
./build.sh 
vi build.sh 
l. frameworks/
l. frameworks/base/
du -h frameworks/base/
vi patches/patch.sh 
vi patches/vendorsetup.sh 
cd frameworks/base/
l.
git rev-parse HEAD
cd ..
vi .repo/manifest.xml 
cp .repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml 
rm -rf frameworks/base/
./repo sync
cd frameworks/base/
git rev-parse HEAD
cat include/utils/KeyedVector.h 
cd ..
gcc --version
g++ --version
make --version
java -version
javac -version
echo $JAVA_HOME 
cp build.sh ~/Dropbox/Public/Firefox_OS/LGFW_D300/build_v2.2.sh
cp config.sh ~/Dropbox/Public/Firefox_OS/LGFW_D300/config_v2.2.sh
dropbox status
./build.sh
vi .repo/manifest.xml 
rm -rf frameworks/base/
cp .repo/manifest.xml ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml 
./repo sync
./build.sh
vi build.sh 
./build.sh
sudo apt-get install '^g++-4.8.*$'
sudo apt-get install '^g++\-4\.8.*$'
sudo apt-get install '^g++-4.8.*'
sudo apt-get install '^g\+\+\-4\.8.*$'
sudo apt-get install g++-4.8 g++-4.8-arm-linux-gnueabihf g++-4.8-multilib g++-4.8-multilib-arm-linux-gnueabihf
sudo apt-get install g++-4.8 g++-4.8-arm-linux-gnueabihf g++-4.8-multilib g++-4.8-multilib-arm-linux-gnueabihf gcc-4.8 gcc-4.8-arm-linux-gnueabihf gcc-4.8-arm-linux-gnueabihf-base gcc-4.8-base gcc-4.8-doc gcc-4.8-locales gcc-4.8-multilib gcc-4.8-multilib-arm-linux-gnueabihf gcc-4.8-plugin-dev gcc-4.8-source
sudo update-alternatives --config gcc
sudo update-alternatives --config g++
AGC
AGI
gcc --version
g++ --version
./build.sh 
cp ~/Dropbox/Public/Firefox_OS/LGFW_D300/manifest_v2.2.xml .repo/manifest.xml && rm -rf external/gtest/ prebuilts/ out/ objdir-gecko/ && ./repo sync
./build.sh 
vi ./build.sh
./build.sh 
./build.sh gecko
vi gecko/configure.in 
vi gecko/js/src/configure.in 
vi gecko/configure.in 
vi gecko/config/gcc
vi gecko/js/src/configure.in 
find gecko/ -name '*gcc_hidden*'
vi gecko/js/src/configure.in 
vi gecko/configure
cd
cd Downloads/
mkdir ubuntu
mv ubuntu-14.04.3-desktop-amd64.iso.torrent ubuntu-14.04.3-desktop-amd64.iso.zsync ubuntu-14.04.3-desktop-amd64.list ubuntu-14.04.3-desktop-amd64.manifest ubuntu-14.04.3-desktop-amd64.metalink SHA256SUMS SHA256SUMS.gpg ubuntu
l
l. ubuntu
cd ubuntu/
l.
zsync -u 'http://mirror.pop-sc.rnp.br/mirror/ubuntu-releases/14.04.3/' ubuntu-14.04.3-desktop-amd64.iso.zsync 
l.
gpg --verify SHA256SUMS.gpg SHA256SUMS
gpg --recv-keys FBB75451
gpg --recv-keys EFE21092 FBB75451
gpg --verify SHA256SUMS.gpg SHA256SUMS
gpg --verify SHA256SUMS.gpg
l.
grep ubuntu-14.04.3-desktop-amd64 SHA256SUMS
grep ubuntu-14.04.3-desktop-amd64 SHA256SUMS | sha256sum -c
alsamixer 
l.
cd
cd tmp/B2G/
l. out/
l. out/target/
l. out/target/product/
l. out/target/product/leo/
l. objdir-gecko/
l. gecko/
find ./gecko/ -name UnifiedBindings26.o
find ./gecko/ -name "*UnifiedBindings26*"
find ./objdir-gecko/ -name UnifiedBindings26.o
l. gecko/dom/bindings/
l. objdir-gecko/dom/bindings/
l. -t objdir-gecko/
l. out/target/product/leo/
cd gecko/
cd
cd Downloads/
cd ubuntu/
ls
sudo apt-get install unetbootin unetbootin-translations
unetbootin --help
man unetbootin 
sudo apt-get install extlinux 
sudo apt-get install syslinux syslinux-common syslinux-themes-ubuntu syslinux-themes-ubuntu-trusty
sudo apt-get install '^syslinux.*$'
dmesg | tail
sudo mount
sudo gparted /dev/sdd
sudo unetbootin 
gpg --verify SHA256SUMS.gpg SHA256SUMS
grep ubuntu-14.04.3-desktop-amd64.iso SHA256SUMS | sha256sum -c
mount | grep sdd
sudo mount
sudo mount /dev/sdd1 /mnt
l. /mnt
mount
s umount /mnt 
s sync
cd
cd tmp/B2G/
vi build.sh 
./build.sh 
vi build.sh 
./build.sh 
./build.sh
dmesg | tail
s rebo
s reboot
cd tmp/
rm -rf o*
cd B2G/
git pull
git stash 
git stash --help
git pull
cat config.sh 
grep revo config.sh 
BRANCH=v2.5 ./config.sh hamachi
cp /home/joaomanoel/tmp/B2G/.repo/repo/repo /home/joaomanoel/tmp/B2G/repo
BRANCH=v2.5 ./config.sh hamachi
rm -rf bionic/
BRANCH=v2.5 ./config.sh hamachi
rm -rf bionic/
rm -rf bionic
./repo sync -d --force-sync bionic
BRANCH=v2.5 ./config.sh hamachi

BRANCH=v2.5 ./config.sh hamachi
grep revo ./config.sh 
grep geek ./config.sh 
cd
clear
ln -s Meus_Projetos/my_shell_scripts/bin
inverte.sh 
inverte.sh 'kYR4FFf/elif/moc.evreselif.www//:ptth'
clear
http://lmth.vtzerawelifahnijnapuoidualaudpirdvdotsirced_setnaseohlim001/473bc214/5472619/elif/moc.derahs2.www//:ptth=lru?/sda/moc.sacidedsacid//:ptth
inverte.sh 'lmth.vtzerawelifahnijnapuoidualaudpirdvdotsirced_setnaseohlim001/473bc214/5472619/elif/moc.derahs2.www//:ptth'
clear
inverte.sh lmth.rar.odalbuD-p027-0102-oaeL-O-nor7T/d0lh5sj5b8nt/ten.daolpurb.www//:ptth
sudo passwd emanuela 
