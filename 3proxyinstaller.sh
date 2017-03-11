systemctl enable firewalld.service
systemctl start firewalld
firewall-cmd --zone=public --add-port=3128/tcp --permanent
firewall-cmd --reload
wget --no-check-certificate https://github.com/z3APA3A/3proxy/archive/0.8.9.tar.gz
tar xzf 0.8.9.tar.gz
cd 3proxy-0.8.9
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/0.8.9/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/0.8.9/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
chmod +x /etc/3proxy/3proxy
./3proxy 3proxy.cfg
#systemctl enable 3proxy.service
