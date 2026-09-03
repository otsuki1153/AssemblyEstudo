mov rcx, 10 -> (rcx = 10)
mov rax, 01 -> (rax = 1)


loop_inicio:
    cmp rcx,0
    jle loop_fim

    imul rax, rax, 2
    dec rcx
    jmp loop_inicio

loop_fim: