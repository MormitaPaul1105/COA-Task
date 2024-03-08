.MODEL SMALL
.STACK 100H
.DATA 





MSG DW "ENTER A BINARY NUMBER- $"
EVEN DW "EVEN$"
ODD DW "ODD$"

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    
     
    LEA DX, MSG
    MOV AH, 09H
    INT 21H
    
    
    CALL EVEN_OR_ODD
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP


  EVEN_OR_ODD PROC
    MOV AH,1
    INT 21H
    
    WHILE_: 
    
    CMP AL, 0DH 
    JE END_WHILE
    AND AL, 0FH
    SHL BX,1
    OR BL,AL
    INT 21H
    JMP WHILE_
    
     END_WHILE:
     
     MOV AH,2
     MOV DL, 0AH
     INT 21H
     MOV DL, 0DH
    INT 21H
    
    
    TOP:
    TEST BL,1
    JZ EV
    LEA DX,ODD 
    MOV AH, 09H
    INT 21H
    JMP ET
    
    
    EV:
    LEA DX, EVEN
    MOV AH,09H
    INT 21H
    
    
    ET: 
    
    RET
    EVEN_OR_ODD ENDP
  END MAIN
    
    
  

