#!/usr/bin/env bash

yes | apt-get update
# yes | sudo apt-get install jruby
# yes | sudo gem install jruby-openssl


# install rails
yes | apt-get install curl
curl -L https://get.rvm.io | bash -s stable --autolibs=3 --ruby=jruby --gems=rails
source ~/.profile
source ~/.bash_profile
cd /vagrant/learning_platform
bundle install

# install java
# FIXME: is this necessary? is java already installed?
# yes | apt-get install python-software-properties
# yes | add-apt-repository ppa:webupd8team/java
# yes | apt-get update
# yes | apt-get install oracle-java7-installer
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
echo "export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64" >> /etc/bash.bashrc
echo "alias hbase=/hadoop/dist/hbase/hbase-0.95.1-hadoop1/bin/hbase" >> /etc/bash.bashrc

# install hbase
sudo perl -pi -e 's/127\.0\.1\.1/127\.0\.0\.1/g' /etc/hosts
sudo mkdir -p /hadoop/dist/hbase
cd /hadoop/dist/hbase/
sudo wget http://mirrors.gigenet.com/apache/hbase/hbase-0.95.1/hbase-0.95.1-hadoop1-bin.tar.gz
sudo tar xvf hbase-0.95.1-hadoop1-bin.tar.gz 
cd hbase-0.95.1-hadoop1
mkdir -p /vagrant/data/zookeeper
mkdir -p /vagrant/data/hbase
sudo cp /vagrant/hbase-site.xml conf/
./bin/start-hbase.sh
 
