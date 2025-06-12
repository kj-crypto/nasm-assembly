section .data
x DD 3.14
y DD 2.72

section .text
global _start

_start:
; move scalar single-precision
; xmm0 - xmm15 registers for 64-bit mode
movss xmm0, [x]
movss xmm1, [y]
addss xmm0, xmm1

; compare float
ucomiss xmm0, xmm1
; ja - jump above
ja greater
jmp end

greater:
mov ecx, 1

end:
mov eax, 1
mov ebx, 0
int 0x80
