.model small
.stack 100h
.data
    menu1 db '1. Horizontal Stripe Pattern$'
    menu2 db '2. Vertical Stripe Pattern$'
    menu3 db '3. Checkered Pattern$'
    menu4 db 'Q. Quit$'
    prompt db 'Select pattern (1, 2, 3, Q) or click mouse to cycle: $'
    horizontal_msg db 'Drawing Horizontal Stripes... Press any key or click to continue$'
    vertical_msg db 'Drawing Vertical Stripes... Press any key or click to continue$'
    checkered_msg db 'Drawing Checkered Pattern... Press any key or click to continue$'
    quit_msg db 'Goodbye!$'
    newline db 13,10,'$'

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Initialize mouse
    mov ax, 0
    int 33h
    cmp ax, 0
    je no_mouse

    ; Show mouse cursor
    mov ax, 1
    int 33h

no_mouse:
    call show_menu

    mov si, 0       ; pattern index: 0=horizontal,1=vertical,2=checkered

main_loop:
    ; Check keyboard input - non-blocking check for key
    mov ah, 1
    int 16h
    jz no_key

    ; Get key from keyboard
    mov ah, 0
    int 16h

    ; Process keyboard input
    cmp al, '1'
    je horizontal_pattern
    cmp al, '2'
    je vertical_pattern
    cmp al, '3'
    je checkered_pattern
    cmp al, 'q'
    je quit_program
    cmp al, 'Q'
    je quit_program
   

no_key:
    ; Check mouse buttons (INT 33h AH=3)
    mov ax, 3
    int 33h
    ; CX = x pos, DX = y pos, BX = button status
    test bx, 1     ; left button pressed?
    jz wait_loop

    ; Left button clicked: cycle patterns
    inc si
    cmp si, 3
    jb skip_reset
    xor si, si

skip_reset:
    cmp si, 0
    je horizontal_pattern
    cmp si, 1
    je vertical_pattern
    cmp si, 2
    je checkered_pattern

wait_loop:
    jmp main_loop

horizontal_pattern:
    call clear_screen
    lea dx, horizontal_msg
    call print_string
    call print_newline
    call draw_horizontal_stripes
    call wait_key
    call show_menu
    jmp main_loop

vertical_pattern:
    call clear_screen
    lea dx, vertical_msg
    call print_string
    call print_newline
    call draw_vertical_stripes
    call wait_key
    call show_menu
    jmp main_loop

checkered_pattern:
    call clear_screen
    lea dx, checkered_msg
    call print_string
    call print_newline
    call draw_checkered
    call wait_key
    call show_menu
    jmp main_loop

quit_program:
    call clear_screen
    lea dx, quit_msg
    call print_string
    mov ah, 4Ch
    int 21h

show_menu proc
    call clear_screen
    mov ah, 2h
    mov bh, 0
    mov dh, 0
    mov dl, 0
    int 10h

    lea dx, menu1
    call print_string
    call print_newline

    lea dx, menu2
    call print_string
    call print_newline

    lea dx, menu3
    call print_string
    call print_newline

    lea dx, menu4
    call print_string
    call print_newline
    call print_newline

    lea dx, prompt
    call print_string
    ret
show_menu endp

clear_screen proc
    mov ah, 0
    mov al, 3
    int 10h
    ret
clear_screen endp

print_string proc
    mov ah, 9
    int 21h
    ret
print_string endp

print_newline proc
    lea dx, newline
    call print_string
    ret
print_newline endp

; FIXED: Fast horizontal stripes with proper color cycling
draw_horizontal_stripes proc
    mov dh, 0           ; Start row

h_row_loop:
    cmp dh, 25
    jae h_done
   
    ; Calculate color for this row (3 rows per color)
    mov al, dh
    xor ah, ah
    mov bl, 3
    div bl              ; AL = stripe number
    and al, 07h         ; Cycle through 8 colors
   
    ; Get color for this stripe
    call get_stripe_color
    mov bl, al          ; BL = color attribute
   
    ; Set cursor to beginning of row
    mov ah, 02h
    mov bh, 0
    mov dl, 0
    int 10h
   
    ; Fill entire row with this color (80 characters at once)
    mov ah, 09h         ; Write character and attribute
    mov al, 219         ; Full block character
    mov bh, 0           ; Page 0
    mov cx, 80          ; Write 80 characters
    int 10h
   
    inc dh              ; Next row
    jmp h_row_loop

h_done:
    ret

; Get color for stripe number in AL, return color in AL
get_stripe_color proc
    cmp al, 0
    je ret_yellow
    cmp al, 1
    je ret_cyan
    cmp al, 2
    je ret_green
    cmp al, 3
    je ret_magenta
    cmp al, 4
    je ret_red
    cmp al, 5
    je ret_blue
    cmp al, 6
    je ret_white
    mov al, 08h         ; Black/dark gray
    ret
ret_yellow:
    mov al, 0Eh
    ret
ret_cyan:
    mov al, 0Bh
    ret
ret_green:
    mov al, 0Ah
    ret
ret_magenta:
    mov al, 0Dh
    ret
ret_red:
    mov al, 0Ch
    ret
ret_blue:
    mov al, 09h
    ret
ret_white:
    mov al, 0Fh
    ret
get_stripe_color endp

; OPTIMIZED: Fast vertical stripes using row-by-row fills
draw_vertical_stripes proc
    mov dh, 0           ; Start row

