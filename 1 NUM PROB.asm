
.MODEL SMALL
.STACK 100H
.DATA

MSG DB 'Enter a hexadecimal digit: $'
OUTPUT DB 'It become in decimal: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,09H
    LEA DX,MSG
    INT 21H
    
    MOV AH,1
    INT 21H
    
    CMP AL, 'A'
    JE PRINT_10 
    
    CMP AL, 'B'
    JE PRINT_11 
    
    CMP AL, 'C'
    JE PRINT_12  
    
    CMP AL, 'D'
    JE PRINT_13 
    
     
    CMP AL, 'E'
    JE PRINT_14 
    
     
    CMP AL, 'F'
    JE PRINT_15 
    
    
    
    PRINT_10: 
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,30H
    INT 21H
    JMP EXIT    
    
    
    PRINT_11: 
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,31H
    INT 21H
    JMP EXIT
    
    
    
    PRINT_12: 
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,32H
    INT 21H
    JMP EXIT  
    
    
    
     
    PRINT_13: 
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,33H
    INT 21H
    JMP EXIT
    
    
    
     
    PRINT_14: 
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,34H
    INT 21H
    JMP EXIT 
    
    
    
     
    PRINT_15: 
    MOV AH, 02H
    MOV DL, 0AH
    INT 21H
    MOV DL, 0DH
    INT 21H
    MOV AH, 09H
    LEA DX, OUTPUT
    INT 21H
    MOV AH,02H
    MOV DL,31H
    INT 21H
    MOV DL,35H
    INT 21H
    JMP EXIT 
    
    
    
    
    
     EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    END MAIN
    
    
    
    
    
    
    





