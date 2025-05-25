section .data
	num db '0000', 10, 0

section .text
	global _start

_start:
	mov al, 25
	mov bl, 2

	mul bl

	;convertir el producto a ascii
	mov ax, ax
	xor dx, dx
	mov cx, 1000
	div cx
	add al, '0'
	mov [num], al

	mov ax, dx
	xor dx, dx
	mov cx, 100
	div cx
	add al, '0'
	mov [num+1], al

	mov ax, dx
	xor dx, dx
	mov cx, 10
	div cx
	add al, '0'
	mov [num+2], al

	add dl, '0'
	mov [num+3], dl

	;mostrando resultado
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 5
	int 0x80

	;saliendo del programa
	mov eax, 1
	mov ebx, ebx
	int 0x80
