---
## SHELLCODE
    nasm -f elf shellcode_elf_32.asm
    ld -m elf_i386 -o shellcode_32 shellcode_elf_32.o
    objdump -d shellcode_32

## TEST
    gcc -m32 -z execstack -o test test.c

