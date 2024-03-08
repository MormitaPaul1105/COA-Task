.MODEL SMALL
.STACK 100H
.DATA
msg db 0ah, 0dh, 'Marmita $ ' 
msg1 db 0ah,0dh, '11/05/2000 $ '
msg2 db 0ah,0dh, '22years $'

.code
main proc
    mov ax,@data
    mov ds, ax
    
    lea dx,msg
    mov ah,9
    int 21h   
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main