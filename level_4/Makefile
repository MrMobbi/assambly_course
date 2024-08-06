
CC		= nasm
FLAGS	= -g -f elf64 -F DWARF -w+all

FILE	= main
SRC		= $(FILE).asm
OBJ		= $(FILE).o
BIN		= $(FILE).bin

all:

obj:
		as $(SRC) -o $(OBJ)

dis:
		objdump -D -M intel $(OBJ)

bin:	obj
		objcopy -O binary --only-section=.text $(OBJ) $(BIN)

c:
		@rm -rf $(OBJ) $(BIN)

.PHONY:	all obj dis bin
