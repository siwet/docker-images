FROM centos:7

MAINTAINER acktsw <acktsw@gmail.com>

# set zone and locale
RUN \
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

RUN \
yum install -y openssh-clients \
	which \
	lsof \
	net-tools



