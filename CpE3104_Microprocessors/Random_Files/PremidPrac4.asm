
org 100h

.code 

    main proc
        ;Mov hex value to AL
        mov AL, 0Dh  
        ;Perform bitwise operation to find LSB 
            ;Note: binarry of 0Dh is 00001101  
        test AL, 01h 
        ;If LSB 1, do label
        jnz lsb_is_set  
        ;If LSB 0, do other label
        jz lsb_is_zero
        
        ;Add flag 01 to BH
        lsb_is_set:
            mov bh, 01h  
            ;stop
            hlt  
        ;Add flag 00 to BH    
        lsb_is_zero:  
            mov bh, 00h  
            ;stop
            hlt
           
    end main

ret




