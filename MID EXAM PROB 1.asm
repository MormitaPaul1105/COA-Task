.MODEL SMALL
.STACK 100H
.DATA
 

G db 0ah, 0dh ,'IT IS GRATER THEN 5 $'
L db 0ah, 0dh ,'IT IS LESS THAN 5$'
E db 0ah,0dh ,'IT IS EQUAL 5 $'
 

 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
   
    MOV BH,35H
   
    MOV AH,1
    INT 21H
    MOV DH,AL
   
    CMP DH,BH
    JG GREATER
    JE EQUAL
    JL   LESS
 

   
    GREATER:
    LEA DX,G
    MOV AH ,9
    INT 21H
    JMP END_CASE
    .exit
   
   
   
    EQUAL:
    LEA DX,E
    MOV AH ,9
    INT 21H
    JMP END_CASE  
    .exit
   
     LESS:
    LEA DX,L
    MOV AH ,9
    INT 21H
    JMP END_CASE  
    .exit
    end_case:
   
   
EXIT:
MOV AH,4CH
INT 21H
 

MAIN ENDP
END MAIN