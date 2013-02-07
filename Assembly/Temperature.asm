;Author    :  Priya C                                                       
;Date      :  06/02/2013                                                    
;Filename  :  Temperature.asm                                   
;Program   :  Write a program to perform conversion between Celsius scale and
;             Fahrenheit scale.
;*****************************************************************

 extern printf
 extern scanf
 section .data
    temp:        dd 0
    choice:      dd 0
    scn:         db "%d",0
    message1:    db "1. Celsius to Fahrenheit" ,10,0 
    message2:    db "2. Fahrenheit to Celsius" ,10,0
    message3:    db "Enter the choice" ,10,0 
    message4:    db "Enter the temperature" ,10,0
    message5:    db "Result is=%d",10,0
    const1: dd 5
    const2:dd 9
    
 section .text
    global main
 main:
    push ebp
    mov ebp,esp
    push message1
    call printf
    add esp,4
    push message2
    call printf
    add esp,4
    push message3
    call printf
    add esp, 4
    push choice
    push scn
    call scanf
    mov eax,[choice]
    cmp eax,2   
    
    je .choice2
         push message4
         call printf
         add esp,4
         push temp
         push scn
         call scanf
         add esp,4
         mov eax,[temp]
         mov ecx,[const2]
         imul ecx
         mov ecx,[const1]
         idiv ecx
         add eax,32
         push eax
         push message5
         call printf
         jmp .done

    .choice2:
         push message4
         call printf
         add esp,4
         push temp
         push scn
         call scanf
         add esp,4
         mov eax,[temp]
         sub eax,32
         mov ecx,[const1]
         imul ecx
         mov ecx,[const2]
         idiv ecx
         push eax
         push message5
         call printf
         jmp .done
    
    .done:
        
        mov esp,ebp
        pop ebp
        ret





