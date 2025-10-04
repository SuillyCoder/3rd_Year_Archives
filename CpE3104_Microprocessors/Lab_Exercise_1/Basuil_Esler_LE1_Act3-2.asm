.model small
.stack 100h

MAIN PROC  
    ;Declare i = 10
    MOV AX, 0010h 
    
    ;Declare j = 20
    MOV BX, 0020h  
    
    ;Compare the two numbers
    CMP AX, BX    
    
    JG greaterThan
    JL lessThan
    JE equal
    
    ; Store AX value in DX 
    greaterThan:
        MOV DL,AL
        JMP exit
        
    ; Store BX Value in DX
    lessThan:  
        MOV DL,BL 
        JMP exit
        
    ;Store either value in DX   
    equal: 
        MOV DL,AL     
        JMP exit
    
    
    exit:
        END MAIN