
org 100h

.data
arr     db  'edcba'
size    db  EQU ($-arr)

.code
mov     dl,0


mov     cl,size
dec     cl
start:
mov     bl,cl


lea     di,arr
inner:
mov     Al,[di+1]
cmp     [di],al
ja      swap
next:
inc     di
dec     bl
cmp     bl,0
jne      inner




loop    start




jmp     ending
swap:
mov     bh,[di]
mov     [di],al
mov     [di+1],bh
jmp     next
ending:


ret




