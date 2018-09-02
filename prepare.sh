#!/bin/bash
set -e
set -x

#printf "\nproxy=http://10.144.1.10:8080" >> /etc/yum.conf

yum clean all && rm -rf /var/cache/yum

yum -y update
yum -y install epel-release 
yum -y install python36

yum clean all && rm -rf /var/cache/yum
