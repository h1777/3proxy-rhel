3proxy install script for CentOS VPS (ver 0.8.6)
======================================================

A simple script to install the lightweight proxy: 3proxy (http://3proxy.ru/) as an elite high anonymous HTTP proxy with SSL support with a few command lines.
This script has been created to bypass the fact that Squid3 proxy isn't compiled with SSL support and is an absolute nightmare to compile in Debian right now.


**HOW TO :**

Make sure nano and wget are installed, if not install with:

    yum install nano && yum install wget

Download and run with these lines :

    wget --no-check-certificate https://raw.githubusercontent.com/h1777/3proxy-rhel/master/3proxyinstaller.sh
    chmod +x 3proxyinstaller.sh
    ./3proxyinstaller.sh

After install : CHANGE THE DEFAULT USERNAME AND PASSWORD !!!

    nano /etc/3proxy/.proxyauth

Example change line inside .proxyauth

    johndoe:CL:johndoepassword

You can also change the port, default is 3128 (optional)

    nano /etc/3proxy/3proxy.cfg


Once you've change the username / password you can start the proxy
(or reboot the VPS as 3proxy will autostart)

    systemctl start 3proxy.service

For Uninstall Download, make executable and run with these lines :

	wget --no-check-certificate https://raw.github.com/h1777/3proxy/master/3proxyuninst.sh
	chmod +x 3proxyuninst.sh
	./3proxyuninst.sh

**Script tested on March 2017 on the following fresh VPS install distros :**

- CentOS 7 64bit


**Script will run on :**
- ??? tests needed


Based on original 3proxy script for Debian/Ubuntu

<<<<<<< HEAD
=======
http://barankilic.github.io/3proxy/
>>>>>>> origin/master
