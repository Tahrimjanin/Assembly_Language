include 'emu8086.inc'
.model small
.stack 100h
.data                     ; Data segment starts
a db 0                    ; Define variable 'a' (1 byte) initialized to 0
 

main proc
    mov ax,@data              ; Load address of data segment into AX
    mov ds,ax                 ; Move AX into DS (initialize data segment)
    
    print 'First Number:'
    mov ah,1
    int 21h
    mov a,al  ;store Memory (RAM) and  later use possible
    
    printn
    print 'Second Number:'
    mov ah,1
    int 21h
    
    add al,a 
    
    mov ah,0
    aaa
    add al,48
    add ah,48
    
    mov bx,ax
    
    printn
    print 'Sum is:'
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main