
org 100h
.data
size    dw  10
arr     dw  size    dup(1)

 ;      1, 1 ,1 ,1,1,1
;       si,di,bx
.code
lea     di,arr
lea     si,arr
lea     bx,arr
add     bx,4
add     di,2


mov     cx,size
dec     cx
dec     cx
starting:
mov     ax,0
add     ax,[si]
add     ax,[di]
mov     [bx],ax
add     bx,2
add     si,2
add     di,2

       
loop    starting

ret




