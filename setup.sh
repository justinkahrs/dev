#!/bin/bash
#
# Author: Justin Kahrs
#
# do an update
sudo apt-get update

# install these packages
sudo apt-get install vim git gdebi maven htop openvpn -y

# install npm and node via nvm 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash

# add umake repo,  install intellij and atom
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
sudo apt-get update
sudo apt-get install ubuntu-make -y
umake ide idea-ultimate
umake ide atom

# upgrade while we are at it
sudo apt-get upgrade -y

# remove anything we don't need
sudo apt-get autoremove -y

