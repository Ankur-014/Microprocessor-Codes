org 100h


mov bp, 0
lea si, str1
lea di, str2
mov cx, (len1+len2)/2
s:
    repe cmpsb
    jae next
    jb startf
    
startf:
    mov cx, len1
start:
    mov al, str1[bp]
    mov str3[bp], al
    inc bp
    dec cx
    jz strcpy2
    jmp start
    
strcpy2:
    mov cx, len2
    mov di, 0
start2:
    mov al, str2[di]
    mov str3[bp], al
    inc bp
    inc di
    dec cx
    jz finish
    jmp start2


next:
    mov cx, len2
startn:
    mov al, str2[bp]
    mov str3[bp], al
    inc bp
    dec cx
    jz strcppy2
    jmp startn    
    
strcppy2:
    mov cx, len1
    mov di, 0
startn2:
    mov al, str1[di]
    mov str3[bp], al
    inc bp
    inc di
    dec cx
    jz finish
    jmp startn2

finish:

int 21h
ret

str1 db "name"
len1 equ $-str1
str2 db "nam"
len2 equ $-str2

str3 db len1+len2 dup(0)




