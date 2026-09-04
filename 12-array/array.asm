section .data
	valores dd 100, 200, 300, 400 ; dd = 4 bytes cada(inteiro de 32 bits)

section .text
	global main

main:
  mov rbx, [valores]
	mov rcx, 2
	mov eax, [rbx + rcx*4]
	add eax, 50
