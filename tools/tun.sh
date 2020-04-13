#! /bin/bash -e

wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
git clone https://github.com/danielmiessler/SecLists.git
git clone https://github.com/urbanadventurer/WhatWeb.git

apt install unzip -y


unzip ngrok-stable-linux-amd64.zip
chmod +x ./ngrok
chmod u+s ./ngrok
cp ./ngrok /bin/

rm ngrok-stable-linux-amd64.zip

# ngrok authtoken a11lslcxNiceTryxc1s111a

ssh -R 80:localhost:80 ssh.localhost.run
