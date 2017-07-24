SECTION .text
GLOBAL _start
_start:
jmp load_string

starter:
;; execve
mov edx, 0
mov ecx, 0
pop ebx
mov eax, 11
int 0x80

;; exit
xor eax, eax
xor ebx, ebx
mov eax, 1
int 0x80

load_string:
call starter
db "/bin/sh"

