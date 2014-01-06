#!/bin/bash


# Install NodeJS / NPM
sudo apt-get -y install python-software-properties
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get -y install nodejs

# Install Java 
sudo apt-get -y install openjdk-7-jdk

# Install Git
sudo apt-get install -y git

# Install Maven
wget http://wwwftp.ciril.fr/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xzf apache-maven-3.0.5-bin.tar.gz && rm apache-maven-3.0.5-bin.tar.gz
sudo ln -s /home/vagrant/apache-maven-3.0.5/bin/mvn /bin/mvn

# Install Mysql
echo mysql-server-5.5 mysql-server/root_password password 'root' | debconf-set-selections
echo mysql-server-5.5 mysql-server/root_password_again password 'root' | debconf-set-selections 
DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

# Install Tomcat
wget http://apache.crihan.fr/dist/tomcat/tomcat-7/v7.0.47/bin/apache-tomcat-7.0.47.tar.gz
tar xzf apache-tomcat-7.0.47.tar.gz
mv apache-tomcat-7.0.47 /opt/
mv /opt/apache-tomcat-7.0.47 /opt/tomcat



