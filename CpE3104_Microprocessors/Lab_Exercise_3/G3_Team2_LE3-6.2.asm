.model small
.stack 100h
.data
    prompt  db 'Enter a string: $'
    input   db 80,0,80 dup('$')    ; DOS input buffer (max,len,chars...)
    reversedString db 80 dup(?)

    equalMsg db 0Dh,0Ah,'The String is a Palindrome$'
    nequalMsg db 0Dh,0Ah,'The String is not a Palindrome$'

    numFMsg db 0Dh,0Ah,'The inputted string contains a number: $'
    noNMsg    db 0Dh,0Ah,'There is no number in the inputted string.$'

.code
main proc
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    mov dx, offset prompt
    int 21h

    mov ah, 0Ah
    mov dx, offset input
    int 21h

    mov si, offset input+2

    xor cx, cx
    mov cl, [input+1]      

    ; place '$' terminator at end of string
    mov al, '$'
    mov di, si
    add di, cx             ; DI = SI + length  (valid addressing)
    mov [di], al           ; store '$' terminator

    ; --- check for a digit (0-9) ---
    xor bx, bx             ; BX = flag (0=no digit, 1=digit found)
    xor dx, dx             ; clear DX (we'll save digit in DL if found)
    mov di, si             ; scan pointer

check_digit:
    mov al, [di]
    cmp al, '$'
    je end_digit_check
    cmp al, '0'
    jb not_digit
    cmp al, '9'
    ja not_digit
    ; found a digit
    mov bl, 01h 
    mov dl, al
    mov bh, al
    jmp end_digit_check

not_digit:
    inc di
    jmp check_digit

end_digit_check:
    cmp bl, 1
    jne no_number

    ; print found-number message
    mov ah, 09h
    mov dx, offset numFMsg
    int 21h
    ; print the digit character stored in DL
    mov dl, bh 
    mov ah, 02h
    int 21h
    jmp continue_prog

no_number:
    mov ah, 09h
    mov dx, offset noNMsg
    int 21h

continue_prog:
    ; reverse string using stack (save SP)
    mov bx, sp
    mov si, offset input+2

push_loop:
    mov al, [si]
    cmp al, '$'
    je end_push_loop
    mov ah, 0
    push ax
    inc si
    jmp push_loop
end_push_loop:

    mov di, offset reversedString

pop_loop:
    cmp sp, bx
    je end_pop_loop
    pop ax
    mov [di], al
    inc di
    jmp pop_loop

end_pop_loop:
    mov byte ptr [di], '$'   ; terminate reversed string

    mov ah, 02h
    mov dl, 0Dh
    int 21h
    mov dl, 0Ah
    int 21h

    ; palindrome check
    call palindrome_checker

    mov ah, 4Ch
    int 21h

palindrome_checker:
    mov si, offset input+2
    mov di, offset reversedString

compare_loop:
    mov al, [si]
    mov bl, [di]
    cmp al, '$'
    je strings_equal
    cmp al, bl
    jne strings_not_equal
    inc si
    inc di
    jmp compare_loop

strings_equal:
    mov ah, 09h
    mov dx, offset equalMsg
    int 21h
    ret

strings_not_equal:
    mov ah, 09h
    mov dx, offset nequalMsg
    int 21h
    ret

main endp
end main
