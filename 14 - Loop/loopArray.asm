; codigo para Linux
section .data
    valores dd 100, 200, 300, 400

section .text
    global _start

_start:
    mov r12, 0
    lea rbx, [valores]

.loop_inicio:
    cmp r12, 4
    jge .loop_fim
    mov eax, [rbx + r12*4]
    call print_uint
    inc r12
    jmp .loop_inicio

.loop_fim:
    mov rax, 60
    xor rdi, rdi
    syscall
