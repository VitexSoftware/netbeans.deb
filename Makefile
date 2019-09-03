prepare:
	if [ ! -d netbeans ]; then git clone git@github.com:Vitexus/netbeans.git; else cd netbeans; git pull; cd ..; fi;

build: prepare ant

ant:
	ant -DuseExternalJarsOnLinux=true -Dpermit.jdk9.builds=true -Dcluster.config=php -buildfile netbeans/build.xml build-nozip 

deb:
	debuild -i -us -uc -b

