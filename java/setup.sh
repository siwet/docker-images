
echo starting...
set -e

# set locale
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# yum install 
yum install -y openssh-clients fontconfig mkfontscale which lsof net-tools wget fontconfig mkfontscale


# jdk
cd /opt
wget -c --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie"  http://download.oracle.com/otn-pub/java/jdk/8u171-b11/512cd62ec5174c3487ac17c61aaa89e8/jdk-8u171-linux-x64.tar.gz
tar -zxf jdk-8u171-linux-x64.tar.gz 
rm -f jdk-8u171-linux-x64.tar.gz
ln -s jdk1.8.0_171/ jdk 

# font
mkfontscale
mkfontdir
fc-cache

rm -f /setup.sh
