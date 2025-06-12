section .text
global _start

_start:
mov bl, 0b11111111
mov al, 0b00000001
add bl, al

; add with carry
; carry bit will be added to bh register
adc bh, 0

int 0x80
