    org 100h
    
    mov ax,a
    mov bx,b
    mov temp1,ax
    mov temp2,bx
    
gcd:
    
    mov ax,a
    mov bx,b
    
    div bx
    mul bx
    
    mov cx,a
     
    sub cx,ax
    
    mov b,cx
    mov a,bx
    
    cmp cx,0
    
    je lcd
    
    jmp gcd
    
lcd:

    mov ax,temp1
    mov bx,temp2
    mul bx
    mov bx,a
    div bx
    mov l,ax    
        
    
EXIT:
    
    ret
    
    a dw 14
    b dw 10
    temp1 dw 0
    temp2 dw 0
    l dw ?
     