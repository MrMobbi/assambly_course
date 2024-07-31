
CC		= nasm
FLAGS	= -g -f elf64 -F DWARF -w+all

SRC		= test.asm
OBJ		= test.o
BIN		= test.bin

all:	obj bin

obj:
		as $(SRC) -o $(OBJ)

dis:
		objdump -D -M intel $(OBJ)

bin:
		objcopy -O binary --only-section=.text $(OBJ) $(BIN)

c:
		@rm -rf $(OBJ) $(BIN)

.PHONY:	all obj dis bin
