org 100h

.code
    main proc  
    ;Store hex value into AX    
    mov AX, 4567h
    ;Store hex value into BX
    mov BX, 1234h  
    
    ;Compare values of AX and BX
    cmp ax, bx
    
    ;If AX >= BX, execute label
    jge greater
    ;If not, execute another label
    jng not_greater
    
    greater: 
        ;Add 1 flag to DX 
        mov dx, 0001h
        ;Forcefully stop
        hlt 
        
    not_greater:  
        ;Add 0 flag to DX
        mov dx, 0000h 
        ;Forcefully stop   
        hlt

    endit:
        end main
ret




