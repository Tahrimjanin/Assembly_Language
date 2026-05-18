include 'emu8086.inc'  
.model small
.stack 100h
.code
main proc


inc bx ;bx++ 
;dec bx ;bx-- 

mov cx, 4  ; loop limit (n = 5)
mov bx, 0   ; starting value (i = 0)

;for (int i=0; i<=n ; i++)

Start:
cmp bx, cx 
JE Last  
printn "CSE"
inc bx
jne start  



Last:
mov ah, 4ch
int 21h
main endp
end main 


;JE=Jump Equal
;JNE=jump Not Equal
;JG=Jump Greater
;JGE=Jump Greater Equal