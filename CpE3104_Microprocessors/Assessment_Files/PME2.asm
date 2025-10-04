.MODEL SMALL
.STACK 100H

.DATA
    msg_inputA    DB 'Input A: $'
    msg_inputB    DB 'Input B: $'
    msg_inputC    DB 'Input C: $'
    msg_inputD    DB 'Input D: $'
    msg_equals    DB '==========$'
    msg_A         DB 'A = $'
    msg_B         DB 'B = $'
    msg_C         DB 'C = $'
    msg_D         DB 'D = $'
    msg_equation  DB 'X = $'
    msg_base10    DB 'X = $'
    msg_base5     DB 'X = $'
    msg_inbase10  DB ' in base 10$'
    msg_inbase5   DB ' in base 5$'
    
    ; Variables
    A        DB ?
    B        DB ?
    C        DB ?
    D        DB ?
    result   DW ?
    temp     DW ?
    
    ; Buffer for input and conversion
    input_buf DB 3, ?, 3 DUP('$')
    output_buf DB 6 DUP('$')
    
.CODE
START:
    MOV AX, @DATA
    MOV DS, AX
    
    ; Get input for A
    CALL NEWLINE
    LEA DX, msg_inputA
    MOV AH, 09H
    INT 21H
    CALL GET_2DIGIT_INPUT
    MOV A, AL
    
    ; Get input for B
    CALL NEWLINE
    LEA DX, msg_inputB
    MOV AH, 09H
    INT 21H
    CALL GET_2DIGIT_INPUT
    MOV B, AL
    
    ; Get input for C
    CALL NEWLINE
    LEA DX, msg_inputC
    MOV AH, 09H
    INT 21H
    CALL GET_2DIGIT_INPUT
    MOV C, AL
    
    ; Get input for D
    CALL NEWLINE
    LEA DX, msg_inputD
    MOV AH, 09H
    INT 21H
    CALL GET_2DIGIT_INPUT
    MOV D, AL
    
    ; Display separator
    CALL NEWLINE
    LEA DX, msg_equals
    MOV AH, 09H
    INT 21H
    CALL NEWLINE
    
    ; Display inputted values
    LEA DX, msg_A
    MOV AH, 09H
    INT 21H
    MOV AL, A
    CALL DISPLAY_2DIGIT
    CALL NEWLINE
    
    LEA DX, msg_B
    MOV AH, 09H
    INT 21H
    MOV AL, B
    CALL DISPLAY_2DIGIT
    CALL NEWLINE
    
    LEA DX, msg_C
    MOV AH, 09H
    INT 21H
    MOV AL, C
    CALL DISPLAY_2DIGIT
    CALL NEWLINE
    
    LEA DX, msg_D
    MOV AH, 09H
    INT 21H
    MOV AL, D
    CALL DISPLAY_2DIGIT
    CALL NEWLINE
    
    ; Display separator
    CALL NEWLINE
    LEA DX, msg_equals
    MOV AH, 09H
    INT 21H
    CALL NEWLINE
    
    ; Display equation with values
    LEA DX, msg_equation
    MOV AH, 09H
    INT 21H
    
    MOV AL, A
    CALL DISPLAY_2DIGIT
    CALL DISPLAY_SPACE
    
    MOV DL, '-'
    MOV AH, 02H
    INT 21H
    CALL DISPLAY_SPACE
    
    MOV AL, B
    CALL DISPLAY_2DIGIT
    CALL DISPLAY_SPACE
    
    MOV DL, 'x'
    MOV AH, 02H
    INT 21H
    CALL DISPLAY_SPACE
    
    MOV AL, C
    CALL DISPLAY_2DIGIT
    CALL DISPLAY_SPACE
    
    MOV DL, '/'
    MOV AH, 02H
    INT 21H
    CALL DISPLAY_SPACE
    
    MOV AL, D
    CALL DISPLAY_2DIGIT
    CALL NEWLINE
    
    ; Display separator
    CALL NEWLINE
    LEA DX, msg_equals
    MOV AH, 09H
    INT 21H
    CALL NEWLINE
    
    ; Calculate X = A - B x C / D
    CALL CALCULATE
    
    ; Display result in base 10
    LEA DX, msg_base10
    MOV AH, 09H
    INT 21H
    
    MOV AX, result
    CALL DISPLAY_NUMBER_BASE10
    CALL DISPLAY_SPACE
    
    LEA DX, msg_inbase10
    MOV AH, 09H
    INT 21H
    CALL NEWLINE
    
    ; Display result in base 5
    LEA DX, msg_base5
    MOV AH, 09H
    INT 21H
    
    MOV AX, result
    CALL DISPLAY_NUMBER_BASE5
    CALL DISPLAY_SPACE
    
    LEA DX, msg_inbase5
    MOV AH, 09H
    INT 21H
    CALL NEWLINE
    
    ; End program
    MOV AH, 4CH
    INT 21H

