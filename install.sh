#!/bin/bash

#sudo apt-get install aptitude -y
sudo aptitude update
sudo aptitude install gkrellm
sudo aptitude install -y build-essential
sudo aptitude install dkms

sudo aptitude update && sudo aptitude upgrade -y
sudo aptitude install -y mc
sudo aptitude install -y synaptic
sudo aptitude install -y krusader
sudo aptitude install -y filezilla
sudo aptitude install -y rar
sudo aptitude install -y p7zip
sudo aptitude install -y unace
sudo aptitude install -y telegram-desktop
sudo aptitude install -y dconf-tools |
sudo aptitude install -y software-properties-common
sudo aptitude install -y goldendict
sudo aptitude install -y git
sudo aptitude install -y mercurial
sudo aptitude install -y gpsbabel

sudo aptitude install -y jedit
sudo aptitude install -y jabref
sudo aptitude install -y inkscape
sudo aptitude install -y gimp
sudo aptitude install -y wine-stable
sudo aptitude install -y vlc

sudo aptitude install -y okular
sudo aptitude install -y curl

#https://launchpad.net/~phoerious/+archive/ubuntu/keepassxc
sudo add-apt-repository ppa:phoerious/keepassxc
sudo aptitude install keepassxc -y



#sudo aptitude install xubuntu-desktop

sudo add-apt-repository ppa:kelleyk/emacs | sudo aptitude install -y emacs
sudo apt install apt-transport-https software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo aptitude update 
sudo aptitude install -y r-base

# ess
# aptitude install -y ess 
# instalar directamente desde emacs

aptitude install -y auctex
aptitude install -y lyx


sudo aptitude install -y libclang-dev
cd ~/Downloads
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.2.5019-amd64.deb
sudo dpkg -i ./rstudio-1.2.5019-amd64.deb

#https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming
#download mendeleydesktop-1.19.4-linux-x86_64.tar.bz2
cd ~/Downloads
#wget https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming/mendeleydesktop-1.19.4-linux-x86_64.tar.bz2
tar -xvjf mendeleydesktop-1.19.4-linux-x86_64.tar.bz2 
./bin/mendeleydesktop

sudo add-apt-repository 'deb https://qgis.org/ubuntu-ltr bionic main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo aptitude update
sudo aptitude install qgis qgis-plugin-grass
#########################################################################################################################
# calibre
wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

# inst chromium
sudo aptitude install -y chromium-browser


# inst chrome
sudo aptitude install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo aptitude install -f # fix installation errors

######################## cloud storage

### mega
sudo aptitude install libc-ares2 
sudo aptitude install libcrypto++6 
sudo aptitude install libmediainfo0v5 
sudo aptitude install libzen0v5 
#https://mega.nz/sync
sudo dpkg -i ./Downloads/megasync-xUbuntu_18.04_amd64.deb

### dropbox
wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
aptitude install -y libpango1.0-0
dpkg -i dropbox_2019.02.14_amd64.deb

### ocamlfuse
add-apt-repository ppa:alessandro-strada/ppa
apt-get update
apt-get install google-drive-ocamlfuse
google-drive-ocamlfuse
mkdir ~/google-drive
google-drive-ocamlfuse ~/google-drive
df -h

### lrz (Care4C)
wget https://syncandshare.lrz.de/client_deployment/LRZ_Sync_Share_Latest_amd64.deb
dpkg -i LRZ_Sync_Share_Latest_amd64.deb

### nextcloud
#sudo add-apt-repository 'deb http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main'
#sudo add-apt-repository 'deb-src http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main' 
sudo add-apt-repository ppa:nextcloud-devs/client
Signing key:    4096R/1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 (What is this?) 
Fingerprint:    1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 
sudo apt-get update
sudo aptitude install -y nextcloud-client





###### One cloud client for linux
## Rclone
# https://rclone.org/
curl https://rclone.org/install.sh | sudo bash



###### pdf viwers and utilities
# pdf studio viewer
wget https://download.qoppa.com/pdfstudioviewer/PDFStudioViewer_linux64.sh
sh ./PDFStudioViewer_linux64.sh


## signal
# Step 1: Use curl to grab the repository key and install it to Ubuntu.
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
# Step 2: Add the third party software source to Ubuntu by using the echo command.
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
# Step 3: Using the apt update command, refresh Ubuntu’s package repositories and allow the third-party repo to set itself up.
sudo aptitude update
# Step 4: Install any pending software updates to your Linux PC with the upgrade command.
sudo aptitude upgrade -y
# Step 5: Install Signal to your Ubuntu PC with apt.
sudo aptitude install signal-desktop -y



