org 100h


mov si, len
dec si
mov di, 0
mov cx, len
start:
    mov al, str1[si]
    mov str2[di], al
    inc di
    dec si
    dec cx
    jz finish
    jmp start
    
finish:

int 21h
ret

str1 db "Bangladesh is a beautiful country"
len equ $-str1
str2 db len dup(0)





