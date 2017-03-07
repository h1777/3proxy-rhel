yum install epel-release && yum install 3proxy
firewall-cmd --zone=public --add-port=1080/tcp --permanent
firewall-cmd --reload
mkdir /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
systemctl enable 3proxy.service
