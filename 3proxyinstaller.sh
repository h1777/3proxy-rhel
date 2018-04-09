#!/bin/sh
sudo wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/0.8.11.tar.gz
&& tar xzf 0.8.11.tar.gz
cd 3proxy-0.8.11
make -f Makefile.Linux
cd src
sudo mkdir /etc/3proxy/
sudo mv 3proxy /etc/3proxy/
cd /etc/3proxy
sudo wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/latest/3proxy.cfg
sudo chmod 600 /etc/3proxy/3proxy.cfg
sudo wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/latest/.proxyauth
sudo chmod 600 /etc/3proxy/.proxyauth
sudo chmod +x 3proxy
sudo mkdir /var/log/3proxy
