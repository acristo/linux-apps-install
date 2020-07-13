#!/bin/bash
######################## cloud storage

##############################################################################################################
### mega
sudo aptitude install libc-ares2 
sudo aptitude install libcrypto++6 
sudo aptitude install libmediainfo0v5 
sudo aptitude install libzen0v5 
#https://mega.nz/sync
sudo dpkg -i ~/Downloads/megasync-xUbuntu_18.04_amd64.deb

##############################################################################################################
### dropbox
#wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2019.02.14_amd64.deb
#sudo aptitude install -y libpango1.0-0
#sudo dpkg -i dropbox_2019.02.14_amd64.deb

##############################################################################################################
### ocamlfuse
sudo add-apt-repository ppa:alessandro-strada/ppa
sudo aptitude update
sudo aptitude install google-drive-ocamlfuse
google-drive-ocamlfuse
mkdir ~/google-drive
google-drive-ocamlfuse ~/google-drive
df -h

##############################################################################################################
### lrz (Care4C)

#wget https://syncandshare.lrz.de/client_deployment/LRZ_Sync_Share_Latest_amd64.deb
#sudo dpkg -i LRZ_Sync_Share_Latest_amd64.deb

##############################################################################################################
### nextcloud
sudo add-apt-repository 'deb http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main'
sudo add-apt-repository 'deb-src http://ppa.launchpad.net/nextcloud-devs/client/ubuntu bionic main' 
sudo add-apt-repository ppa:nextcloud-devs/client
#Signing key:    4096R/1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 (What is this?) 
#Fingerprint:    1FCD77DD0DBEF5699AD2610160EE47FBAD3DD469 
sudo aptitude update
sudo aptitude install -y nextcloud-client


##############################################################################################################
###### One cloud client for linux
## Rclone
# https://rclone.org/
curl https://rclone.org/install.sh | sudo bash

##############################################################################################################
### sync one-drive with RClone ######################################################
#### https://itsfoss.com/use-onedrive-linux-rclone/
############### Sync Microsoft OneDrive in Linux with rclone ########################

# Using Rclone in Linux is not that complicated but requires some patience and familiarity with the Linux terminal. You need to tweak the configuration a little to make it work. Let’s see how to do that.

### Step 1: Install Rclone
# I am using Ubuntu 20.04 in this tutorial but you should be able to follow this tutorial in pretty much any Linux distribution. Just the rclone installation instruction could be different but the rest of steps remains the same.
# In Debian/Ubuntu based distributions use:
sudo aptitude install rclone

### Step 2: Adding new remote
# Once you have installed rclone successfully, you need to configure rclone. Enter the following command in the terminal:
rclone config

### Step 3: Select cloud service you want to sync with rclone
# After entering name and hitting enter, you will see a list of cloud services like Google cloud storage, Box, One Drive and others.
# You have to enter the number of the service you want to use. In this case, it’s ‘One Drive’. Make sure you enter the correct number.

### Step 4: Login to OneDrive account
# When you enter ‘y’ and hit enter, your default browser will open and here you have to log into your Microsoft account. And if it asks for permission click on ‘yes’.

### Step 5: Enter account type
# Now you have to select account type. For most of the users it will be the first one, ‘One drive Personal or business’. I believe it is personal so go with 1.

### Step 5: Mounting OneDrive int file manager
# Create folder in your home directory where you will mount OneDrive. I will name the folder “OneDrive”. You can name it whatever you want, but please make sure you change the name to yours in the commands.
# Create a new folder with mkdir command in your home directory or wherever you want:

mkdir ~/OneDrive

# Now you have to use the following command:

rclone --vfs-cache-mode writes mount "onedrive":  ~/onedrive.Disk.IUGFS

# In above command “one drive” is the name of the “remote”, so you should use the correct name there if yours is different. You can check the name of the “remote” in step 2 of this tutorial.
# This command will mount one drive in given location and will continue to run in terminal. When you stop the process with,ctrl + c the one drive will be unmounted.
# To mount one drive on startup, follow the next step below.

### Step 6: Mount One Drive on startup
# Every Linux distribution gives some way to manage startup application. I am using Ubuntu’s Startup Application Preferences tool here.
# Open “Startup Applications“. And click on “Add“. Now, in the command field, enter the following:

sh -c "rclone --vfs-cache-mode writes mount \"onedrive\": ~/onedrive.Disk.IUGFS"

##############################################################################################################
##############################################################################################################
## https://rclone.org/onedrive/ ## manual for use
# List directories in top level of your OneDrive
rclone lsd onedrive:

# List all the files in your OneDrive
rclone ls onedrive:

# To copy a local directory to an OneDrive directory called backup
rclone copy /home/source onedrive:Disk.IUGFS
