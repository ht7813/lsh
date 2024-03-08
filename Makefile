CFLAGS += "-Iinclude"
all:
	mkdir -p out
	@echo "Building LSH..."
	gcc ${CFLAGS} -o out/lsh src/main.c
	gcc ${CFLAGS} -o out/pwd src/pwd.c
	gcc ${CFLAGS} -o out/lenv src/lenv.c
run:
	out/lsh
install:
	@echo "Installing LSH..."
	/usr/bin/install -m 777 out/lenv /usr/bin/lenv
	/usr/bin/install -m 777 out/pwd /usr/bin/pwd
	/usr/bin/install -m 777 out/lsh /usr/bin/lsh
uninstall:
	rm -vf /usr/bin/lsh
	@echo "The 'pwd' and 'lenv' component was installed during the installation of 'lsh' and was used by 'lsh', but now 'lsh' has been uninstalled and this component is no longer needed. Use 'make uninstall-libs' to uninstall it."
clean:
	rm -rvf out
uninstall-libs:
	rm -vf /usr/bin/pwd
	rm -vf /usr/bin/lenv
