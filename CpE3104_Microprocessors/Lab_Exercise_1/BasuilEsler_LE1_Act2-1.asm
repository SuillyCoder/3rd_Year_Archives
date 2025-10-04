.model small
.stack 100h

.code
main proc
    MOV  BX, 0123H
    MOV  AX, 0456H
    ADD  AX, BX
    SUB  AX, BX
    PUSH AX
    PUSH BX
end 