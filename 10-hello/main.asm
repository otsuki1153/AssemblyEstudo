default rel

extern GetStdHandle
extern WriteFile
extern ExitProcess
section .data
    message db "Hello, assembly!", 13, 10
    message_len equ $ - message

section .text
    global main

main:
    ; Reserva o shadow space exigido pela ABI do Windows x64
    sub rsp, 40


    ; GetStdHandle(STD_OUTPUT_HANDLE)
    mov ecx, -11
    call GetStdHandle

    ; WriteFile(
    ;     handle,
    ;     message,
    ;     message_len,
    ;     &bytes_written,
    ;     NULL
    ; )

    mov rcx, rax
    lea rdx, [message]
    mov r8d, message_len
    lea r9, [bytes_written]
    mov qword [rsp + 32], 0

    call WriteFile

    ; ExitProcess(0)
    xor ecx, ecx
    call ExitProcess

section .bss
    bytes_written resd 1