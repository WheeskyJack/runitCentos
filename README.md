# runitCentos

This is the project for starting runit as process manager for centos docker container.
The python script used to start the runit as pid 1 process is used as it is (mostly) from (https://github.com/phusion/baseimage-docker)

You can use it as a base for your own Docker images.
This only aims to extract the runit part of the baseimage-docker.

**[What's inside the image?]**

The centos image is used and python3.6 is installed in it along with necessary dependencies.
The final image size is approx. 435 mb (staring from base centos image of 200 mb)
