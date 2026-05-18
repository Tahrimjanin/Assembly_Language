include 'emu8086.inc'
.model small
.stack 100h
main proc
    
print 'First Number:'
mov ah,1
int 21h
sub al,48          
mov bl,al

printn
print 'Second Number:'
mov ah,1
int 21h
sub al,48    
add al,bl 
  
  
         
mov ah,0
aaa                ; adjust for ASCII addition (unpacked BCD)
add al,48          ; convert units digit to ASCII
add ah,48          ; convert tens digit to ASCII
mov bx,ax          ; store result in BX (BH=tens, BL=units) 




printn
print 'Sum is:'

   
mov ah,2
mov dl,bh          ; print tens digit
int 21h


mov ah,2
mov dl,bl          ; print units digit
int 21h
   
   

   
   
   
   
exit:
mov ah,4ch
int 21h

main endp
end main