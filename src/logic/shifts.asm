section .text
global _start

_start:
mov ebx, 0b1
; 00_01 >> 1
shr ebx, 1
mov ebx, 0b1
; rotate to righ 00_01 -> 10 _00
ror ebx, 1

mov eax, 1
int 0x80

