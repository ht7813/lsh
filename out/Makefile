LDFLAGS=
TARGET=lsh
DIR=../src
OBJ=$(DIR)/main.o $(DIR)/pwd.o $(DIR)/lenv.o
LD=gcc

all:
	@echo "Linking LSH..."
	@echo "    CCLD     $(TARGET)"
	@$(LD) $(LDFLAGS) -o $(TARGET) $(OBJ)
clean:
	@rm $(TARGET)
