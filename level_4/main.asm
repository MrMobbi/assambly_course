
.intel_syntax noprefix

.globl _start

_start:
		mov		rax, rdi
		imul	rax, rsi
		add		rax, rdx
