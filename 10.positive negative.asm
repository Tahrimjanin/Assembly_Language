include 'Emu8086.inc'
.model small
.stack 100h
.data
.code
main proc
    
    mov bx, -10 
    cmp bx, 0 
    
    JL IF  
    JGE ELSE
    
    IF:
    Printn "The Number is Negative."
    jmp End
    
    ELSE:
    Printn "The Number is Positive."
    jmp End 
    
    
    
    End:
    mov ah, 4ch
    int 21h
    
main endp
end main 

  