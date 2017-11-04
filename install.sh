#!/bin/bash

# install for deb
apt update && apt upgrade

# install for CentosOS, RedHat
#yum update && yum upgrade

# Goodies
apt install tmux
apt install vim

# Install Go and create paths.
mkdir -p ~/src/go/{bin, pkg, src}
apt install golang-go

# Install stable version of Chrome.
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
apt install google-chrome-stable

exit

