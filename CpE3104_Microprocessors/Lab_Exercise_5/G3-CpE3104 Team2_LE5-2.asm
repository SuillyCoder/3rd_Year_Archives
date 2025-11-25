;====================================================================
; Main.asm file for 8086 + DIP Switch input (DEBUGGING VERSION)
;
; Processor: 8086
; Compiler:  MASM32
; Internal Memory Size: 0x10000 (Proteus setting)
;====================================================================
DATA SEGMENT
   PORTA EQU 0F0H ; PORTA address (LEDs)
   PORTB EQU 0F2H ; PORTB address (7-segment)
   PORTC EQU 0F4H ; PORTC address (DIP switches, active low 'ON')
DATA ENDS
CODE SEGMENT
   ORG 1000H
   MOV AX, DATA
   MOV DS, AX

   ; Set all outputs OFF initially
   MOV DX, PORTA
   MOV AL, 00H
   OUT DX, AL           ; ? Use DX, not PORTA

   MOV DX, PORTB
   MOV AL, 00H
   OUT DX, AL           ; ? Use DX, not PORTB

START:
    MOV DX, PORTC
    IN  AL, DX           ; Read DIP switches
    AND AL, 0FH          ; ? Mask to lower 4 bits

    CMP AL, 01H          ; Check if switches = 0001
    JE  LED_LOOP 

    CMP AL, 02H          ; Check if switches = 0010
    JE  SEG_LOOP 

    ; If neither, turn off LEDs
    MOV DX, PORTA
    MOV AL, 00H
    OUT DX, AL           ; ? Use DX, not PORTA

    JMP START            ; Keep polling

LED_LOOP: 
   MOV DX, PORTA
   MOV AL, 10000000B     ; Alternating LEDs pattern
   OUT DX, AL            ; ? FIXED: Use DX instead of PORTA
   CALL DELAY

   MOV AL, 01000000B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00100000B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00010000B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00001000B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00000100B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00000010B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 00000001B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   JMP START             ; ? ADDED: Return to polling loop

SEG_LOOP:
   MOV DX, PORTB
   MOV AL, 0111111B     ; Alternating LEDs pattern
   OUT DX, AL            ; ? FIXED: Use DX instead of PORTA
   CALL DELAY

   MOV AL, 0110000B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1011011B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1001111B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1100110B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1101101B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1111101B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 0000111B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1111111B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   MOV AL, 1101111B     ; Alternating LEDs pattern
   OUT DX, AL   
   CALL DELAY

   JMP START             ; ? ADDED: Return to polling loop            ; ? ADDED: Return to polling loop
; Simple software delay (not used in this debug version)
SHUT_OFF:
   MOV DX, PORTA
   MOV AL, 00H
   OUT DX, AL           ; ? Use DX, not PORTA

   MOV DX, PORTB
   MOV AL, 00H
   OUT DX, AL 
DELAY:
    PUSH DX
    MOV DX, 0FFFFH
DELAY1:
    NOP
    NOP
    NOP
    DEC DX
    JNZ DELAY1
    POP DX
    RET

CODE ENDS
END