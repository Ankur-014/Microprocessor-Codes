name "CENTIGRATE TO FARENTHITE"

ORG     100H
      
    MOV     CX,05H  
    LEA     SI,CENT
    LEA     DI,FAR
  
LOOPING:
                       

    CALL  CEN_TO_FAR
   
    INC   SI 
    INC   SI
    INC   DI
    INC   DI
 
LOOP LOOPING


RET 
      
      
      
      
    
CEN_TO_FAR  PROC NEAR
    
            

    MOV BL,09H
    MOV BH,05H
    
    MOV BP,SP
    MOV AX,[SI]
    
    MUL BL
    DIV BH
    MOV AH, 0H
    ADD AX,20H
    MOV [DI],AX
    
        
        
    RET
    CEN_TO_FAR ENDP
    
LAST:  

    RET
    CENT DW 27H,25H,39H,42H,10H

    LEN EQU ($-CENT)

    FAR DW LEN DUP(0)
    

    S_LEN EQU LEN
    
 END