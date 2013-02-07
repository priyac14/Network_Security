;Author    :  Priya C                                                       
;Date      :  07/02/2013                                                    
;Filename  :  calculator.asm                                   
;Program   :  Write a program to implement calculator.
;*****************************************************

 extern printf
 extern scanf
 section .data
    num1:        dd 0
    num2:        dd 0
    choice:      dd 0
    scn:         db "%d",0
    message1:    db " 1. Addition 2. Subtraction 3. Left shift 4. Right shif 5. Binary and 6. Binary or 7. Binary not 8. Multiplication 9. Division 10. Exit",10,0 
    message2:    db "Enter the choice",10,0
    message3:    db "Enter the first num",10,0
    message4:    db "Enter the second num",10,0
    message5:    db "Enter any number",10,0
    message6:    db "Result is=%d",10,0
    message7     db "Invalid choice",10,0

 section .text
    global main
 main:
    push ebp
    mov ebp,esp
 .loop:
    push message1
    call printf
    add esp,4
    push message2
    call printf
    add esp,4
    push choice
    push scn
    call scanf
    mov eax,[choice]
    cmp eax,1
    je .choice1
    cmp eax,2   
    je .choice2
    cmp eax,3   
    je .choice3
    cmp eax,4   
    je .choice4
    cmp eax,5   
    je .choice5
    cmp eax,6   
    je .choice6
    cmp eax,7   
    je .choice7
    cmp eax,8
    je .choice8
    cmp eax,9
    je .choice9
    cmp eax,10
    je .done
    
    push message7
    call printf
    add esp,4
    jmp .done
 
 .choice1:
    push message3
    call printf
    add esp,4
            
    push num1
    push scn
    call scanf

     push message4
     call printf
     add esp,4

     push num2
     push scn
     call scanf
         
     mov eax,[num1]
     mov ebx,[num2]
     add eax,ebx
     
     push eax
     push message6
     call printf
     jmp .loop

 .choice2:
    push message3
    call printf
    add esp,4
  
    push num1
    push scn
    call scanf
  
    push message4
    call printf
    add esp,4
  
    push num2
    push scn
    call scanf
  
    mov eax,[num1]
    mov ebx,[num2]
    sub eax,ebx
  
    push eax
    push message6
    call printf
    jmp .loop

 .choice3:

     push message5 
     call printf
     add esp,4

     push num1
     push scn
     call scanf
    
     mov eax,[num1]
     shl eax,1
     push eax
     push message6
     call printf
     jmp .loop
         
.choice4:
    push message5 
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    mov eax,[num1]
    sar eax,1

    push eax
    push message6
    call printf
    jmp .loop

 .choice5:   
    push message3   
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    push message4
    call printf
    add esp,4

    push num2 
    push scn
    call scanf

    mov eax,[num1]
    mov ebx,[num2]
    AND eax,ebx

    push eax
    push message6
    call printf
    jmp .loop

 .choice6:
    
    push message3   
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    push message4
    call printf
    add esp,4

    push num2
    push scn
    call scanf

    mov eax,[num1]
    mov ebx,[num2]
    OR eax,ebx

    push eax
    push message6
    call printf
    jmp .loop

 .choice7:

    push message5
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    mov eax,[num1]
    NOT eax

    push eax
    push message6
    call printf
    jmp .loop
    
 .choice8:

    push message3   
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    push message4
    call printf
    add esp,4

    push num2
    push scn
    call scanf

    mov eax,[num1]
    mov ebx,[num2]
    imul ebx

    push eax
    push message6
    call printf
    jmp .loop

.choice9:
   
    push message3   
    call printf
    add esp,4

    push num1
    push scn
    call scanf
    
    push message4
    call printf
    add esp,4

    push num2
    push scn
    call scanf

    mov eax,[num1]
    mov ebx,[num2]
    mov edx,0
    idiv ebx

    push eax
    push message6
    call printf
    jmp .loop

    
    .done:
        
        mov esp,ebp
        pop ebp
        ret





