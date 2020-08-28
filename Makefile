prepare:
	if [ ! -d netbeans ]; then git clone git@github.com:netbeans/netbeans.git --depth 1 ; else cd netbeans; git pull; cd ..; fi;

build: prepare ant

ant:
	ant -DuseExternalJarsOnLinux=true -Dpermit.jdk9.builds=true -Dcluster.config=full -buildfile netbeans/build.xml build-nozip 

deb:
	debuild -i -us -uc -b

