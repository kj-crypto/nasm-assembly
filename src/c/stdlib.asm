; use printf and exit from stdc
extern printf
extern exit

section .data
msg DB "Hello from asm", 0
; 10 is new line
fmt DB "Output is: %s", 10, 0

section .data
global _start

_start:
push msg
push fmt
call printf

push 1
call exit

