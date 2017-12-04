
org 100h

.data
input   dw  1,2,3,4,5,6,7,8,9
size    dw  EQU ($-input)
result  dw  size    dup(1)
                   
                   
                   
.code 
mov     ax,size
mov     bx,2
div     bx
mov     size,ax
mov     cx,size 

lea     di,input
lea     si,result

starting:

mov     bx,0
mov     ax,1
multi:
inc     bx
mul     bx

cmp     bx,[di]
jne     multi
            
mov     [si],ax
add     di,2
add     si,2           
loop    starting
                   
                   
ret




