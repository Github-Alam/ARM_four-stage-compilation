CC=arm-none-eabi-gcc
MACH=cortex-m4
CFLAGS= -c -mcpu=$(MACH) -mthumb -std=gnu11 -Wall -O0
#LDFLAGS= -nostblib -T LinkerScript.ld -Wl,-Map=final.map
LDFLAGS= --specs=nano.specs -T LinkerScript.ld -Wl,-Map=final.map

all: main.o stm32_startup.o syscalls.o final.elf

main.o:main.c
	$(CC) $(CFLAGS) -o $@ $^

stm32_startup.o:stm32_startup.c
	$(CC) $(CFLAGS) -o $@ $^

syscalls.o:syscalls.c
	$(CC) $(CFLAGS) -o $@ $^

final.elf:main.o stm32_startup.o syscalls.o
	$(CC) $(LDFLAGS) -o $@ $^

clean:
	rm -rf *.elf *.o *.map