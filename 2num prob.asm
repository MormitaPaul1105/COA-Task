.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB 0AH,0DH, '********** $'
MSG2 DB 0AH,0DH, '*        * $'
RESULT DB 0AH,0DH,'* MARMITA* $'
RESULT1 DB 0AH,0DH,'* PAUL   * $'  

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS,AX
    MOV CX,1
                                                            
                                                            
    PRINT_LOOPS1:
    LEA DX,MSG1,
    MOV AH,9
    INT 21H
    DEC CX
    
    JG PRINT_LOOPS1 
    
    
     MOV CX,4
    PRINT_LOOPS3:
    LEA DX,MSG2,
    MOV AH,9
    INT 21H
    DEC CX  
    JG PRINT_LOOPS3 
    
     
     MOV CX,1
    PRINT_LOOPR:
    LEA DX,RESULT,
    MOV AH,9
    INT 21H
    DEC CX  
    JG PRINT_LOOPR
    
     MOV CX,1
    PRINT_LOOPR1:
    LEA DX,RESULT1,
    MOV AH,9
    INT 21H
    DEC CX  
    JG PRINT_LOOPR1 
    
     MOV CX,4
    PRINT_LOOPS4:
    LEA DX,MSG2,
    MOV AH,9
    INT 21H
    DEC CX  
    JG PRINT_LOOPS4 
      
      
    MOV CX,1                                                                                                       
    PRINT_LOOPS5:
    LEA DX,MSG1,
    MOV AH,9
    INT 21H
    DEC CX
    
    JG PRINT_LOOPS5 
    
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
    END MAIN
