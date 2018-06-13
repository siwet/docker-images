FROM centos:7

MAINTAINER acktsw <acktsw@gmail.com>

ENV LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8

ADD font/simkai.ttf /usr/share/fonts/
ADD setup.sh /

RUN \
chmod +x /setup.sh && sync&&\
/setup.sh

ENV JAVA_HOME="/opt/jdk" \
	JRE_HOME="/opt/jdk/jre" \
	CLASSPATH=".:/opt/jdk/lib" \
	PATH="/opt/jdk/bin:$PATH"
