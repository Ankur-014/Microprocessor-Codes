
org 100h
.data

str1    db  'shakil + ' 
dummy   db  10  dup(0)
len1    dw  EQU ($-str1-10)
str2    db  'sony'     
len2    dw  EQU ($-str2)
result  db  len1+len2   dup(0)

.code
lea     di,result
lea     si,str1
;lea     bx,result
    
  
CLD     
mov     cx,len1

rep     movsb
lea     si,str2
mov     cx,len2
rep     movsb
 
 
 
 
lea     di,str1
lea     si,str2



add     di,len1
mov     cx,len2
rep     movsb

ret




