#!/bin/sh


apt update -y && apt install curl vim postgresql python3-pip virtualenv -y
wget https://raw.githubusercontent.com/karrug/files/master/vi/init.vim &&
mv init.vim /root/.vimrc &&
ln -s /usr/bin/vim /usr/bin/nvim &&

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update -y
apt-get install docker-ce -y
