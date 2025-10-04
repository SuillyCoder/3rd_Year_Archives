;OKAY, SO LET'S DO ONE LAST ONE FOR YOUR OWN GOOD. SERIOUSLY, YOU NEED TO DO THIS

;Instruction:: Create a program that takes in a teperature value (in Celsius)
;It should convert it into Fahrenheit (via temp *  9/5) + 32

;It should display its temp unit in Fahrenheit as well as its binary and hexadecimal value. 
;Optional (correspond the colors in the premid)   

.model small
.stack 100h

.data
    prompt db 'Enter the value in Celsius: $',0
    temp db 5, 0, 5 DUP (?)   
    convertedTemp dw 0
    newLine db 13, 10, '$'
    valTemp db 'Temperature value: $',0
    valBinary db 'Binary Value: $',0
    valHex db 'Hexadecimal value: $',0
    

.code
    main proc   
        
        ;Load in the data  
        MOV AX, @DATA
        MOV DS, AX
        
        ;Ask the user for a temperature value 
        MOV AH, 09H
        MOV DX, OFFSET prompt
        INT 21H   
        
        MOV AH, 0AH
        LEA DX, temp
        INT 21H   
        
        MOV AH, 09H
        MOV DX, OFFSET newLine
        INT 21H   
        
        
        ;Convert the string input into a number (somehow)
        LEA SI, temp + 2 ;NEVER FORGET WHAT +2 DOES!!!
        XOR AX,AX                                                      
        
        conversion:                                                        
            MOV CL, [SI] 
            CMP CL, 0DH
            JE endConversion
            
            SUB CL, 30H
            MOV BX, 10
            MUL BX
            ADD AX, CX
            ADC AH, 0
            
            INC SI 
            JMP conversion
            
        endConversion:
            MOV [convertedTemp], AX 
            
            ;Perform the conversion into Fahrenheit
            MOV AX, [convertedTemp] ;We do direct addressing and storing it in a register when dealing with user input. 
            MOV BX, 9
            MUL BX
            MOV BX, 5
            DIV BX
            ADD AX, 32
            MOV [convertedTemp], AX ;Storing the new and converted value for 'convertedTemp'
            
        
        ;Display the temperature  
        
        MOV AH, 09H
        MOV DX, OFFSET valTemp
        INT 21H 
        
        MOV AX, [convertedTemp]
        CALL printDec
     
    
               
        MOV AH, 09H
        MOV DX, OFFSET newLine
        INT 21H   
        
        
        ;Convert and Display its binary value 
        
             
        MOV AH, 09H
        MOV DX, OFFSET valBinary
        INT 21H 
        
               
        MOV AX, [convertedTemp]
        CALL printBin  
        
        
        MOV AH, 09H
        MOV DX, OFFSET newLine
        INT 21H   
        
        ;Convert and Display its hexadecimal value 
        
         
        MOV AH, 09H
        MOV DX, OFFSET valHex
        INT 21H   
               
        MOV AX, [convertedTemp]
        CALL printHex
        
        MOV AH, 09H
        MOV DX, OFFSET newLine
        INT 21H   
        
        
         
    main endp
    
      
    printDec proc 
       cmp ax, 0
       jne notZero
       mov dl, '0'
       mov ah, 02h
       int 21h
       ret

       notZero:
          push ax
          push dx
         push bx

          mov bx, 10
          xor dx, dx
          div bx            ; AX = quotient, DX = remainder

          cmp ax, 0
          je printDigit
          push dx
          call printDec
          pop dx

      printDigit:
          add dl, '0'
          mov ah, 02h
          int 21h
      
          pop bx
          pop dx
          pop ax
          ret       
    printDec endp
    
                 
    printBin proc
       push ax
       push cx
       push dx
      
       mov cx, 16        ; 16 bits
       binLoop:
          shl ax, 1         ; shift left
          jc printOne
          mov dl, '0'
          jmp printBit
       printOne:
          mov dl, '1'
       printBit:
          mov ah, 02h
          int 21h
          loop binLoop

          pop dx
          pop cx
          pop ax
          ret
    printBin endp
    
            
    printHex proc 
        
         push ax
         push cx
         push dx

         mov cx, 4         ; 4 hex digits (16 bits)
         hexLoop:
            rol ax, 4         ; rotate left 4 bits
            mov dl, al
            and dl, 0Fh
            cmp dl, 9
            jbe digit
            add dl, 7         ; 'A'..'F'
         digit:
            add dl, '0'
            mov ah, 02h
            int 21h
            loop hexLoop

            pop dx
            pop cx
            pop ax
            ret
    printHex endp
                   
    
;\\================LEARNINGS=================\\ 
;To convert a big string input into a number, you there is standard code for it.
;Of course, you do the standard MOV SI, OFFSET input, but you do other things. 

;For example: 
    ;conversion:
            ;MOV CL, [SI] 
            ;CMP CL, 0
            ;JE endConversion
            
            ;SUB CL, 30H
            ;MOV BL, 10
            ;MUL, BL
            ;ADD AL, CL
            ;ADC AH, 0
            
            ;INC SI 
            ;JMP conversion
            
        ;endConvert:
            ;MOV [temp], AX 
            
;ADC is Add With Carry (its a special type of addition that needs you to take a look at the carry flags)   
;NEW INTERRUPT DISCOVERED!: mov ah, 02h -> for printing single characters  
  


