FROM centos:7


MAINTAINER acktsw <acktsw@gmail.com>

RUN \
cd /opt &&\
curl -o jdk-8u171-linux-x64.tar.gz https://media.githubusercontent.com/media/cntsw/docker-images/master/package/jdk-8u171-linux-x64.tar.gz &&\
tar -zxf jdk-8u171-linux-x64.tar.gz &&\
rm -f jdk-8u171-linux-x64.tar.gz &&\
ln -s jdk1.8.0_171/ jdk &&\
mv /dev/random /dev/random.bak &&\
ln -s /dev/urandom /dev/random


ENV JAVA_HOME="/opt/jdk" \
	JRE_HOME="/opt/jdk/jre" \
	CLASSPATH=".:/opt/jdk/lib" \
	PATH="/opt/jdk/bin:$PATH"
