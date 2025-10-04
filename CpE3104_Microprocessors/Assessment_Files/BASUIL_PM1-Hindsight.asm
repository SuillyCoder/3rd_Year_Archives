;WHERE THE FUCK DID I GO WRONG??????


;Instruction 1:

;Create a program that allows for a user to input a password
;It compares the password (entered by the user) with the password stored within

;If same, "Access Granted!"
;If not, "Access Denied!"


.model small
.stack 100h

.data 

    prompt db 'Enter the password: $',0   
    storedPass db 'cat',0 
    passLength equ 3
    password db 100, 0, 100 DUP (?)
    newLine  db 13,10,'$' 
    accessDenied db 'Access Denied!$',0
    accessGranted db 'Access Granted!$',0
     

.code
    main proc   
        
    ;Import the data  
    MOV AX, @DATA
    MOV DS, AX
    
    ;Display the prompt 
    MOV AH, 09H
    MOV DX, OFFSET prompt
    INT 21H
    
    ;Ask for user input and read it 
    MOV AH, 0AH
    MOV DX, OFFSET password
    INT 21H   
    
    MOV AH, 09H
    MOV DX, OFFSET newLine
    INT 21H
    
    
    ;Run comparative loop per character 
    MOV AL, [password+1] 
    CMP AL, passLength
    JNE denied    
    JE compLoop 
    
    MOV CX, passLength 
    MOV SI, OFFSET storedPass; Right now, we're only storing the buffer
    MOV DI, OFFSET password + 2
    
    compLoop: 
        MOV AL, [SI];Effective address of the stored pass (to translate into numbers)    
        CMP AL, [DI];To translate them into numbers     
        
        JNE denied                
        
        INC SI ; on to the next one
        INC DI ; onto the next one
        loop compLoop  
        
        JMP granted
    
    ;If CL is 1, then access granted    
    granted: 
        MOV AH, 09H
        MOV DX, OFFSET accessGranted
        INT 21H 
        JMP exit  
     
    ;If Cl is 0, then access denied    
    denied:  
        MOV AH, 09H
        MOV DX, OFFSET accessDenied
        INT 21H 
        JMP exit  
     
    
    exit:
        MOV AH, 4CH
        INT 21H 
   
        
    end main    
    

;\\===========================LEARNINGS===============================\\             

;+0, +1, and +2 mean different things:

;buffer + 0 = maximum buffer length (used for storing strings themselves in DX) 
;buffer + 1 = number of chars read by the emulator (DOS)
;buffer + 2 = The actual thing typed  

;SI and DI are another set of general purpose registers.  
;They're especially used n storing strings
;They still use +0, +1, and +2.
                                     
 
