
org 100h
.data
str     db  'abb'
len     dw  EQU ($-str)
result  db  'Y'

.code
lea     di,str
lea     si,str
add     si,len
dec     si

mov     ax,len
mov     bx,2
div     bx
mov     cx,ax

start:    
mov     al,[si]
cmp     al,[di]
jne     notPal
inc     di
dec     si
loop    start

jmp     ending

notPal:
mov     result,'N'
jmp ending

ending:


ret




