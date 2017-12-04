org 100h


mov si, 0
mov cx, len1

start:
    mov al, str1[si]
    mov str3[si], al
    inc si
    dec cx
    jz strcpy2
    jmp start
    
strcpy2:
    mov cx, len2
    mov di, 0
start2:
    mov al, str2[di]
    mov str3[si], al
    inc si
    inc di
    dec cx
    jz finish
    jmp start2

finish:

int 21h
ret

str1 db "Bangladesh"
len1 equ $-str1
str2 db " country"
len2 equ $-str2

str3 db len1+len2 dup(0)




