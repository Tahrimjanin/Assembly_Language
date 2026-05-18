include 'emu8086.inc'     
.model small              
.stack 100h               
.data                    
a db ?                    
.code                
main proc  
                   

mov ax, @data             
mov ds, ax               

print 'Enter 1st number:' 
mov ah,1                  
int 21h                 
sub al,48                 
mov a, al                 

printn                    
print 'Enter 2nd number;' 
mov ah,1                  
int 21h                  
sub al,48                


mul a                     ; al* a ? result stored in ax
                          ; ax = al * memory variable a

aam                       ; Adjust after multiplication
                          ; AH = tens digit, AL = units digit

mov bx, ax              
                                 
    
printn
print 'Multiplication :'
mov ah,2               

mov dl, bh              
add dl,48                
int 21h

mov ah,2
mov dl, bl             
add dl,48
int 21h

exit:
mov ah, 4ch             
int 21h

main endp
end main