; Procedure to get 2-digit input
GET_2DIGIT_INPUT PROC
    LEA DX, input_buf
    MOV AH, 0AH
    INT 21H
    
    ; Convert ASCII to number
    MOV AL, input_buf[2]    ; First digit
    SUB AL, '0'
    MOV BL, 10
    MUL BL
    MOV BL, AL
    
    MOV AL, input_buf[3]    ; Second digit
    SUB AL, '0'
    ADD AL, BL
    
    RET
GET_2DIGIT_INPUT ENDP

; Procedure to display 2-digit number
DISPLAY_2DIGIT PROC
    MOV AH, 0
    MOV BL, 10
    DIV BL
    
    MOV BL, AH  ; Save remainder
    
    ; Display tens digit
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    ; Display units digit
    MOV AL, BL
    ADD AL, '0'
    MOV DL, AL
    MOV AH, 02H
    INT 21H
    
    RET
DISPLAY_2DIGIT ENDP

; Procedure to calculate X = A - B x C / D
CALCULATE PROC
    ; Calculate B x C
    MOV AL, B
    MOV BL, C
    MUL BL          ; AX = B * C
    
    ; Divide by D
    MOV BL, D
    DIV BL          ; AL = (B * C) / D, AH = remainder
    
    ; Subtract from A
    MOV BL, A
    SUB BL, AL
    MOV result, BX  ; Store result
    
    RET
CALCULATE ENDP

; Procedure to display number in base 10
DISPLAY_NUMBER_BASE10 PROC
    MOV CX, 0       ; Counter for digits
    MOV BX, 10      ; Base 10
    
CONVERT_BASE10:
    MOV DX, 0
    DIV BX          ; Divide AX by 10
    PUSH DX         ; Push remainder
    INC CX
    CMP AX, 0
    JNE CONVERT_BASE10
    
DISPLAY_BASE10:
    POP DX
    ADD DL, '0'
    MOV AH, 02H
    INT 21H
    LOOP DISPLAY_BASE10
    
    RET
DISPLAY_NUMBER_BASE10 ENDP

; Procedure to display number in base 5
DISPLAY_NUMBER_BASE5 PROC
    MOV CX, 0       ; Counter for digits
    MOV BX, 5       ; Base 5
    
CONVERT_BASE5:
    MOV DX, 0
    DIV BX          ; Divide AX by 5
    PUSH DX         ; Push remainder
    INC CX
    CMP AX, 0
    JNE CONVERT_BASE5
    
DISPLAY_BASE5:
    POP DX
    ADD DL, '0'
    MOV AH, 02H
    INT 21H
    LOOP DISPLAY_BASE5
    
    RET
DISPLAY_NUMBER_BASE5 ENDP

; Utility procedures
NEWLINE PROC
    MOV DL, 0DH
    MOV AH, 02H
    INT 21H
    MOV DL, 0AH
    MOV AH, 02H
    INT 21H
    RET
NEWLINE ENDP

DISPLAY_SPACE PROC
    MOV DL, ' '
    MOV AH, 02H
    INT 21H
    RET
DISPLAY_SPACE ENDP

END START