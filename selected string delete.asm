mov ax,len1
mov bx ,len2
add ax,bx
mov bx,0
mov dx,ax
mov ax,0
mov si,0
mov di,0      
mov bp,0      
mov cx,len2
 
start:
    mov al,str1[si]
    mov bl,str2[di]
    dec dx
    cmp al,bl 
    je kaj   
    jmp okaj  

kaj:
 inc si
 inc di
 dec dx
 mov al,str1[si]
 mov bl,str2[di]
 cmp al,bl
 je kaj
 cmp cx,di  
 je start 
 dec di
 dec si
 jmp okaj
      
okaj:
    mov al,str1[si]
    mov str3[bp],al
    inc si
    inc bp
    cmp dx,0
    je exit  
   jmp start    
       
exit:


int 21h
ret
str1 db "i really love my country"
len1 dw equ ($-str1)
str2 db "really"
len2 dw equ ($-str2)
str3 db len1-len2 dup(0) 

