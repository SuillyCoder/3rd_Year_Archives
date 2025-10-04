        
org 100h 

.data
    numbers db 25h, 12h, 48h, 0Ah, 77h, 39h   
    numberCount equ 6

.code
    main proc 
        ;Stanard syntax to transfer data
        mov ax, @data 
        mov ds, ax     
        mov cx, numberCount - 1
        
        ;Offset data to the source index
        mov si, offset numbers  
        ;Add first number entry to BL
        mov bl, [si]    
        ;INcrement to access next value
        inc si
        
        ;Check counter flag
        cmp cl, 00h  
        ;Do comparing
        jne compare 
        ;Stop the process
        je stop
        
        compare:  
            ;Is Next > Previous?
            cmp [si], bl  
            ;Yes
            jge newGreater  
            ;No
            jng continue
                       
            ;Store next value to BL
            newGreater: 
                mov bl, [si] 
                ;Access next value
                inc si  
                ;Decrease counter  
                dec cx
        
            ;Just keep going
            continue: 
                ;Access next value
                inc si  
                ;Decrease counter  
                dec cx       
            
            ;Check counter flag    
            cmp cx, 0000h
             ;Do comparing
            jne compare 
            ;Stop the process
            je stop     
            
            
         stop:
            hlt
        
         
    end main

ret




