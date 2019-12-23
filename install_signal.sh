#!/bin/bash

sudo aptitude install -y curl
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


