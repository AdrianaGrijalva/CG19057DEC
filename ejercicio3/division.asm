section .data
	num db '0000000000', 10, 0

section .text
	global _start

_start:
	mov eax, 15325
	xor edx, edx
	mov ecx, 2
	div ecx

	;convirtiendo resultado a ascii
	mov ebx, 10
	mov edi, num
	mov ecx, 10

.convert_loop:
	xor edx, edx
	div ebx
	add dl, '0'
	mov [edi + ecx - 1], dl
	loop .convert_loop

	;imprimiendo resultado
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 11
	int 0x80

	;saliendo del programa
	mov eax, 1
	xor ebx, ebx
	int 0x80

