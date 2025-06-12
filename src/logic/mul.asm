section .text
global _start

_start:
mov al, 2
mov bl, 3

; multiply al register by bl register and store results in al,
; accumulator register
mul bl
int 0x80
