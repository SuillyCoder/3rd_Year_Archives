DATA SEGMENT
    ORG 03000H

    PORTA   EQU 0F0H
    PORTB   EQU 0F2H
    PORTC   EQU 0F4H
    COM_REG EQU 0F6H
    PIC1    EQU 0F8H
    PIC2    EQU 0FAH
    ICW1    EQU 13H
    ICW2    EQU 80H
    ICW4    EQU 03H
    OCW1    EQU 0FCH

    ; 7-segment table for keys 0–15 (74C922 outputs 0–F)
    SEG_TABLE DB 06H, 5BH, 4FH, ' ', 66H, 6DH, 7DH, ' '
               DB 07H, 7FH, 6FH, ' ', 40H, 3FH, 40H, ' '

    LAST_KEY DB 0              ; Stores last displayed digit
DATA ENDS

STK SEGMENT STACK
    BOS DW 64 DUP(?)
    TOS LABEL WORD
STK ENDS

; ======================================================================
; ISR for IR0  (KEYPAD via 74C922)
; ======================================================================
PROCED1 SEGMENT PUBLIC 'CODE'
ISR1 PROC FAR
    ASSUME CS:PROCED1, DS:DATA
    ORG 01000H

    PUSHF
    PUSH AX
    PUSH BX
    PUSH DX

    ; -- Read keypad code from PORTC bits 0-3 --
    MOV DX, PORTC
    IN AL, DX
    AND AL, 0FH            ; 74C922 gives 4-bit key code

    MOV LAST_KEY, AL       ; save key

    ; lookup 7-seg pattern
    LEA BX, SEG_TABLE
    XLAT

    ; Display on PORTA
    MOV DX, PORTA
    OUT DX, AL

    POP DX
    POP BX
    POP AX
    POPF
    IRET
ISR1 ENDP
PROCED1 ENDS

PROCED2 SEGMENT PUBLIC 'CODE'
ISR2 PROC FAR
    ASSUME CS:PROCED2, DS:DATA
    ORG 02000H

    PUSHF
    PUSH AX
    PUSH DX
    PUSH BX

    ; Read LAST_KEY
    MOV AL, LAST_KEY
    LEA BX, SEG_TABLE
    XLAT

    MOV DX, PORTB
    OUT DX, AL

    POP BX
    POP DX
    POP AX
    POPF
    IRET
ISR2 ENDP
PROCED2 ENDS

CODE SEGMENT PUBLIC 'CODE'
    ASSUME CS:CODE, DS:DATA, SS:STK
    ORG 08000H

START:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, STK
    MOV SS, AX
    LEA SP, TOS
    CLI

    ; --- Configure 8255 ---
    MOV DX, COM_REG
    MOV AL, 89H            
    OUT DX, AL

    ; --- Configure 8259 ---
    MOV DX, PIC1
    MOV AL, ICW1
    OUT DX, AL

    MOV DX, PIC2
    MOV AL, ICW2
    OUT DX, AL

    MOV AL, ICW4
    OUT DX, AL

    MOV AL, 0FCH           ; Enable IR0 & IR1 only
    OUT DX, AL
    STI

    ; --- Install interrupt vectors ---
    MOV AX, OFFSET ISR1
    MOV [ES:200H], AX
    MOV AX, SEG ISR1
    MOV [ES:202H], AX

    MOV AX, OFFSET ISR2
    MOV [ES:204H], AX
    MOV AX, SEG ISR2
    MOV [ES:206H], AX

HERE:
    MOV DX, PORTC
    IN AL, DX

    XOR AL, 80H        
    OUT DX, AL

    ; crude delay
    MOV CX, 30000
D1: 
    LOOP D1

    JMP HERE

CODE ENDS
END START