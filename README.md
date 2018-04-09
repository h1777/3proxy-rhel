3proxy (0.8.11) as socks5 proxy - install script for CentOS 7
======================================================

A simple script to install the lightweight proxy: 3proxy (http://3proxy.ru/) as an elite high anonymous HTTP/SOCKS proxy with SSL support with a few command lines.
This is my modification of existing 3proxy installer, I use this for fresh new EC2 instances on Amazon so I start by installing nano, wget and gcc make (to compile).


**HOW TO :**

Install nano, wget and gcc make:

    sudo yum install nano && yum install wget && yum -y install gcc make
	
Note: I use Security groups in AWS to open the ports i want. For fresh vps's created elsewhere it's a good idea to install firewalld too and open the port you want:

	yum install firewalld
	systemctl start firewalld
	firewall-cmd --zone=public --add-port=3128/tcp --permanent
	firewall-cmd --reload

Download and run with:

    wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/0.8.11/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE THE DEFAULT USERNAME AND PASSWORD !!!

    nano /etc/3proxy/.proxyauth

Example change line inside .proxyauth

    johndoe:CL:johndoepassword

You can also change the port, default is 3128 (optional)

    nano /etc/3proxy/3proxy.cfg


Once you've change the username / password you can start the proxy

    sudo ./3proxy 3proxy.cfg

To stop and check proxy status, use:

	systemctl stop 3proxy.service
	systemctl status 3proxy.service


**Script tested on March 2017 on the following fresh VPS install distros :**

- CentOS 7 64bit
- CentOS 6 has no firewalld so i could not get it to work. But i'm no expert, if you're comfortable with IPTABLES you can surely do this on CentOS 6


**Script will run on :**
- ??? tests needed


Based on original 3proxy script for Debian/Ubuntu
