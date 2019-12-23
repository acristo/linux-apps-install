#!/bin/bash
sudo aptitude update && sudo aptitude upgrade -y
cd ~/Downloads
#https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming
#download mendeleydesktop-1.19.4-linux-x86_64.tar.bz2
wget https://www.mendeley.com/autoupdates/installer/Linux-x64/stable-incoming/mendeleydesktop-1.19.4-linux-x86_64.tar.bz2
tar -xvjf mendeleydesktop-1.19.4-linux-x86_64.tar.bz2 
cd mendeleydesktop-1.19.4-linux-x86_64/bin
./mendeleydesktop
