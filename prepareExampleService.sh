#!/bin/bash
set -x

adduser foo
cp -R /bd_build/services/serviceFiles/* /opt/
cp -R /bd_build/services/templates/* /opt/
cp /bd_build/startExampleService.sh /etc/my_init.d/
chown -R foo:foo /opt/*
