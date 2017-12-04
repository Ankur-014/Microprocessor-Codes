       ORG     100H
     
CALL BcdToHexa

BcdToHexa PROC NEAR
    
    MOV     DX,4596H
    MOV     AX,DX
    AND     AX,000FH
    MOV     BL,01H
    MUL     BL
    MOV     CX,AX
    
    
    MOV     AX,DX
    AND     AX,00F0H
    ROR     AX,04H
    MOV     BL,0AH
    MUL     BL
    ADD     CX,AX
    
   
    MOV     AX,DX
    AND     AX,0F00H
    ROR     AX,08H
    MOV     BL,64H
    MUL     BL
    ADD     CX,AX
    
   
    MOV     AX,DX
    AND     AX,0F000H
    ROR     AX,0CH
    MOV     BX,03E8H
    MUL     BX
    ADD     CX,AX  
    
    RET
    
BcdToHexa ENDP 
    
    

END