.MODEL SMALL
.STACK 100H
.DATA
 
A db 25
B db 24

Ans db 'The addition number is:$'
 

 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    

   
   
    MOV bl,A
    
   mov al,B
    
    LEA DX,Ans
    MOV AH ,9
    INT 21H
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h 
    
    add al,bL
   
   
   
    mov ah,2
    mov dl,al
    int 21h 
   
   
EXIT:
MOV AH,4CH
INT 21H
 

MAIN ENDP
END MAIN