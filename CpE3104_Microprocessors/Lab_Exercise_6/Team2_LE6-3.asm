
DATA SEGMENT
    PORTA   EQU 0F0H     ; Lower digit (ones)
    PORTB   EQU 0F2H     ; Upper digit (tens)
    PORTC   EQU 0F4H     ; Switch input
    COM_REG EQU 0F6H     ; Control register (Command port)
    
    PORTA_2   EQU 0F8H     ; Lower digit (ones)
    PORTB_2   EQU 0FAH     ; Upper digit (tens)
    PORTC_2   EQU 0FCH     ; Switch input
    COM_REG_2 EQU 0FEH     ; Control register (Command port)
    
DATA ENDS

CODE SEGMENT
    MOV AX, DATA
    MOV DS, AX ; set the Data Segment address
    ORG 0000H
START:

; --- Initialize 8255 with command byte 89H ---
    MOV DX, COM_REG
    MOV AL, 89H
    OUT DX, AL
    
    MOV DX, COM_REG_2
    MOV AL, 89H
    OUT DX, AL
    
    CALL INIT_LCD
    MOV AL, 98H
    
    CALL DISP_MENU
    
DISP_MENU:
     CALL PRINT_LINE1
     CALL PRINT_LINE2
     CALL PRINT_LINE3
     CALL PRINT_LINE4
     
   
CHECK_DAVBL:
    MOV DX, PORTC ; set port of DAVBL(PORTC)
    IN AL, DX ; read PORTC
    TEST AL, 10H ; check if DAVBL is high
    JZ CHECK_DAVBL ; if low then check again
    IN AL, DX ; read 4-bit keypad data
    
    AND AL, 0FH ; mask upper nibble
    CMP AL, 00H
    JE DISPENSE1
    CMP AL, 01H
    JE DISPENSE2
    CMP AL, 02H
    JE DISPENSE3
    CMP AL, 04H
    JE DISPENSE4

    CMP AL, 0CH
    JE CLR_DISP
    JMP CHECK_DAVBL

DISPENSING:
     MOV AL, 83H
     CALL INST_CTRL
     MOV AL, 'D' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'S' 
     CALL DATA_CTRL
     MOV AL, 'P' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, 'N' 
     CALL DATA_CTRL
     MOV AL, 'S' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'N' 
     CALL DATA_CTRL
     MOV AL, 'G' 
     CALL DATA_CTRL
     MOV AL, '.' 
     CALL DATA_CTRL
     MOV AL, '.' 
     CALL DATA_CTRL
     MOV AL, '.' 
     CALL DATA_CTRL
     RET
    
PRINT_LINE1:
     MOV AL, 83H
     CALL INST_CTRL
     MOV AL, '[' 
     CALL DATA_CTRL
     MOV AL, '1' 
     CALL DATA_CTRL
     MOV AL, ']' 
     CALL DATA_CTRL
     MOV AL, 'C' 
     CALL DATA_CTRL
     MOV AL, 'O' 
     CALL DATA_CTRL
     MOV AL, 'K' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, ' ' 
     CALL DATA_CTRL
     MOV AL, 'L' 
     CALL DATA_CTRL
     MOV AL, 'A' 
     CALL DATA_CTRL
     MOV AL, 'R' 
     CALL DATA_CTRL
     MOV AL, 'G' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     RET
    
PRINT_LINE2:
     MOV AL, 0C3H
     CALL INST_CTRL
     
     MOV AL, '[' 
     CALL DATA_CTRL
     MOV AL, '2' 
     CALL DATA_CTRL
     MOV AL, ']' 
     CALL DATA_CTRL
     MOV AL, 'C' 
     CALL DATA_CTRL
     MOV AL, 'O' 
     CALL DATA_CTRL
     MOV AL, 'K' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, ' ' 
     CALL DATA_CTRL
     MOV AL, 'M' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, 'D' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'U' 
     CALL DATA_CTRL
     MOV AL, 'M' 
     CALL DATA_CTRL
     RET     
    
PRINT_LINE3:
     MOV AL, 97H
     CALL INST_CTRL
     MOV AL, '[' 
     CALL DATA_CTRL
     MOV AL, '3' 
     CALL DATA_CTRL
     MOV AL, ']' 
     CALL DATA_CTRL
     MOV AL, 'S' 
     CALL DATA_CTRL
     MOV AL, 'P' 
     CALL DATA_CTRL
     MOV AL, 'R' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'T' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, ' ' 
     CALL DATA_CTRL
     MOV AL, 'L' 
     CALL DATA_CTRL
     MOV AL, 'A' 
     CALL DATA_CTRL
     MOV AL, 'R' 
     CALL DATA_CTRL
     MOV AL, 'G' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     RET 
     
