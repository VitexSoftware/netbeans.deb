![Screenshot](https://raw.githubusercontent.com/Vitexus/netbeans.deb/master/netbeans.png)

Apache Netbeans Debian package
==============================

Repacked binary of https://github.com/apache/incubator-netbeans ready to use with Debian


Installation
------------

```shell
echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
sudo apt update
sudo apt install netbeans
	    
```

or 

```shell
igdebi http://repo.vitexsoftware.cz/pool/buster/main/n/netbeans/netbeans_11.3.1_all.deb
```



![Screenshot](https://raw.githubusercontent.com/Vitexus/netbeans.deb/master/screenshot.png)



See also
--------

 * https://github.com/VitexSoftware/netbeans-php-tools
