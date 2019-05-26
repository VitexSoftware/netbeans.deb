prepare:
	if [ ! -d netbeans ]; then git clone https://github.com/apache/netbeans.git; else cd netbeans; git pull; cd ..; fi;

build: prepare
	ant -DuseExternalJarsOnLinux=true -Dcluster.config=php -buildfile netbeans/build.xml build-nozip

deb:
	debuild -i -us -uc -b

