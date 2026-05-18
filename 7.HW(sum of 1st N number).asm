include 'emu8086.inc'
.model small
.stack 100h
.code
main proc

    mov cx, 6      ; N = 5
    mov bx, 0       ; sum = 0
    mov ax, 0       ; counter i = 0 (in al)

Start:
    cmp ax, cx      ; compare i with N
    JG Last         ; if i > N, exit loop

    add bx, ax      ; sum = sum + i
    inc ax          ; i++
    jne Start       ; loop back

Last:
    ; bx = 15 (1+2+3+4+5)
    ; Double digit print like your addition code
    mov ax, bx      ; ax = sum (15)
    mov ah, 0
    aaa             ; adjust: al = units, ah = tens

    add al, 48
    add ah, 48

    mov bx, ax      ; store to bx

    print 'Sum of 1 to 6 = '
    mov ah, 2
    mov dl, bh      ; tens digit
    int 21h

    mov ah, 2
    mov dl, bl      ; units digit
    int 21h

    printn
    printn "The program Ended!"
    mov ah, 4ch
    int 21h

main endp
end main

