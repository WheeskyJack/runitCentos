#!/bin/bash

for d in /opt/templates/*; do
    if [ -d ${d} ]; then
        dir=`realpath $d`
        name=${dir##*/}
        echo "creating symlink from $dir to /etc/service/$name"
        ln -s $dir /etc/service/$name
    fi
done
