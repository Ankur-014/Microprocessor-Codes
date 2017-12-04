ORG     100H
    
    MOV     CX,LEN  
    MOV     SI, 0H
    MOV     DI, 0H
  
LOOPING:
 
 MOV AX, BCD_INPUT[SI] 
 
 CALL BCD_TO_HEXA
 
 MOV HEXA_OUTPUT[SI], AX
 
 INC    SI
 INC    SI
 
LOOP LOOPING
RET  
 BCD_TO_HEXA   PROC NEAR 
    PUSHF
    PUSH CX
    
    MOV     BP,AX
    MOV     BX,BP
    AND     BX,000FH
    MOV     AX,BX
    MOV     BX,0001H
    MUL     BX
    MOV     CX,AX
    
    MOV     BX,BP
    AND     BX,00F0H
    ROR     BX,0004H
    MOV     AX,BX
    MOV     BX,000AH
    MUL     BX
    ADD     CX,AX 
    
    
    MOV     BX,BP
    AND     BX,0F00H
    ROR     BX,0008H
    MOV     AX,BX
    MOV     BX,0064H
    MUL     BX
    ADD     CX,AX
    
    
    MOV     BX,BP
    AND     BX,0F000H
    ROR     BX,000CH
    MOV     AX,BX
    MOV     BX,03E8H
    MUL     BX
    ADD     CX,AX
    
    
    MOV AX, CX
    
    POP CX
    POPF
    

    
    RET
    BCD_TO_HEXA ENDP

 
LAST:  

    RET
    BCD_INPUT DW 1745H,2525H,3935H,4245H,9065H

    LEN EQU ($-BCD_INPUT)

    HEXA_OUTPUT DW LEN DUP(0)
    

    S_LEN EQU LEN
    
 END
