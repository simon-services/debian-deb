.PHONY: all
all: build 

build:
	mkdir tmp
	rsync -ax --exclude tmp ./ tmp/
	rm -fv tmp/Makefile
	dpkg-deb --build tmp debian-deb-0.0.1-amd64.deb
	rm -rf tmp

.PHONY: clean 
clean:
	rm -fv *~ .*.swp *.deb
