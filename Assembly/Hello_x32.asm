global _main

section .data
    var: db 'Hello World', 0xa

section .text

_main:
    mov eax, 4
    mov ebx, 1 ;stdout
   mov ecx, var
    mov edx, 12
    int 0x80
    mov eax, 1
    mov ebx, 2
    int 0x80
