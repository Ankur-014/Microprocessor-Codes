name "CENTIGRATE TO FARENTHITE USIGN STACK"

ORG     100H
      
    MOV     CX,05H  
    MOV     SI, 0H
  
LOOPING:
 
    MOV   AX,CENT[SI]
    PUSH  AX
      
    CALL  CEN_TO_FAR
    
    POP   AX
    MOV   FAR[SI], AX
 
    INC   SI 
    INC   SI
 
LOOP LOOPING


RET 
      
      
      
      
    
CEN_TO_FAR  PROC NEAR
    
    PUSHF
    MOV BL,09H
    MOV BH,05H
    
    MOV BP,SP
    MOV AX,[BP+4]
    
    MUL BL
    DIV BH
    MOV AH, 0H
    ADD AX,20H
    MOV [BP+4],AX
    POPF
    CEN_TO_FAR ENDP
 
LAST:  

    RET
    CENT DW 27H,25H,39H,42H,10H

    LEN EQU ($-CENT)

    FAR DW LEN DUP(0)
    

    S_LEN EQU LEN
    
 END