include 'emu8086.inc'
.model small
.stack 100h  

main proc
    
  print 'Enter First number :'
   
  mov ah,1
  int 21h 
  sub al,48
  mov bl ,al
    
  printn  
  print 'Enter 2nd number :'
   
  mov ah,1
  int 21h 
  sub al,48
  
  add al,bl
  add al,48 
  
  printn
  print 'sum is:'
  
  mov ah,2
  mov dl,al 
  int 21h
  
  
  exit:
  mov ah ,4ch
  int 21h
  main endp
end main
  
  