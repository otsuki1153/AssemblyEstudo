subtrai:
   mov eax, edi
   sub eax, esi
   ret

_start:
    mov edi, 50
    mov esi, 8
    call subrai
