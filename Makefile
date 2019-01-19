prepare: download
	unzip incubating-netbeans-10.0-bin.zip

download:
	wget -c http://mirror.dkm.cz/apache/incubator/netbeans/incubating-netbeans/incubating-10.0/incubating-netbeans-10.0-bin.zip
	
clean:
	rm -f incubating-netbeans-10.0-bin.zip
	rm -rf netbeans

deb:
	debuild -i -us -uc -b

