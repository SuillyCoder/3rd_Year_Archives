;Standard Declarations
.model small
.stack 100H   

.code

MAIN PROC
    ;Value of Register 1
    MOV AX, 5678h
    
    ;Value of Register 2
    MOV BX, 1234h     
    
    ;Subtraction Process via 'Sub'
    SUB AX, BX  
END MAIN