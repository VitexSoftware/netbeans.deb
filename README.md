![Screenshot](netbeans.png?raw=true)

Apache Netbeans Debian package
==============================

Repacked binary of https://github.com/apache/netbeans ready to use with Debian 10+ with Extended Mozilla browsers patch 
https://github.com/apache/netbeans/pull/2495 applied.


Installation
------------

```shell
echo "deb http://repo.vitexsoftware.cz $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/vitexsoftware.list
sudo wget -O /etc/apt/trusted.gpg.d/vitexsoftware.gpg http://repo.vitexsoftware.cz/keyring.gpg
sudo apt update
sudo apt install netbeans
	    
```


![Screenshot](screenshot.png?raw=true)



See also
--------

 * https://github.com/VitexSoftware/netbeans-php-tools
 * https://github.com/VitexSoftware/php-tools
