FROM centos:latest
COPY . /bd_build

RUN /bd_build/prepare.sh && \
	/bd_build/runit_service.sh && \
	/bd_build/cleanup.sh

CMD ["/sbin/my_init"]
