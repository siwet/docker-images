FROM centos:7


MAINTAINER acktsw <acktsw@gmail.com>

RUN \
cd /opt &&\
curl -o jdk-8u171-linux-x64.tar.gz https://media.githubusercontent.com/media/cntsw/docker-images/master/package/jdk-8u171-linux-x64.tar.gz &&\
tar -zxf jdk-8u171-linux-x64.tar.gz &&\
rm -f jdk-8u171-linux-x64.tar.gz &&\
ln -s jdk1.8.0_171/ jdk &&\
\
echo 'export JAVA_HOME=/opt/jdk' >> /etc/profile &&\
echo 'export JRE_HOME=${JAVA_HOME}/jre' >> /etc/profile &&\
echo 'export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib' >> /etc/profile &&\
echo 'export PATH=${JAVA_HOME}/bin:$PATH' >> /etc/profile
