
# runitCentos

This is the project for starting runit as process manager for centos docker container.

The python script used to start the runit as PID 1 process is used as it is (mostly) from [phusion/baseimage-docker](https://github.com/phusion/baseimage-docker)

You can use it as a base for your own Docker images.

This only aims to extract the runit part (my_init section) of the [baseimage-docker](https://github.com/phusion/baseimage-docker).

To see how to add the service in container using this image, refer the seperate branch of the repo [example_service](https://github.com/WheeskyJack/runitCentos/tree/example_service)

## What's inside the image?

The centos(latest) image is used; epel-release, python3.6 are installed in it along with necessary dependencies.

It also configures imeyer_runit repositories for yum installation of runit.

The imeyer_runit repositories are disbaled after the runit installation.

Starting from base centos image of 200 MB,
the final image size is found to be approx.

**262 MB** (without yum update of base centos image)

**299 MB** (with yum update of base centos image)

(as of Thu Sep 13,2018)

## How to build Docker Image?

Clone the repository and change to the directory where Dockerfile exists; execute the docker build command.

Sample example of docker build command is:

        docker build --network=host -t centos_runit_github:github .

## Debugging!!

* **yum install failures**

   If you are behind proxy, then yum update and installation may fail for your docker build; please set up environment variable for yum and curl to use the proxy.

   Example of editing yum.conf for proxy :

   Suppose the proxy is 10.144.1.10:8080 then , one can execute

        printf "\nproxy=http://10.144.1.10:8080" >> /etc/yum.conf

   in the beginning of prepare.sh script. This will enable all the subsequent yum commands to use the given proxy for their operations.

   Do not forget to remove this entry from the yum.conf at the end of image build as a part of cleanup.

* **curl failure**

   If curl commands are failing for the same reason then http_proxy needs to be set for the same.
   One can execute, for example , following snippet

        export http_proxy=http://10.144.1.10:8080
        export ftp_proxy=http://10.144.1.10:8080
        export https_proxy=https://10.144.1.10:8080

   to set the environment.

Any Suggestions are welcome!!!