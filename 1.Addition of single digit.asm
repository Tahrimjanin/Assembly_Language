include 'emu8086.inc'    
.model small             
.stack 100h          
main proc                

print 'First Number:'     ; Display message for first input

mov ah,1                  ; DOS interrupt function 1: read single character
int 21h                   ; Take input from keyboard (ASCII goes to AL)

sub al,48                 ; Convert ASCII to number (e.g., '5' -> 5)

mov bl,al                 ; Store first number in BL register

printn                    ; Print new line
print 'Second Number:'    ; Prompt for second input

mov ah,1                  ; Read second character input
int 21h                   ; Input stored in AL

sub al,48                 ; Convert ASCII to number

add al,bl                 ; Add first number (BL) + second number (AL)
                           ; Result stored in AL

add al,48                 ; Convert result back to ASCII for printing

printn                    ; New line
print 'Sum is:'           ; Display result message

mov ah,2                  ; DOS function 2: display character
mov dl,al                 ; Move result into DL (required for print)
int 21h                   ; Print the character

exit:                  
mov ah,4ch                
int 21h                

main endp                
end main                 