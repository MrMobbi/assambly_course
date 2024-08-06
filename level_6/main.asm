
section .text

global _start
_start:
		mov rax, rdi
		div rsi
		mov rax, 0
		mov rax, rdx
