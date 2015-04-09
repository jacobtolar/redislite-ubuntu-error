#!/usr/bin/env bash

echo "installing dependencies..."
apt-get update 2>/dev/null >/dev/null
apt-get -qq install build-essential python-dev python-pip unzip -y 2>/dev/null >/dev/null

echo "getting redislite..."
wget --quiet 'https://github.com/yahoo/redislite/archive/master.zip'
unzip -q master.zip
cd redislite-master

echo "installing redislite requirements..."
pip -q install -r requirements.txt 2>/dev/null >/dev/null

echo "installing redislite..."
python setup.py install 2>/dev/null >/dev/null

echo "installing redis-2.2.15 - [installing this causes the failure...]"
cd ~
wget --quiet 'https://redis.googlecode.com/files/redis-2.2.15.tar.gz' -O - | tar -xzf -
cd redis-2.2.15
make install 2>/dev/null >/dev/null

echo "running test script... should fail..."
cat /vagrant/test.sh
echo
/vagrant/test.sh
