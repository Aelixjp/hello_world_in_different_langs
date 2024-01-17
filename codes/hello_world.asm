;Text section
global _start
_start:

section .text
	global _start

_start:
	mov edx, len
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 0x80 	; Call kernel
	mov eax, 1
	int 0x080


; Data section
section .data:
	msg db "Hello World", 0xa
	len equ $ -msg

; BSS section