########### java
aptitude install -y openjdk-8-jre

########### imageJ
wget https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
unzip Downloads/fij*.zip -d ~
alias fiji="~/Fiji.app/ImageJ-linux64"

########### ejecución de archivos java jlnp; icedtea-netx
sudo aptitude install icedtea-netx




########### sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo aptitude update && sudo aptitude install sublime-text -y


############ install firefox esr
sudo aptitude remove firefox
sudo add-apt-repository ppa:mozillateam/ppa
sudo aptitude update
sudo aptitude install firefox-esr


########################## virtualbox
add-apt-repository 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo aptitude update
sudo aptitude install virtualbox-6.0
####### firmar virtual box modules
# https://slimbook.es/tutoriales/linux/364-firmando-modulo-virtualbox-en-secureboot-uefi-solucion-a-kernel-driver-not-installed-rc-1908
# https://gist.github.com/kiasaki/5f4f491201d621d93a7d719f46e04009
modprobe vboxdrv
sudo aptitude update
sudo aptitude upgrade
sudo aptitude install mokutil
# Create signing keys
openssl req -new -x509 -newkey rsa:2048 -keyout MOK.priv -outform DER -out MOK.der -nodes -days 36500 -subj "/CN=Virt Box Key/"
# Sign the module (vboxdrv for this example)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vboxdrv)
# also sign: vboxnetadp vboxnetflt vboxpci
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vboxnetadp)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vboxnetflt)
sudo /usr/src/linux-headers-$(uname -r)/scripts/sign-file sha256 ./MOK.priv ./MOK.der $(modinfo -n vboxpci)
# Register the keys to Secure Boot
sudo mokutil --import MOK.der
# Por último, reiniciamos el ordenador. Nos aparecerá una pantalla azul con una espera de teclado, pulsa la tecla que te pide para interrumpir el arranque.


######## fonts intall
# https://www.ostechnix.com/install-microsoft-windows-fonts-ubuntu-16-04/
sudo aptitude install ttf-mscorefonts-installer -y
fc-cache -f -v


############### Video editor
# https://itsfoss.com/best-video-editing-software-linux/#blender
### Installing VidCutter
sudo add-apt-repository ppa:ozmartian/apps
sudo aptitude update
sudo aptitude install vidcutter
### Installing OpenShot
# OpenShot is also available in the repositories of all major Linux distributions. You can simply search for it in your software center. You can also get it from its official website.
sudo aptitutde install openshot
# https://www.blender.org/thanks/
### Installing Kdenlive
# Kdenlive is available for all major Linux distributions. You can simply search for it in your software center. Various packages are available in the download section of Kdenlive website.
sudo aptitude install kdenlive

######### video screen recorder
# https://www.linuxadictos.com/grabar-pantalla.html
## vokoscreen
sudo aptitude update && sudo aptitude install vokoscreen  -y

# text mdb utility
# https://bioinf.shenwei.me/csvtk/
## https://github.com/shenwei356/csvtk/releases
wget https://github.com/shenwei356/csvtk/releases/download/v0.19.1/csvtk_linux_amd64.tar.gz
tar -zxvf *.tar.gz
sudo cp csvtk /usr/local/bin/


## to prevent aye suffering
# https://www.ostechnix.com/safeeyes-an-useful-linux-utility-that-prevents-eye-strain/
sudo add-apt-repository ppa:slgobinath/safeeyes
sudo aptitude update && sudo aptitude install safeeyes -y

## to adjust monitor brigthness
https://www.ostechnix.com/how-to-adjust-monitor-brightness-from-command-line-in-linux/
https://unix.stackexchange.com/questions/356730/how-to-create-keyboard-shortcuts-for-screen-brightness-in-xubuntu-xfce-ubuntu/499429
https://askubuntu.com/questions/715306/xbacklight-no-outputs-have-backlight-property-no-sys-class-backlight-folder/1060843#1060843

# zotero
sudo add-apt-repository ppa:smathot/cogscinl
sudo aptitude update
sudo aptitude install zotero-standalone 
 
# trello
# https://www.maketecheasier.com/get-trello-desktop-client-linux/
  


######## docker
