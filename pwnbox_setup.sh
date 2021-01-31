#!/bin/bash

#-----------------#
# Install as root |
#-----------------#

# Switch to root
sudo su
cd

# Update and Upgrade
apt --assume-yes update
apt --assume-yes upgrade

# Python
apt --assume-yes install python-is-python3

# Pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py

# Docker
<<<<<<< HEAD
apt --assume-yes update
apt --assume-yes install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt --assume-yes install docker-ce docker-ce-cli containerd.io
=======
sudo apt --assume-yes update
sudo apt --assume-yes install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt --assume-yes install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker ${USER}
>>>>>>> 9c1718c140516b87b624f699481c7542472364ab

# Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Vim
apt --assume-yes install vim

# vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
apt --assume-yes install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt --assume-yes update
apt --assume-yes install sublime-text

# Powerline fonts
apt --assume-yes install fonts-powerline

# Zsh
apt --assume-yes install zsh

# tmux
apt --assume-yes install tmux

# Oh My tmux
apt --assume-yes install git
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Pwntools
apt --assume-yes update
apt --assume-yes install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
pip install --upgrade pip
pip install --upgrade pwntools

# Pwndbg
git clone https://github.com/pwndbg/pwndbg
./pwndbg/setup.sh

# OneGadget
apt --assume-yes install ruby
gem install one_gadget

# GCC Multilib
apt --assume-yes install gcc-multilib

# Z3
pip install z3-solver

# angr
apt --assume-yes install python3-dev libffi-dev build-essential virtualenvwrapper
pip install angr

# PyCryptodome
pip install pycryptodome

# Go
wget https://golang.org/dl/go1.15.7.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.15.7.linux-amd64.tar.gz
rm go1.15.7.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile

# ffuf
go get -u github.com/ffuf/ffuf

# httprobe
go get -u github.com/tomnomnom/httprobe

# assetfinder
go get -u github.com/tomnomnom/assetfinder

# waybackurls
go get github.com/tomnomnom/waybackurls

# GoWitness
go get -u github.com/sensepost/gowitness

# ExifTool
apt --assume-yes install libimage-exiftool-perl

# Binwalk
apt --assume-yes install binwalk

# jsteg
go get lukechampine.com/jsteg

# zsteg
gem install zsteg

# Scapy
pip install scapy

# Nmap
apt --assume-yes install nmap

# Nikto
apt --assume-yes install nikto

# Updog
pip install updog

#------------------#
# Download as user |
#------------------#

# Switch to user
exit
cd
mkdir Arsenal

# Sherlock
git clone https://github.com/sherlock-project/sherlock.git ~/Arsenal
python -m pip install -r ~/Arsenal/sherlock/requirements.txt

# php-reverse-shell.php
mkdir ~/Arsenal/php-reverse-shell
wget https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php -O ~/Arsenal/php-reverse-shell.php

# rockyou.txt
mkdir ~/Arsenal/rockyou
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt -O ~/Arsenal/rockyou/rockyou.txt

# SecLists
git clone https://github.com/danielmiessler/SecLists.git ~/Arsenal

# WinPEAS and LinPEAS
git clone https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite.git ~/Arsenal

# pspy
git clone https://github.com/DominicBreuker/pspy.git ~/Arsenal

# ASCII art
cat << "EOF"


   _____                            _       _                           
  / ____|                          | |     | |                          
 | |     ___  _ __   __ _ _ __ __ _| |_ ___| |                          
 | |    / _ \| '_ \ / _` | '__/ _` | __/ __| |                          
 | |___| (_) | | | | (_| | | | (_| | |_\__ \_|                          
  \_____\___/|_| |_|\__, |_|  \__,_|\__|___(_)                          
                     __/ |                                              
                    |___/                                               
                                                                        
   _____      _                 ______ _       _     _              _ _ 
  / ____|    | |               |  ____(_)     (_)   | |            | | |
 | (___   ___| |_ _   _ _ __   | |__   _ _ __  _ ___| |__   ___  __| | |
  \___ \ / _ \ __| | | | '_ \  |  __| | | '_ \| / __| '_ \ / _ \/ _` | |
  ____) |  __/ |_| |_| | |_) | | |    | | | | | \__ \ | | |  __/ (_| |_|
 |_____/ \___|\__|\__,_| .__/  |_|    |_|_| |_|_|___/_| |_|\___|\__,_(_)
                       | |                                              
                       |_|                                              



EOF
