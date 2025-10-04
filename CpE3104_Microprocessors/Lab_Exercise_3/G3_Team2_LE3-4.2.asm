
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
    msg db "Enter text: $"
    input db 20, 0, 20 dup(0)

.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah, 09H
    int 21h
    
    lea dx, input
    mov ah, 0Ah
    int 21h
    
    lea si, input+2
    mov cl, [input+1]
    
    mov ax, 0B800H
    mov es, ax
    mov dx, 39*2
    mov bp, 25 

row_loop:
    mov di, dx        ; start offset for this row
    xor bx, bx        ; BX = index into input buffer

write_loop:
    cmp bl, cl
    jae skip_write    ; stop if all chars written
    mov al, [si+bx]   ; get next char
    mov es:[di], al   ; write char
    mov es:[di+1], 06h ; brown color
    add di, 2
    inc bx
    jmp write_loop

skip_write:
    add dx, 160    
    dec bp
    jnz row_loop

    mov ah, 4Ch
    int 21h
    

ret




