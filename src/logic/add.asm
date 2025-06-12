section .text
global _start

_start:
mov ebx, 2
mov eax, 1
add ebx, eax
int 0x80
