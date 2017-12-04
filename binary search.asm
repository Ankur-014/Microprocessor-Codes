name "mycode"   ; output file name (max 8 chars for DOS compatibility)

org  100h	; set location counter to 100h

mov si, 0
mov di, 4

while:
    cmp si, di
    ja break
    mov ax, si
    add ax, di
    mov bx, 2
    div bx
    mov bp, ax
    mov bh, key
    mov bl, arr[bp]
    cmp bh, bl
    je found
    jb below
    ja above
    
above:
    inc bp
    mov si, bp
    jmp while
    
below:
    dec bp
    mov di, bp
    jmp while

found:
    mov dx, 1
    jmp endd
break:
    mov dx, 0
endd:

ret   ; return to the operating system.   

arr db 01h, 02h, 03h, 04h, 05h
key db 09h

msg         db "press any key..."
msg_size =  $ - offset msg






