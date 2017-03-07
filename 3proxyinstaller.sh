yum install epel-release && yum install 3proxy
firewall-cmd --zone=public --add-port=3128/tcp --permanent
firewall-cmd --reload
cd /etc/
rm -f 3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/.proxyauth
chmod 600 /etc/3proxy/.proxyauth
systemctl enable 3proxy.service
