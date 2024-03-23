CFLAGS=
LDFLAGS=
build:
	@echo "Building LSH..."
	make CFLAGS=${CFLAGS} -C src
	make LDFLAGS=${LDFLAGS} -C out
run:
	@out/lsh
install:
	@echo "Installing LSH..."
	#/usr/bin/install -m 777 out/lenv /usr/bin/lenv
	#/usr/bin/install -m 777 out/pwd /usr/bin/pwd
	@/usr/bin/install -m 777 out/lsh /usr/bin/lsh
uninstall:
	@echo "Uninstalling LSH..."
	@rm -f /usr/bin/lsh
	#@echo "The 'pwd' and 'lenv' component was installed during the installation of 'lsh' and was used by 'lsh', but now 'lsh' has been uninstalled and this component is no longer needed. Use 'make uninstall-libs' to uninstall it."
clean:
	@echo "Cleaning..."
	@make -C src clean
	@make -C out clean
#uninstall-libs:
#	rm -vf /usr/bin/pwd
#	rm -vf /usr/bin/lenv
