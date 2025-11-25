
DATA SEGMENT
    PORTA   EQU 0F0H     
    PORTB   EQU 0F2H     
    PORTC   EQU 0F4H     
    COM_REG EQU 0F6H     

    LAST_KEY DB 0        
    ; Key map for MM74C922 codes 0..15: unused entries are space ' '
    KEYMAP  DB '1','2','3',' ','4','5','6',' ','7','8','9',' ','*','0','#',' '
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA
    MOV DS, AX

    XOR AX, AX
    XOR BX, BX
    XOR CX, CX
    XOR DX, DX

    ; Initialize 8255
    MOV DX, COM_REG
    MOV AL, 89H          
    OUT DX, AL

    ; Initialize LCD
    CALL INIT_LCD

    ; Move cursor to middle (2nd line, position 8 for 16x2)
    MOV AL, 0C7H
    CALL INST_CTRL

MAIN_LOOP:
    MOV DX, PORTC
    IN  AL, DX
    AND AL, 10H          
    JZ MAIN_LOOP         

    IN  AL, DX           
    MOV BL, AL
    AND AL, 0FH          

    ; Convert code -> ASCII using table
    XOR BH, BH           
    MOV BX, OFFSET KEYMAP
    
    ; BX + AL -> address of ASCII
    MOV SI, BX
    ADD SI, AX      
    
    ; get ASCII into AL
    MOV AL, [SI]
    
    ; if ASCII is space ' ' then do nothing
    CMP AL, ' '
    JE WAIT_RELEASE      

    ; update only if changed
    MOV BL, LAST_KEY
    CMP AL, BL
    JE WAIT_RELEASE      

    ; Save new key
    MOV LAST_KEY, AL

    ; Display ASCII at center
    MOV DL, PORTB        
    MOV AL, 0C7H
    CALL INST_CTRL

    MOV AL, LAST_KEY
    CALL DATA_CTRL

WAIT_RELEASE:
    
WAIT_DA_LOW:
    MOV DX, PORTC
    IN  AL, DX
    AND AL, 10H
    JNZ WAIT_DA_LOW      
    JMP MAIN_LOOP

INST_CTRL:
    PUSH AX
    MOV DX, PORTA
    OUT DX, AL           
    MOV DX, PORTB
    MOV AL, 02H          
    OUT DX, AL
    CALL DELAY_1MS
    MOV DX, PORTB
    MOV AL, 00H          
    OUT DX, AL
    POP AX
    RET

DATA_CTRL:
    PUSH AX
    MOV DX, PORTA
    OUT DX, AL           
    MOV DX, PORTB
    MOV AL, 03H          
    OUT DX, AL
    CALL DELAY_1MS
    MOV DX, PORTB
    MOV AL, 01H          
    OUT DX, AL
    POP AX
    RET

INIT_LCD:
    MOV AL, 38H          
    CALL INST_CTRL
    MOV AL, 08H          
    CALL INST_CTRL
    MOV AL, 01H          
    CALL INST_CTRL
    MOV AL, 06H          
    CALL INST_CTRL
    MOV AL, 0CH          
    CALL INST_CTRL
    RET

DELAY_1MS:
    MOV BX, 02CAH
L1:
    DEC BX
    NOP
    JNZ L1
    RET

CODE ENDS
END START
