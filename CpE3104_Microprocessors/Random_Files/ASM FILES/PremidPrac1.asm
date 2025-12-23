org 100H

.code 
   main proc 
    
    ;Move hex value to AX Register
    mov ax, 1234h 
    ;Move hex value to BX Register
    mov bx, 5678h   
    ;Add the value of AX and BX together
    add ax, bx    
    ;Store the new value in Memory Address
    mov [2000h], ax
    
   end main   
   
ret

    