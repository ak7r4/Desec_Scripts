extern system
global _main

section .text

_main:
	push 0x00657865
	push 0x2e636c61
	push 0x6320632f
	push 0x20657865
	push 0x2e646d63
	push esp
	pop eax
	push eax
	mov ebx, 0x75373d30
	call ebx
