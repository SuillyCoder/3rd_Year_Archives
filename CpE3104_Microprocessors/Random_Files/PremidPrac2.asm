
org 100h

.code
    main proc  
    ;Move the hex value to CX    
    mov CX, 0xABCDh     
    ;Move the hex value to DX
    mov DX, 0xEF12h    
    ;Push CX onto the stack
    push CX
    ;Push DX onto the stack
    push DX 
    ;Take out recent stack vaue and put in CX
    pop CX 
    ;Take out recent stack value and put in DX
    pop DX
    end main
ret




