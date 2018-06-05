FROM docker:18.03.1-ce

MAINTAINER acktsw <acktsw@gmail.com>


# set zone and locale
RUN \
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8


# install oracle-jdk
RUN \
yum install -y wget &&\
cd /opt &&\
wget -c --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz &&\
tar -zxf jdk-8u171-linux-x64.tar.gz &&\
rm -f jdk-8u171-linux-x64.tar.gz &&\
ln -s jdk1.8.0_171/ jdk &&\
mv /dev/random /dev/random.bak &&\
ln -s /dev/urandom /dev/random


ENV JAVA_HOME="/opt/jdk" \
	JRE_HOME="/opt/jdk/jre" \
	CLASSPATH=".:/opt/jdk/lib" \
	PATH="/opt/jdk/bin:$PATH"
