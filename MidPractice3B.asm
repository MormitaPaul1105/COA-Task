.model small
.stack 100h
.DATA
 

a db '? $'

E db 0ah,0dh ,'The difference of 7 and 3 is  $'
 
.code
main proc 
        MOV AX,@DATA
    MOV DS,AX 
    LEA DX,a
    MOV AH ,9
    INT 21H
    
     mov ax,55
    mov ah,2
    mov dx,ax
    
    int 21h  
    
     
    
    mov ax,51
    mov ah,2
    mov dx,ax
    int 21h 
    
    
    
   
  
       
   
    LEA DX,E
    MOV AH ,9
    INT 21H
     
     
         
         
     mov ax,53
    mov bx,1
    sub ax,bx
        mov ah,2
    mov dx,ax
    int 21h 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main