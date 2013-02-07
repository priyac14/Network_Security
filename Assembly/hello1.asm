;Author    :  Priya C                                                       
;Date      :  04/02/2013                                                    
;Filename  :  hello1.asm                                   
;Program   :  Write a simple hello world program in x86 assembly using nasm and the
;             C library
;*********************************************************************


extern printf                           ; declare printf as extern

section .data
    msg:    db "Hello World", 10, 0      ; msg to print
    len:    equ $-msg                   ; len of msg

section .text
    global main                         ; entry point for gcc

    main:
        push ebp                        ; saving old base pointer
        mov ebp, esp                    ; setting up current base pointer

        push dword msg                  ; push msg
        call printf

        add esp, 4                      ; pop msg off stack
        pop ebp                         ; restore ebp
        mov eax, 0                      ; exit code
        ret 
