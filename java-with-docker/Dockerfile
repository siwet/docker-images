FROM acktsw/java

MAINTAINER acktsw <acktsw@gmail.com>


RUN \
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2 &&\
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo &&\
yum install -y docker-ce-18.03.1.ce-1.el7.centos
