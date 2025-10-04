org 100h
.code
MAIN PROC
    
    ;BL = Y = 20 
    MOV BL, 20h
    ;CL = Z = 30   
    MOV CL, 30h
    ;DL = W = 10
    MOV DL, 10h  
    
    ;Y+Z  
    ADD BL, CL   
    ;Temporary result transfer
    MOV AL, BL     
    ;(Y+Z)*W
    MUL DL         
    
    ;BX = 100
    MOV BX, 0100h   
    
    ;((Y+Z)*W)/ 100
    DIV BX    
    
    ;Store result
    MOV DL, AL      
    
    ;Interrupt process
    MOV AH, 4Ch
    INT 21h

MAIN ENDP
END MAIN
