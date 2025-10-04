org 100h
.data
prompt1 DB 'Enter your name, program, and year (end with dollar sign): $'
prompt2 DB 13,10,'Enter number of times to display: $'
newline DB 13,10,'$'
input_buffer DB 100 DUP('$') ; Buffer for user input
.code
main proc
    ; Ask for complete data input
    MOV AH, 9
    LEA DX, prompt1
    INT 21H
    
    ; Read input character by character until '$'
    MOV SI, OFFSET input_buffer ; Point to buffer
input_loop:
    MOV AH, 1 ; Read character with echo
    INT 21H
    CMP AL, '$' ; Check if terminator
    JE input_done
    MOV [SI], AL ; Store character
    INC SI ; Move to next position
    JMP input_loop
    
input_done:
    MOV BYTE PTR [SI], '$' ; Add string terminator
    
    ; Ask for number of iterations
    MOV AH, 9
    MOV DX, OFFSET prompt2
    INT 21H
    
    ; Read single digit (0-9) and convert ASCII to numeric
    MOV AH, 1
    INT 21H
    SUB AL, 30h     ; Convert ASCII to numeric value (subtract 48)
    MOV CL, AL      ; Store counter in CL 
    MOV AH, 00H
    
    ; Print newline
    MOV AH, 9
    MOV DX, OFFSET newline
    INT 21H
    
display_loop:
    ; Check if counter is 0
    CMP CL, 00h
    JE program_end
    
    ; Display the stored input
    MOV AH, 9
    MOV DX, OFFSET input_buffer
    INT 21H
    
    ; Print newline
    MOV AH, 9
    MOV DX, OFFSET newline
    INT 21H
         
    DEC CL          ; Decrease counter
    JMP display_loop ; Jump back to loop
    
program_end:
    MOV AH, 4CH     ; Exit program
    INT 21H

end main
