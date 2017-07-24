---
## SHELLCODE
    nasm -f elf shellcode_elf_32.asm
    ld -m elf_i386 -o shellcode_32 shellcode_elf_32.o
    objdump -d shellcode_32

## SHELLCODE 64bits
    nasm -f elf64 shellcode_elf_64.asm
    ld -m elf_x86_64 -o shellcode_64 shellcode_elf_64.o

## TEST
    gcc -m32 -z execstack -o test test.c

