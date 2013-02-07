;Author    :  Priya C                                                       
;Date      :  04/02/2013                                                    
;Filename  :  hello2.asm                                   
;Program   :  Write a simple hello world program in x86 assembly using system calls
;***********************************************************************************

section .data
    msg:     db 'Hello world!',0ah    ; 'Hello world!' plus a newline  character
    msglen:  equ $-msg             ; Length of the 'Hello world!' string
                                       

section .text
    global main

main:
    mov eax,4          ; The system call for write (sys_write)
    mov ebx,1          ; File descriptor 1 - standard output
    mov ecx,msg        ; Put the offset of msg in ecx
    mov edx,msglen     ; Put the lenhth of msg in edx
    int 80h            ; Call the kernel

    mov eax,1          ; The system call for exit (sys_exit)
        int 80h
