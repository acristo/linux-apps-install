#!/bin/bash

#sudo apt-get install aptitude -y
sudo aptitude update
sudo aptitude install gkrellm

sudo aptitude install dkms

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

sudo aptitude update && sudo aptitude upgrade -y
sudo aptitude install -y jedit
sudo aptitude install -y jabref
sudo aptitude install -y inkscape
sudo aptitude install -y gimp
sudo aptitude install -y wine-stable
sudo aptitude install -y vlc

sudo aptitude install -y okular

# inst chromium
sudo aptitude install -y chromium-browser
