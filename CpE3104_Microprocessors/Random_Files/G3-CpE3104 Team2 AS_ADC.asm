DATA SEGMENT
 PORTA    EQU 0F0H     ; Address of PORT A (Output port for processed data)
 PORTB    EQU 0F2H     ; Address of PORT B (Used to control signals)
 PORTC    EQU 0F4H     ; Address of PORT C (Used to read input data)
 CMD_REG  EQU 0F6H  ; Address of Command Register (for configuring 8255)
DATA ENDS


CODE SEGMENT
 MOV AX, DATA
 MOV DS, AX          

START:
 MOV DX, CMD_REG
 MOV AL, 89H  
 OUT DX, AL             

 MOV DX, PORTB
 MOV AL, 00000000B      ; Clear all outputs on PORT B
 OUT DX, AL

 CALL DELAY_1MS         ; Small delay

 MOV DX, PORTB
 MOV AL, 00001000B      ; Send initial signal/pattern to PORT B (bit 3 ON)
 OUT DX, AL

MSR_VOLT:
 CALL DELAY_1MS

 MOV DX, PORTB
 MOV AL, 00011000B      ; Update control signal on PORT B
 OUT DX, AL

 CALL DELAY_CLK       

 MOV DX, PORTB
 MOV AL, 00100000B      ; Update PORT B 
 OUT DX, AL

 CALL DELAY_1MS

 XOR AX, AX
 MOV DX, PORTC
 IN AL, DX  

 MOV BL, 33H        
 DIV BL                 

 MOV DL, AL             
 MOV AL, AH             
 MOV AH, 0H             

 MOV BL, 05H          
 DIV BL                 
 MOV AH, AL            
 MOV AL, DL             

 MOV CL, 04D           
 SHL AL, CL            
 SHR AX, CL  

 MOV DX, PORTA
 OUT DX, AL 

 JMP MSR_VOLT           ; Repeat measurement continuously

;--- DELAY_CLK ---
DELAY_CLK:
 MOV BX, 02CAH          ; Load counter value
L1:
 DEC BX
 NOP
 JNZ L1                 ; Loop until BX = 0
 RET

DELAY_1MS:
 MOV BX, 02CAH          ; Load counter value
L2:
 DEC BX
 NOP
 JNZ L2
 RET


CODE ENDS
END START
