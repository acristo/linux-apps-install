#!/bin/bash

sudo apt-get install aptitude -y
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
sudo aptitude install -y dconf-tools
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
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
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

sudo add-apt-repository 'deb https://qgis.org/ubuntu-ltr focal main'
wget -qO - https://qgis.org/downloads/qgis-2020.gpg.key | sudo gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/qgis-archive.gpg --import
sudo chmod a+r /etc/apt/trusted.gpg.d/qgis-archive.gpg
sudo aptitude update
sudo aptitude install qgis qgis-plugin-grass
#########################################################################################################################
# calibre
#wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

# inst chromium
sudo aptitude install -y chromium-browser


# inst chrome
sudo aptitude install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
sudo aptitude install -f # fix installation errors
cali
######################## cloud storage

### mega
#sudo aptitude install libc-ares2 
#sudo aptitude install libcrypto++6 
#sudo aptitude install libmediainfo0v5 
#sudo aptitude install libzen0v5 
#https://mega.nz/sync
#sudo dpkg -i ./Downloads/megasync-xUbuntu_18.04_amd64.deb

### dropbox
#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
#aptitude install -y libpango1.0-0
#dpkg -i dropbox_2019.02.14_amd64.deb

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
#wget https://download.qoppa.com/pdfstudioviewer/PDFStudioViewer_linux64.sh
#sush ./PDFStudioViewer_linux64.sh


## signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

########### java
aptitude install -y openjdk-8-jre

########### imageJ
#wget https://downloads.imagej.net/fiji/latest/fiji-linux64.zip
#unzip Downloads/fij*.zip -d ~
#alias fiji="~/Fiji.app/ImageJ-linux64"

########### sublime
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#sudo apt-get install apt-transport-https
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo aptitude update && sudo aptitude install sublime-text -y

########################## virtualbox
add-apt-repository 'deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian focal contrib'
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo aptitude update
sudo aptitude install virtualbox

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

# text utility
# https://bioinf.shenwei.me/csvtk/
## https://github.com/shenwei356/csvtk/releases
wget https://github.com/shenwei356/csvtk/releases/download/v0.19.1/csvtk_linux_amd64.tar.gz
tar -zxvf *.tar.gz
sudo cp csvtk /usr/local/bin/

## to prevent aye suffering
# https://www.ostechnix.com/safeeyes-an-useful-linux-utility-that-prevents-eye-strain/
sudo add-apt-repository ppa:slgobinath/safeeyes
sudo aptitude update && sudo aptitude install safeeyes -y