v_row_loop:
    cmp dh, 25
    jae v_done
   
    ; Set cursor to start of row
    mov ah, 02h
    mov bh, 0
    mov dl, 0
    int 10h
   
    mov dl, 0           ; Start column
    mov cl, 0           ; Stripe counter (use CL instead of SI)

v_stripe_loop:
    cmp dl, 80
    jae v_next_row
   
    ; Calculate how many columns for this stripe (10 per stripe)
    mov ch, 10          ; Default stripe width
    mov al, dl
    add al, 10          ; Check if we exceed screen width
    cmp al, 80
    jbe v_full_stripe
    mov ch, 80          ; Adjust for remaining columns
    sub ch, dl

v_full_stripe:
    ; Get color for this stripe
    mov al, cl          ; Stripe number (now using CL)
    and al, 07h         ; Cycle through 8 colors
    call get_stripe_color
    mov bl, al          ; Color in BL
   
    ; Set cursor position for this stripe
    mov ah, 02h
    mov bh, 0
    int 10h
   
    ; Fill this stripe with color
    push cx
    mov cl, ch          ; Move stripe width to CL
    xor ch, ch          ; CX = number of columns to fill
    mov ah, 09h         ; Write character and attribute
    mov al, 219         ; Full block
    mov bh, 0
    int 10h
    pop cx
   
    add dl, ch          ; Move to next stripe position (using CH)
    inc cl              ; Next stripe number
    jmp v_stripe_loop

v_next_row:
    inc dh
    jmp v_row_loop

v_done:
    ret
draw_vertical_stripes endp

; FIXED: Uniform TV test pattern checkerboard with consistent alternating colors
draw_checkered proc
    mov dh, 0           ; Start row

c_row_loop:
    cmp dh, 25
    jae c_done

    ; Set cursor to start of row
    mov ah, 02h
    mov bh, 0
    mov dl, 0
    int 10h

    mov dl, 0           ; Start column

c_col_loop:
    cmp dl, 80
    jae c_next_row

    ; Calculate checker block size (10 columns per checker block)
    mov ch, 10          ; Checker width
    mov al, dl
    add al, 10
    cmp al, 80
    jbe c_full_checker
    mov ch, 80          ; Adjust for remaining columns
    sub ch, dl

c_full_checker:
    ; UNIFORM CHECKERBOARD LOGIC:
    ; Determine which checker square we're in
    mov al, dh
    xor ah, ah
    mov bl, 5           ; 5 rows per checker
    div bl              ; AL = checker row number
    mov bh, al          ; Save checker row number
   
    mov al, dl
    xor ah, ah
    mov bl, 10          ; 10 columns per checker  
    div bl              ; AL = checker column number
    mov bl, al          ; Save checker column number
   
    ; Create uniform checkerboard: (row + col) even/odd determines pattern
    add bh, bl          ; Add checker row + checker column
    and bh, 1           ; Even (0) or Odd (1) - this creates perfect alternating pattern
   
    ; Simple, consistent color scheme - TV test card style
    cmp bh, 0           ; Even checker positions
    je c_pattern_a
   
c_pattern_b:
    ; Pattern B squares - Bright TV test card colors
    ; Cycle through bright colors based on position for variety
    mov al, bl          ; Use checker column
    and al, 03h         ; Cycle through 4 bright colors
   
    cmp al, 0
    je use_bright_white
    cmp al, 1
    je use_bright_yellow
    cmp al, 2
    je use_bright_cyan
    mov bl, 0Dh         ; Bright magenta (default case al=3)
    jmp c_fill_checker

use_bright_white:
    mov bl, 0Fh         ; Bright white
    jmp c_fill_checker
use_bright_yellow:
    mov bl, 0Eh         ; Bright yellow
    jmp c_fill_checker
use_bright_cyan:
    mov bl, 0Bh         ; Bright cyan
    jmp c_fill_checker

c_pattern_a:
    ; Pattern A squares - Dark/contrasting TV test card colors
    ; Cycle through dark colors based on position for variety
    mov al, bl          ; Use checker column
    and al, 03h         ; Cycle through 4 dark colors
   
    cmp al, 0
    je use_black
    cmp al, 1
    je use_dark_blue
    cmp al, 2
    je use_dark_green
    mov bl, 04h         ; Dark red (default case al=3)
    jmp c_fill_checker

use_black:
    mov bl, 00h         ; Black
    jmp c_fill_checker
use_dark_blue:
    mov bl, 01h         ; Dark blue
    jmp c_fill_checker
use_dark_green:
    mov bl, 02h         ; Dark green
    jmp c_fill_checker

c_fill_checker:
    ; Set cursor position for this checker block
    mov ah, 02h
    mov bh, 0
    int 10h
   
    ; Fill this checker block with color (fast block fill)
    push cx
    mov cl, ch          ; Move checker width to CL
    xor ch, ch          ; CX = number of columns to fill
    mov ah, 09h         ; Write character and attribute
    mov al, 219         ; Full block character
    mov bh, 0           ; Page 0
    int 10h             ; Fill entire block at once!
    pop cx
   
    add dl, ch          ; Move to next checker position
    jmp c_col_loop

c_next_row:
    inc dh
    jmp c_row_loop

c_done:
    ret
draw_checkered endp

wait_key proc
    mov ah, 0
    int 16h
    ret
wait_key endp

end main