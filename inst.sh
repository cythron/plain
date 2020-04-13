#!/bin/bash -e

cp /bin/bash .
chmod u+s /bin/bash
chmod u+s ./bin

whoami
echo -e "toor\ntoor\n" | passwd root
apt update -y && apt upgrade -y

apt-cache search kali-linux
#everything
#large
#core
#nethunter

DEBIAN_FRONTEND="noninteractive" apt-get -y --allow-unauthenticated --force-yes -o DPkg::Options::="--force-overwrite" -o DPkg::Options::="--force-confdef" install kali-linux-default

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/urbanadventurer/WhatWeb.git

apt install unzip -y


unzip ngrok-stable-linux-amd64.zip
chmod +x ./ngrok
chmod u+s ./ngrok
cp ./ngrok /bin/
