.model small
.stack 100h

.data

.code
main proc
    ;set i (AX) to 5
    MOV AX, 0x0005
    
    ;set j (BX) to 2
    MOV BX, 0x0002
    
    ;add i and j and the sum is placed into i (AX)
    ADD AX, BX
end