.model small
.stack 100h

.data 
    STRING DB 'I AM FREEEEEEEEEE', '$'

.code
main proc    
    ;put the addrss of the string into AX
    MOV AX, @data  
    
    ;put the address into the data segement
    MOV DS, AX
    
    ;get the character indices from string
    MOV SI, OFFSET STRING 
    
    ;set to 0 for counting
    MOV CX, 0H
    
    ;code for counting
    counting:   
        ;move character indices from source index to AX 
        MOV AX, [SI]  
        
        ;check if the end has been reached
        CMP AL, '$' 
        
        ;move on if the end of the string has been reached
        JE reverse 
                
        ;push the character indices into the stack
        PUSH [SI]   
        
        ;move on to the next index
        INC SI               
        
        ;increment for the counting down for the string reversal
        INC CX   
        
    ;go back to counting    
         
    
    ;code for reversing
    reverse:    
    ;get the character indices from string
    MOV SI, OFFSET STRING  
        ;loop for reversing the string
        reversing:
            ;check if the counter is 0 
            CMP CX, 0   
            
            ;get out if the counter is zero
            JE  done 
              
            ;get the character index out of the stack  
            POP DX
            
            ;set DH to 0 to clear the register  or else it causes;
            ;problems
            XOR DH, DH
            
            ;putting in popped character into the reversed string
            MOV [SI], DX
               
            ;move on to the next character index   
            INC SI 
            
            ;decrement the counter
            DEC CX 
            
        ;loop back
        jmp reversing
        
        ;code once the reversal is done
        done: 
        ;end the string in its proper format
        MOV [SI], '$'
    
    ;get the string    
    LEA DX, STRING
    
    ;print the string
    MOV AH, 9 
    ;show it
    INT 21H
end                       