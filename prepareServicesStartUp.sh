#!/bin/bash
set -x

adduser foo
cp -R /bd_build/services/* /opt/
cp /bd_build/startRunitServices.sh /etc/my_init.d/
chown -R foo:foo /opt/templates
chown -R foo:foo /opt/serviceFiles
