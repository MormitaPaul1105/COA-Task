.MODEL SMALL
.STACK 100H
.DATA


CT DB ?,"$"     


.CODE


MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BX,1010101010101010B
    
    END_WHILE:
    
    MOV CX,0
    
    CONT:
    
    CMP DX,0
    JE DISPLAY
    SHL DX,1
    JNC LOP
    INC CX
    JMP CONT
    
    LOP:
    JMP CONT
    
    DISPLAY:
    ADD CL,48
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    OR AX,BX
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN