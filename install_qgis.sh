#!/bin/bash
sudo add-apt-repository 'deb https://qgis.org/ubuntu-ltr bionic main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo aptitude update
sudo aptitude install -y qgis qgis-plugin-grass


### In case of keyserver errors add the qgis.org repository public key to your apt keyring, type:
# wget -O - https://qgis.org/downloads/qgis-2019.gpg.key | gpg --import
# gpg --fingerprint 51F523511C7028C3

### Should output:
### pub   rsa4096 2019-08-08 [SCEA] [expires: 2020-08-08]
###       8D5A 5B20 3548 E500 4487  DD19 51F5 2351 1C70 28C3
### uid           [unknown] QGIS Archive Automatic Signing Key (2019) <qgis-developer@lists.osgeo.org>

### After you have verified the fingerprint you can add the key to apt with:
# gpg --export --armor 51F523511C7028C3 | sudo apt-key add -

### Alternatively you can download the key from a keyserver and add the key to apt in one go (without manual fingerprint verification):
# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3

