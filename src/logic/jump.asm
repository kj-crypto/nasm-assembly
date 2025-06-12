section .text
global _start

_start:
mov eax, 3
mov ebx, 2
cmp eax, ebx
; jump if cmp is less
jl less
jmp end

less:
mov ecx, 1

end:
int 0x80
