org 100h
.code
MAIN PROC

    ;Set CX to 0
    MOV CX, 0000H

    ;B = AL = 1
    MOV AL, 01H
    ; D = BL = 1
    MOV BL, 01H
    ;B*D
    MUL BL      ; AL * BL = 1 * 1 = 1. Result is in AX (0001H)
    ;Store Result in DL
    MOV DL, AL  ; DL = 01H

    ;A = AH = 2
    MOV AH, 02H
    ;Temporary transfer of B
    MOV BH, BL  ; BH = 01H

    ;A / B
  
    MOV AL, AH    
    XOR AH, AH     
    
    DIV BH          

    ;Store result (quotient) in CH
    MOV CH, AL      ; CH = 02H

    ;A-B
    MOV AH, 02H     ; Re-initialize AH to 2
    MOV BL, 01H     ; Re-initialize BL to 1
    SUB AH, BL      
    
    ;(A-B) + E
    XOR DH, DH
    ADD AH, DH     
    
    ;(A/B) - (A-B+E)
    SUB CH, AH   
    
    ;;Store result in DH
    MOV DH, CH     

    ;(B*D) + ((A/B)-(A-B+E))
    ADD DH, DL      

    END MAIN
ret