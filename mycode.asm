
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 
mov ax,9
mov bx,6
add ax,bx
mov bx,21
sub bx,ax

ret




