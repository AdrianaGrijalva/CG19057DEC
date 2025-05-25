section .data
	num db '000', 10, 0

section .text
	global _start

_start:
	;restando tres enteros
	mov ax, 300
	sub ax, 150
	sub ax, 30
	mov bx, ax

	;convirtiendo a ascii

	; centenas
	mov ax, bx
	xor dx, dx
	mov cx, 100
	div cx
	add al, '0'
	mov [num], al

	; decenas
	mov ax, dx
	xor dx, dx
	mov cx, 10
	div cx
	add al, '0'
	mov [num+1], al

	;unidades
	add dl, '0'
	mov [num+2], dl

	;imprimiendo numero
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 4
	int 0x80
	
	;saliendo del programa
	mov eax, 1
	xor ebx, ebx
	int 0x80
