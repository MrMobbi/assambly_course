
CC		= nasm
FLAGS	= -f elf64 -F dwarf

FILE	= main
SRC		= $(FILE).asm
OBJ		= $(FILE).o
BIN		= $(FILE).bin

all:	obj
		ld -o $(FILE) $(OBJ)

obj:
		$(CC) $(FLAGS) $(SRC) -o $(OBJ)

dis:
		objdump -D -M intel $(OBJ)

bin:	obj
		objcopy -O binary --only-section=.text $(OBJ) $(BIN)

run :	obj bin
		/challange/run < main.bin
		@rm -rf $(OBJ) $(BIN) $(FILE)

c:
		@rm -rf $(OBJ) $(BIN) $(FILE)

.PHONY:	all obj dis bin
