
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

.data  
    var dw 11,12,13,14,15,16
    len dw equ($-var)
    res dw len Dup('N') 
    tmp dw ?

.code 
    lea si,var
    lea di,res 
     
    mov bx,len
    ror bx,01h
    mov len,bx
    
  Loopi:
    cmp bx,00h
    je ending  
    mov ax,[si]
    mov tmp,ax
    mov cx,ax
    dec cx  
    mov dl,2
    mov dh,00h
    
    call prime
    dec bx
    jmp loopi
    

  jmp ending
  
;function 

prime proc near
   
   start:
        cmp cl,1
        je isPrime
        div dl
        cmp ah,00h
        je notPrime
        inc dl
        mov ax,tmp
   loop start
         
        
    isPrime:
        mov [di],'Y'
        inc si
        inc si
        inc di
        inc di
    ret

    notPrime: 
        mov [di],'N'
        inc si   
        inc si
        inc di
        inc di
    ret
        

prime endp

ending:
    ret




