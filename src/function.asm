section .text
global _start

addFun:
add eax, ebx
ret

_start:
mov eax, 4
mov ebx, 5
call addFun

mov ebx, eax
mov eax, 1
int 0x80
