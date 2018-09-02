
# runitCentos

This is the project for starting runit as process manager for centos docker container.

The python script used to start the runit as PID 1 process is used as it is (mostly) from [phusion/baseimage-docker](https://github.com/phusion/baseimage-docker)

You can use it as a base for your own Docker images.

This only aims to extract the runit part(my_init section) of the [baseimage-docker](https://github.com/phusion/baseimage-docker).

## What's inside the image?

The centos(latest) image is used; epel-release, python3.6 are installed in it along with necessary dependencies.

It also configures imeyer_runit repository for yum installation of runit.

The repo is disbaled after the runit installation.

The final image size is found to be approx. 435 mb (starting from base centos image of 200 mb)

## How to build

chnage to Dockerfile directory and execute to docker build command.

Sample example of docker build is:

        docker build --network=host -t centos_runit_github:github .

## Debugging

If you are behind proxy, then yum update and installation may fail for your docker build; please set up environt variable for yum and curl to use the proxy.

Example of editing yum.conf for proxy :

Suppose the proxy is 10.144.1.10:8080 then , you can execute

    printf "\nproxy=http://10.144.1.10:8080" >> /etc/yum.conf

like this in beginning of prepare.sh script. This will enable all the subsequent yum commands to use the proxy for their operations.

Do not forget to remove this entry from the yum.conf at the end of image build.
