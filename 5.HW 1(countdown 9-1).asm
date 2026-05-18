include 'emu8086.inc'
.model small
.stack 100h 
.data
.code
main proc
   
    mov cl, 9     ; Loop counter set to 9 ; if start 1 set 1   
    
countdown_loop:  

    mov ah, 2
    mov dl, cl
    add dl, 48
    int 21h
    
    Printn  
    
    dec cl               ; for 1 -9 inc cl
    cmp cl, 0            ; Compare counter with 0  ;for 1 -9 = cl,10
    je end_program     
    
jmp countdown_loop  
  
  
  
end_program:
    mov ah, 4Ch
    int 21h
    main endp
end main 


