
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov cx,4
lea si,ar1
lea di,ar2
lea bx,ar3

loop1:

 mov ax,[si]
 and ax,00ffh
 rol ax,04h
 mov dx,ax
 mov ax,[di]
 and ax,00ffh
; rol ax,4
 or ax,dx
 mov [bx],ax  
 add si,2
 
 add di,2 

 inc bx 
 inc bx
 

loop loop1
; add your code here

ret

ar1 dw 3h,4h,5h,6h
ar2 dw 1h,2h,3h,4h
ar3 dw ?,?,?,?




