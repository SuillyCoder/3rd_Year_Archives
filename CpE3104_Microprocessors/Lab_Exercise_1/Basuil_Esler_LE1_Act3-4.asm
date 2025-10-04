.model small
.stack 100h  

.data
    msgEqual DB 'The Numbers Are The Same$',0     
    msgNotEqual DB 'The Numbers Are Not The Same$',0

MAIN PROC  
    MOV CX, 0000H; Initialize to 0  
    MOV AX, @data; Load Data 
    MOV DS, AX; Move Data to DS Register
   
    ;Load Number into Register 1 
    MOV BX, 0030h
    
    ;Load Number into Register 2  
    MOV CX, 0050h
    
    ;Compare the two numbers
    CMP BX, CX    
     
    ;Declare Status Flags
    JE equal 
    JNE notEqual
    
   ;Print Equal Status 
    equal: 
        LEA DX, msgEqual
        MOV AH, 09H
        INT 21h
        JMP exit
    ;Print Not Equal Status             
    notEqual: 
        LEA DX, msgNotEqual
        MOV AH, 09H
        INT 21h
        JMP exit
    
    exit:
        END MAIN