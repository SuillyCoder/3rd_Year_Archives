.model small
.stack 100h
.data
    menu1 db '1. Horizontal Stripe Pattern$'
    menu2 db '2. Vertical Stripe Pattern$'
    menu4 db 'Q. Quit$'
    prompt db 'Select pattern (1, 2, Q) or click mouse to cycle: $'
    horizontal_msg db 'Drawing Horizontal Stripes... $'
    vertical_msg db 'Drawing Vertical Stripes... $'
    checkered_msg db 'Drawing Checkered Pattern... $'
    continue_msg db 'Press any key to continue.$'
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

wait_loop:
    jmp main_loop

horizontal_pattern:
    call clear_screen
    lea dx, horizontal_msg
    call print_string_normal
    lea dx, continue_msg
    call print_string_normal
    call print_newline
    call draw_horizontal_stripes
    call wait_key
    call show_menu
    jmp main_loop

vertical_pattern:
    call clear_screen
    lea dx, vertical_msg
    call print_string_normal
    lea dx, continue_msg
    call print_string_normal
    call print_newline
    call draw_vertical_stripes
    call wait_key
    call show_menu
    jmp main_loop

quit_program:
    call clear_screen
    lea dx, quit_msg
    call print_string_normal
    mov ah, 4Ch
    int 21h

show_menu proc
    ; Clear screen with blue background
    call clear_screen_blue
    
    ; Set cursor to top left
    mov ah, 2h
    mov bh, 0
    mov dh, 2       ; Start a bit lower for better appearance
    mov dl, 10      ; Indent from left
    int 10h

    lea dx, menu1
    call print_string_menu
    call print_newline

    ; Move cursor to next line for menu2
    mov ah, 2h
    mov bh, 0
    mov dh, 4
    mov dl, 10
    int 10h
    lea dx, menu2
    call print_string_menu
    call print_newline

    ; Move cursor to next line for menu4
    mov ah, 2h
    mov bh, 0
    mov dh, 8
    mov dl, 10
    int 10h
    lea dx, menu4
    call print_string_menu
    call print_newline

    ; Move cursor for prompt
    mov ah, 2h
    mov bh, 0
    mov dh, 12
    mov dl, 10
    int 10h
    lea dx, prompt
    call print_string_menu
    ret
show_menu endp

; Clear screen with blue background (attribute 10h = blue background, black text)
clear_screen_blue proc
    mov ah, 06h     ; Scroll window up
    mov al, 0       ; Clear entire window
    mov bh, 10h     ; Blue background (1h), black text (0h)
    mov ch, 0       ; Upper left row
    mov cl, 0       ; Upper left column
    mov dh, 24      ; Lower right row
    mov dl, 79      ; Lower right column
    int 10h
    ret
clear_screen_blue endp

clear_screen proc
    mov ah, 0
    mov al, 3
    int 10h
    ret
clear_screen endp

; Print string with yellow text on blue background (for menu)
print_string_menu proc
    push si
    mov si, dx      ; SI points to string

menu_print_loop:
    mov al, [si]    ; Get character
    cmp al, '$'     ; End of string?
    je menu_print_done
    
    ; Write character with yellow text on blue background
    mov ah, 09h     ; Write character and attribute
    mov bh, 0       ; Page 0
    mov bl, 1Eh     ; Yellow foreground (Eh), blue background (1h)
    mov cx, 1       ; Write 1 character
    int 10h
    
    ; Move cursor to next position
    mov ah, 03h     ; Get cursor position
    mov bh, 0
    int 10h         ; DH=row, DL=column
    inc dl          ; Next column
    mov ah, 02h     ; Set cursor position
    mov bh, 0
    int 10h
    
    inc si          ; Next character
    jmp menu_print_loop

menu_print_done:
    pop si
    ret
print_string_menu endp

; Print string with normal DOS interrupt (for pattern messages)
print_string_normal proc
    mov ah, 9
    int 21h
    ret
print_string_normal endp

print_newline proc
    lea dx, newline
    call print_string_normal
    ret
print_newline endp

; Modified horizontal stripes - only 4 different colors
draw_horizontal_stripes proc
    mov dh, 0           ; Start row

h_row_loop:
    cmp dh, 25
    jae h_done
   
    ; Calculate color for this row (6 rows per color for 4 colors total)
    mov al, dh
    xor ah, ah
    mov bl, 6           ; 6 rows per stripe
    div bl              ; AL = stripe number
    and al, 03h         ; Cycle through 4 colors only
   
    ; Get color for this stripe (4 different colors)
    call get_four_stripe_colors
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
draw_horizontal_stripes endp

; Get one of 4 different colors for stripes
get_four_stripe_colors proc
    cmp al, 0
    je ret_red_four
    cmp al, 1
    je ret_green_four
    cmp al, 2
    je ret_blue_four
    ; al = 3
    mov al, 0Eh         ; Yellow
    ret
ret_red_four:
    mov al, 0Ch         ; Red
    ret
ret_green_four:
    mov al, 0Ah         ; Green
    ret
ret_blue_four:
    mov al, 09h         ; Blue
    ret
get_four_stripe_colors endp

; Modified vertical stripes - only 4 different colors
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
    mov cl, 0           ; Stripe counter

v_stripe_loop:
    cmp dl, 80
    jae v_next_row
   
    ; Calculate how many columns for this stripe (20 per stripe for 4 stripes)
    mov ch, 20          ; 20 columns per stripe
    mov al, dl
    add al, 20
    cmp al, 80
    jbe v_full_stripe
    mov ch, 80          ; Adjust for remaining columns
    sub ch, dl

v_full_stripe:
    ; Get color for this stripe (4 colors only)
    mov al, cl          ; Stripe number
    and al, 03h         ; Cycle through 4 colors only
    call get_four_stripe_colors
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
   
    add dl, ch          ; Move to next stripe position
    inc cl              ; Next stripe number
    jmp v_stripe_loop

v_next_row:
    inc dh
    jmp v_row_loop

v_done:
    ret
draw_vertical_stripes endp

; Modified checkered pattern - using 4 different colors
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

    ; Calculate checker block size (20 columns per checker block)
    mov ch, 20          ; Checker width
    mov al, dl
    add al, 20
    cmp al, 80
    jbe c_full_checker
    mov ch, 80          ; Adjust for remaining columns
    sub ch, dl

c_full_checker:
    ; Determine which checker square we're in
    mov al, dh
    xor ah, ah
    mov bl, 6           ; 6 rows per checker
    div bl              ; AL = checker row number
    mov bh, al          ; Save checker row number
   
    mov al, dl
    xor ah, ah
    mov bl, 20          ; 20 columns per checker  
    div bl              ; AL = checker column number
    mov bl, al          ; Save checker column number
   
    ; Create checkerboard pattern with 4 colors
    add bh, bl          ; Add checker row + checker column
    and bh, 03h         ; Use 4 different patterns (0,1,2,3)
   
    ; Use the same 4 colors as stripes
    mov al, bh
    call get_four_stripe_colors
    mov bl, al          ; Color in BL

c_fill_checker:
    ; Set cursor position for this checker block
    mov ah, 02h
    mov bh, 0
    int 10h
   
    ; Fill this checker block with color
    push cx
    mov cl, ch          ; Move checker width to CL
    xor ch, ch          ; CX = number of columns to fill
    mov ah, 09h         ; Write character and attribute
    mov al, 219         ; Full block character
    mov bh, 0           ; Page 0
    int 10h
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