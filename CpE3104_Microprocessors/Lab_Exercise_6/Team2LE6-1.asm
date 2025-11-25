
DATA SEGMENT
    PORTA   EQU 0F0H     ; Lower digit (ones)
    PORTB   EQU 0F2H     ; Upper digit (tens)
    PORTC   EQU 0F4H     ; Switch input
    COM_REG EQU 0F6H     ; Control register (Command port)
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE, DS:DATA

START:

; --- Initialize 8255 with command byte 89H ---
    MOV DX, COM_REG
    MOV AL, 89H
    OUT DX, AL
    
    CALL INIT_LCD
    MOV AL, 98H
    
    CALL INST_CTRL
    
    MOV AL, 'H'
    CALL DATA_CTRL
    MOV AL, 'E'
    CALL DATA_CTRL
    MOV AL, 'L'
    CALL DATA_CTRL
    MOV AL, 'L'
    CALL DATA_CTRL
    MOV AL, '0'
    CALL DATA_CTRL
    MOV AL, '!'
    CALL DATA_CTRL
    
ENDLESS:
    JMP ENDLESS

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
END