yum install epel-release && yum install 3proxy
firewall-cmd --zone=public --add-port=1080/tcp --permanent
firewall-cmd --reload
mkdir /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/h1777/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://github.com/h1777/3proxy/raw/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/h1777/3proxy/master/3proxyinit
chmod  +x /etc/init.d/3proxyinit
update-rc.d 3proxyinit defaults
