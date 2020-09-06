prepare-directory:
	rm -rf test-directory
	tar xvjf test-directory.tar.bz2
	cd test-directory && chmod a+t directory+t directory+t-o+w && chmod 777 directory777 && chmod o+w directory+t-o+w && rm file3.hardlink; ln file3 file3.hardlink && chmod g+s setgid-g+s && chmod u+s setuid-u+s

2020:
	rm -rf test-2020
	tar xvzf test-2020.tar.gz
	{ \
	set -e; \
	cd test-2020; \
	chmod a+t directory+t directory+t-o+w; \
	chmod 777 directory777; \
	chmod o+w directory+t-o+w; \
	rm file3.hardlink; \
	ln file3 file3.hardlink; \
	chmod g+s setgid-g+s; \
	chmod u+s setuid-u+s; \
	}
	
clean:
	rm -rf test-directory
	rm -rf test-2020
