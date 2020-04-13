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

DEBIAN_FRONTEND=noninteractive apt install kali-linux-default -y
