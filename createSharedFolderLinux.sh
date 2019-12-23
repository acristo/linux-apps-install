#!/bin/bash

https://www.tecmint.com/create-a-shared-directory-in-linux/

# create folder
sudo mkdir /home/shared

# create group shared
sudo groupadd shared

# add users to group shared
sudo usermod -a -G shared cristobal
#sudo usermod -a -G sudo geek # or to group sudo

# change the group of folder to shared
sudo chgrp -R shared /home/shared/

# change permisions to shared folder
sudo chmod -R 774 /home/shared/

##### logout required to adquire permisions for the new folder###
