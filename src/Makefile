CC=gcc
CFLAGS=
OBJ=main.o pwd.o lenv.o

all:$(OBJ)

%.o:%.c
	@echo "    CC       $@"
	@$(CC) -o $@ -c $< -I../include $(CFLAGS)
clean:
	@rm -f $(OBJ)
