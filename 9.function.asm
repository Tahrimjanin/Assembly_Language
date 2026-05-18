include 'Emu8086.inc'    
.model small             
.stack 100h            
.data                    
.code                     

main proc                 
    
    call function_one     ; Call function_one procedure   & ; Control jumps to function_one                     

    Printn 'Main function' ; After returning from function_one
    mov ah, 4ch          
    int 21h               ; Exit program

main endp                  
function_one proc         

    printn 'function one' 
    
    ret           ; Return control back to caller
                          ; (back to main procedure)         

function_one endp         

end                      