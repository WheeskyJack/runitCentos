#!/bin/bash
set -e
set -x

find /bd_build/ -not \( -name 'bd_build' -or -name 'buildconfig' -or -name 'cleanup.sh' \) -delete
rm -rf /tmp/* /var/tmp/*

## removing proxy from yum.conf
#sed -i -e '/^[[:space:]]*proxy=http:.*10.144.1.10:8080[[:space:]]*$/d' /etc/yum.conf
