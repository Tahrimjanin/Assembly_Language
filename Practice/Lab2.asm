include 'emu8086.inc'

.model small
.stack 100h

main proc
    
    print 'Enter 1st num : '
    mov ah,1
    int 21h
    
    sub ah,48
    mov bl,al
    
    printn    
    print 'Enter 2st num : '
    mov ah,1
    int 21h
    sub ah,48 
          
    add al,bl
    
    
    mov ah,0
    aaa
    add al,48
    add ah,48
    mov bx ,ax
    printn
    print 'sum is :'
    
    mov ah,2
    mov dl ,bh  
    int 21h
    
         
    mov ah,2
    mov dl ,bl 
    int 21h

  
  
  
  exit:
  mov ah ,4ch
  int 21h
  main endp
end main