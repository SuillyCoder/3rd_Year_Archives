
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
         
   MAIN PROC     
    
    MOV AX, 16A2H ; Add value to AX  
    MOV CX, 7203H ; Add value to CX  
    
    MOV BX, 1234H ; Add value to BX  
    MOV SI, 0350H ; Add value to SI      
    MOV DI, 0700H ; Add value to DI  
    
    MOV [BX + SI + 2], AX ; Load AX to Computed Effective Address  
    MOV [BX + DI + 5], CX ; Load CX to Computed Effective Address  
    
   END MAIN   

ret




