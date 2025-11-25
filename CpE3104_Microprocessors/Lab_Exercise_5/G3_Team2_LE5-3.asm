DATA SEGMENT
    PORTA   EQU 0F0H     ; Lower digit (ones)
    PORTB   EQU 0F2H     ; Upper digit (tens)
    PORTC   EQU 0F4H     ; Switch input
    COM_REG EQU 0F6H     ; Control register (Command port)
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
    XOR SI, SI
    XOR DI, DI
    XOR BP, BP

    ; --- Initialize 8255 with command byte 89H ---
    MOV DX, COM_REG
    MOV AL, 89H
    OUT DX, AL

    ; --- Initialize counter to 00 ---
    MOV AL, 00H
    MOV DX, PORTA
    OUT DX, AL
    MOV DX, PORTB
    OUT DX, AL

MAIN_LOOP:
    ; --- Read switch from PORTC ---
    MOV DX, PORTC
    IN  AL, DX
    TEST AL, 01H            ; Check bit 0 (PC0 switch)
    JZ   CONTINUE_COUNT      ; If not pressed, continue counting

    CALL DELAY

WAIT_RELEASE:
    MOV DX, PORTC
    IN  AL, DX
    TEST AL, 01H
    JNZ  WAIT_RELEASE

    ; --- Reset counter to 00 ---
    XOR AL, AL
    MOV DX, PORTA
    OUT DX, AL
    MOV DX, PORTB
    OUT DX, AL

    ; Reset ones and tens in registers too
    XOR BL, BL
    XOR BH, BH

    JMP MAIN_LOOP

CONTINUE_COUNT:
    ; --- Read current digits ---
    MOV DX, PORTA
    IN  AL, DX
    MOV BL, AL               ; Ones digit

    MOV DX, PORTB
    IN  AL, DX
    MOV BH, AL               ; Tens digit

    ; --- Increment ones ---
    INC BL
    CMP BL, 0AH
    JL  UPDATE_DISPLAY        ; If <10, just update

    ; --- Carry to tens ---
    MOV BL, 00H
    INC BH
    CMP BH, 0AH
    JL  UPDATE_DISPLAY

    ; --- Roll over after 99 ---
    MOV BH, 00H

UPDATE_DISPLAY:
    MOV AL, BL
    MOV DX, PORTA
    OUT DX, AL

    MOV AL, BH
    MOV DX, PORTB
    OUT DX, AL

    CALL SHORT_DELAY

    JMP MAIN_LOOP


DELAY PROC
    MOV CX, 0FFFFH
DLY1:
    NOP
    LOOP DLY1
    RET
DELAY ENDP


SHORT_DELAY PROC
    MOV CX, 3FFFH
SDELAY:
    NOP
    LOOP SDELAY
    RET
SHORT_DELAY ENDP


CODE ENDS
END START