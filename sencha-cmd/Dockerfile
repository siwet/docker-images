FROM acktsw/java

MAINTAINER acktsw <acktsw@gmail.com>

# GitHub is not free
# https://media.githubusercontent.com/media/cntsw/docker-images/master/package/SenchaCmd-6.5.3.6-linux-amd64.sh.zip

RUN \
yum install -y unzip which &&\
yum install fontconfig freetype freetype-devel fontconfig-devel libstdc++ -y &&\
cd /opt &&\
curl -o SenchaCmd-6.5.3.6-linux-amd64.sh.zip http://cdn.sencha.com/cmd/6.5.3.6/no-jre/SenchaCmd-6.5.3.6-linux-amd64.sh.zip &&\
unzip SenchaCmd-6.5.3.6-linux-amd64.sh.zip &&\
./SenchaCmd-6.5.3.6-linux-amd64.sh -Dall=true -q -dir /opt/sencha/cmd &&\
rm -f SenchaCmd-6.5.3.6-linux-amd64.sh.zip &&\
rm -f SenchaCmd-6.5.3.6-linux-amd64.sh &&\
sed -E 's/.*sencha.*//g' -i /root/.bashrc


ENV PATH="/opt/sencha/cmd:$PATH"
