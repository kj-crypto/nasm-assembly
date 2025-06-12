section .text
global _start

_start:
; eax as accumulator
mov eax, 11
mov ecx, 2

; eax will keep result
; edx will keep reminder
div ecx

int 0x80
