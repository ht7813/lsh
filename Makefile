CFLAGS=
LDFLAGS=-lreadline
PREFIX?=/usr
build:
	@echo "Building LSH..."
	make CFLAGS=${CFLAGS} -C src
	make LDFLAGS=${LDFLAGS} -C out
run:
	@out/lsh
install: build
	@echo "Installing LSH..."
	@/usr/bin/install -m 777 out/lsh ${PREFIX}/bin/lsh
uninstall:
	@echo "Uninstalling LSH..."
	@rm -f ${PREFIX}/bin/lsh
clean:
	@echo "Cleaning..."
	@make -C src clean
	@make -C out clean
#uninstall-libs:
#	rm -vf /usr/bin/pwd
#	rm -vf /usr/bin/lenv
