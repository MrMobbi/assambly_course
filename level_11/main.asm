
section .text

global _start
_start:
		AND rdi, 1
		AND rax, rdi
		XOR rax, 1
