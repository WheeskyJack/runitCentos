#!/bin/bash
set -e 
set -x

## setting up proxy
#export http_proxy=http://10.144.1.10:8080
#export ftp_proxy=http://10.144.1.10:8080
#export https_proxy=https://10.144.1.10:8080

## directories for runit process.
cp /bd_build/bin/* /sbin/
mkdir -p /etc/my_init.d
mkdir -p /etc/my_init.pre_shutdown.d
mkdir -p /etc/my_init.post_shutdown.d
mkdir -p /etc/runit

## create yum-repo for runit process and install from it
curl -s https://packagecloud.io/install/repositories/imeyer/runit/script.rpm.sh | bash
yum install -y runit

## disable the runit yum-repo
yum-config-manager --disable imeyer_runit*
