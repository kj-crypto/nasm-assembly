section .bss
; reserve 3 bytes
num RESB 3


section .text
global _start

_start:
; move const into bl register
mov bl, 1

; move from register to num in bss
mov [num], bl
mov [num+1], bl
mov [num+2], bl

; exit
mov eax, 1
int 0x80