PRINT_LINE4:
     MOV AL, 0D7H
     CALL INST_CTRL
     MOV AL, '[' 
     CALL DATA_CTRL
     MOV AL, '4' 
     CALL DATA_CTRL
     MOV AL, ']' 
     CALL DATA_CTRL
     MOV AL, 'S' 
     CALL DATA_CTRL
     MOV AL, 'P' 
     CALL DATA_CTRL
     MOV AL, 'R' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'T' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, ' ' 
     CALL DATA_CTRL
     MOV AL, 'M' 
     CALL DATA_CTRL
     MOV AL, 'E' 
     CALL DATA_CTRL
     MOV AL, 'D' 
     CALL DATA_CTRL
     MOV AL, 'I' 
     CALL DATA_CTRL
     MOV AL, 'U' 
     CALL DATA_CTRL
     MOV AL, 'M' 
     CALL DATA_CTRL
     RET
     
;===========[1]: COKE LARGE ================;
     
DISPENSE1:	
      MOV DX, PORTA_2
      MOV AL, 00001000B
      OUT DX, AL
      CALL CLR_DISP 
      CALL DISPENSING
      
      MOV CL, 07H
DISP1_LOOP:
      ; Display countdown number on LCD (line 2, position 7)
      MOV AL, 0C7H         ; Set cursor to second line, position 7
      CALL INST_CTRL
      
      CALL DELAY_1SEC      ; Wait 1 second (much simpler!)          
      JNZ DISP1_LOOP       ; Continue until CL = 0
      JMP REINIT           ; Done, go to REINIT

;===========[2]: COKE MEDIUM ================;

DISPENSE2:	
      MOV DX, PORTA_2
      MOV AL, 00000100B
      OUT DX, AL
      CALL CLR_DISP 
      CALL DISPENSING
      
      MOV CL, 04H          ; 4 seconds countdown
DISP2_LOOP:
      ; Display countdown number on LCD (line 2, position 7)
      MOV AL, 0C7H         ; Set cursor to second line, position 7
      CALL INST_CTRL
      
      CALL DELAY_1SEC      ; Wait 1 second (much simpler!)        
      JNZ DISP2_LOOP       ; Continue until CL = 0
      JMP REINIT           ; Done, go to REINIT

;===========[3]: SPRITE LARGE ================;

DISPENSE3:	
      MOV DX, PORTA_2
      MOV AL, 00000010B
      OUT DX, AL
      CALL CLR_DISP 
      CALL DISPENSING
      
      MOV CL, 07H          ; 7 seconds countdown
DISP3_LOOP:
      ; Display countdown number on LCD (line 2, position 7)
      MOV AL, 0C7H         ; Set cursor to second line, position 7
      CALL INST_CTRL
      
      CALL DELAY_1SEC      ; Wait 1 second (much simpler!)      
      JNZ DISP3_LOOP       ; Continue until CL = 0
      JMP REINIT           ; Done, go to REINIT

;===========[4]: SPRITE MEDIUM ================;

DISPENSE4:	
      MOV DX, PORTA_2
      MOV AL, 00000001B
      OUT DX, AL
      CALL CLR_DISP 
      CALL DISPENSING
      
      MOV CL, 04H          ; 4 seconds countdown
DISP4_LOOP:
      ; Display countdown number on LCD (line 2, position 7)
      MOV AL, 0C7H         ; Set cursor to second line, position 7
      CALL INST_CTRL
      
      CALL DELAY_1SEC      ; Wait 1 second (much simpler!)        
      JNZ DISP4_LOOP       ; Continue until CL = 0
      JMP REINIT           ; Done, go to REINIT

;=========LCD FUNCTIONS============

CLR_DISP:
      MOV AL, 01H
      CALL INST_CTRL
      RET

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

REINIT:
   MOV DX, PORTA_2
   MOV AL, 00000000B
   OUT DX, AL
   
   CALL CLR_DISP
   CALL DISP_MENU
   JMP CHECK_DAVBL
    
; ---------- Delay 1 millisecond (does NOT clobber BX) ----------
DELAY_1MS:
    PUSH BX            ; preserve CX
    MOV  BX, 02CAH     ; ~714 loops (tweak to match your timing)
L1:
    DEC  BX
    NOP
    JNZ  L1
    POP  BX
    RET

; ---------- Delay 1 second (1000 x DELAY_1MS) ----------
DELAY_1SEC:
    PUSH BX            ; preserve CX
    MOV  BX, 1000
DELAY_1SEC_LOOP:
    CALL DELAY_1MS
    DEC  BX
    JNZ  DELAY_1SEC_LOOP
    POP  BX
    RET

   
ENDLESS:
   JMP ENDLESS
 
    
CODE ENDS
END