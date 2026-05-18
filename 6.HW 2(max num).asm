include 'emu8086.inc'
.model small
.stack 100h
.code
main proc 
    
    print 'Enter First Number:'
    mov ah, 1
    int 21h
    mov bl, al        
    
    printn
    print 'Enter Second Number:'
    mov ah, 1          
    int 21h            
    
    cmp bl, al          
    jg num1_larger      
    je num_equal        
    
   
    printn 'Number 2 is Larger' 
    jmp end_program

num1_larger:
    printn 'Number 1 is Larger'  
    jmp end_program    

num_equal: 
    printn 'Both Numbers are Equal'
   
end_program:
    mov ah, 4Ch
    int 21h  

main endp
end main