#!/bin/bash
sudo add-apt-repository 'deb https://qgis.org/ubuntu-ltr bionic main'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 51F523511C7028C3
sudo aptitude update
sudo aptitude install -y qgis qgis-plugin-grass
