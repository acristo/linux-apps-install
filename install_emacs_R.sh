#!/bin/bash

#sudo apt-get install aptitude -y

sudo add-apt-repository ppa:kelleyk/emacs 
sudo aptitude install -y emacs

sudo apt install apt-transport-https software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/'
sudo aptitude update 
sudo aptitude install -y r-base


# ess
# aptitude install -y ess 
# instalar directamente desde emacs

sudo aptitude install -y auctex
sudo aptitude install -y lyx
