3proxy (0.8.6) install script for CentOS 7
======================================================

A simple script to install the lightweight proxy: 3proxy (http://3proxy.ru/) as an elite high anonymous HTTP proxy with SSL support with a few command lines.
This is my modification of existing 3proxy installer for Debian/Ubuntu. I use it in fresh vps that don't have anything installed so i also install nano, wget and firewalld before.


**HOW TO :**

If nano, wget and firewalld are not installed, you can do with:

    yum install nano && yum install wget && yum install firewalld

Download and run with these lines :

    wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE THE DEFAULT USERNAME AND PASSWORD !!!

    nano /etc/.proxyauth

Example change line inside .proxyauth

    johndoe:CL:johndoepassword

You can also change the port, default is 3128 (optional)

    nano /etc/3proxy.cfg


Once you've change the username / password you can start the proxy
(or reboot the VPS as 3proxy will autostart)

    systemctl start 3proxy.service

To stop and check proxy status, use:

	systemctl stop 3proxy.service
  systemctl status 3proxy.service

**Script tested on March 2017 on the following fresh VPS install distros :**

- CentOS 7 64bit
- CentOS 6 has no firewalld so i could not get it to work. But i'm no expert, if you're comfortable with IPTABLES you can surely do this on CentOS 6


**Script will run on :**
- ??? tests needed


Based on original 3proxy script for Debian/Ubuntu
