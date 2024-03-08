.MODEL SMALL
.STACK 100H
.DATA
 

E db 'Enter the number: $'
Ans db 0ah, 0dh ,'The addition number is:$'
 

 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
      
      
    
    LEA DX,E
    MOV AH ,9
    INT 21H 
    
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
    
    
     
  
   
    MOV AH,1
    INT 21H
    MOV bx,Ax
    
    
    mov ah, 2
    mov dl, 0dh
    int 21h
    
    mov dl, 0ah
    int 21h
   
    MOV AH,1
    INT 21H
    
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
    mov dx,ax
    int 21h 
   
   
EXIT:
MOV AH,4CH
INT 21H
 

MAIN ENDP
END MAIN