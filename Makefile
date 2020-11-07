prepare:
	if [ ! -d netbeans ]; then git clone git@github.com:apache/netbeans.git --depth 1 ; else cd netbeans; git pull; cd ..; fi;

build: prepare ant

ant:
	ant -DuseExternalJarsOnLinux=true -Dpermit.jdk9.builds=true -Dcluster.config=full -buildfile netbeans/build.xml build-nozip 

tryme:
	ant -Dpermit.jdk9.builds=true -buildfile netbeans/build.xml tryme

deb:
	debuild -i -us -uc -b

