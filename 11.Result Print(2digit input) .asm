
include 'emu8086.inc'
.model small
.stack 100h
.data
.code
main proc

    print 'Enter Marks (2 digits): '


    mov ah, 1
    int 21h
    sub al, 48       
    mov cl, al       

 
    mov ah, 1
    int 21h
    sub al, 48        
    mov ch, al        

   
    mov al, cl        ; al = 4
    mov bl, 10
    mul bl            ; ax = 4 * 10 = 40
    add al, ch        ; al = 40 + 2 = 42
    mov bx, ax        
    printn

    cmp bx, 90
    jge IF1
    cmp bx, 80
    jge IF2
    cmp bx, 75
    jge IF3
    jmp ELSE_PART

IF1:
    print 'Grade: A+'
    jmp END_IF
IF2:
    print 'Grade: A'
    jmp END_IF
IF3:
    print 'Grade: B'
    jmp END_IF
ELSE_PART:
    print 'Grade: C'

END_IF:
    mov ah, 4ch
    int 21h

main endp
end main