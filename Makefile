prepare-directory:
	@rm -rf test-directory
	-tar xzf test-directory.tar.gz
	@{ \
		cd test-directory; \
		chmod a+t directory+t directory+t-o+w; \
		chmod 777 directory777; \
		chmod o+w directory+t-o+w; \
		rm file3.hardlink; \
		ln file3 file3.hardlink; \
		chmod g+s setgid-g+s; \
		chmod u+s setuid-u+s; \
	}
	@echo 'Now: eval $$(dircolors dircolors.256dark) && ls -l -F test-directory'
	
clean:
	-rm -rf test-directory
