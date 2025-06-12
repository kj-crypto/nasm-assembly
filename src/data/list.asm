section .data
char DB 'A'
list DB 1,2,3
string DB "ABC",0

section .text
global _start

_start:
mov bl, [char]
mov cl, [list]
mov eax, 1
int 0x80
