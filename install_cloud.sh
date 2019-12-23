#!/bin/bash
######################## cloud storage

### mega
sudo aptitude install libc-ares2 
sudo aptitude install libcrypto++6 
sudo aptitude install libmediainfo0v5 
sudo aptitude install libzen0v5 
#https://mega.nz/sync
sudo dpkg -i ~/Downloads/megasync-xUbuntu_18.04_amd64.deb

### dropbox
#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
#sudo aptitude install -y libpango1.0-0
#sudo dpkg -i dropbox_2019.02.14_amd64.deb

### ocamlfuse
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo apt-get update
sudo apt-get install google-drive-ocamlfuse
google-drive-ocamlfuse
mkdir ~/google-drive
google-drive-ocamlfuse ~/google-drive
df -h

### lrz (Care4C)

#wget https://syncandshare.lrz.de/client_deployment/LRZ_Sync_Share_Latest_amd64.deb
#sudo dpkg -i LRZ_Sync_Share_Latest_amd64.deb

### nextcloud
sudo add-apt-repository 'deb http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main'
sudo add-apt-repository 'deb-src http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main' 
sudo add-apt-repository ppa:nextcloud-devs/client
#Signing key:    4096R/1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 (What is this?) 
#Fingerprint:    1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 
sudo apt-get update
sudo aptitude install -y nextcloud-client

###### One cloud client for linux
## Rclone
# https://rclone.org/
curl https://rclone.org/install.sh | sudo bash

#### try to remove the following from the computer...
#sudo wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
#This command just added a repository, so you will have to tell your system to trust it. For that, use the following commands:
#sudo nano /etc/apt/sources.list.d/d-apt.list
#Now after the “deb” part of the first line, insert this:
#[trusted=yes]
sudo aptitude update && sudo aptitude -y install  d-apt-keyring
sudo aptitude update && sudo aptitude -y install dmd-compiler dub
sudo aptitude install onedrive
## Configuration
# After the program launch, it will download all of your files to a directory named OneDrive, which is created in your home directory. This section is only for those who want to change the destination directory or add exceptions to the files that get synced.
# Enter the following commands to create a configuration file for OneDrive:
mkdir -p ~/.config/onedrive
cp ~/onedrive/config ~/.config/onedrive/config
# And now edit it:
sudo nano ~/.config/onedrive/config
#### try to remove the previous from the computer...
