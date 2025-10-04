ORG 100H

.data
    char1 DB 'a'     
    char2 DB 'G'     
    num   DB 5       
    char3 DB 't'     

.code
MAIN PROC
    MOV AX, @DATA    ; Initialize DS
    MOV DS, AX

    ; Convert character in AL to uppercase
    MOV AL, char1
    AND AL, 0DFh     ; AND turn uppercase to lowercase

    ; Convert character in BL to lowercase
    MOV BL, char2
    OR BL, 20h       ; OR turns lowercase to uppercase

    ; Convert binary decimal byte into ASCII digit
    MOV CL, num      
    ADD CL, 30h      ; Add 0x30 to turn it into ascii (hex)

    ; Reverse case
    MOV DL, char3
    XOR DL, 20h      ; Reverses case

RET
