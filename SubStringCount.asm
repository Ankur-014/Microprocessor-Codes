ORG     100H           
    
    LEA     SI,STR
    LEA     DI,ST
    MOV     BX,SI
    MOV     AX,0000H

CODE:
    CMP     AX,LEN
    JAE     FINAL
    INC     AX
    
    MOV     CX,S_LEN
    
    CLD
    REP     CMPSB
    
    JNE     NOT_EQUAL
    
    MOV     VAR,'Y'
    INC     COUNT
    JMP     CODE
    

NOT_EQUAL: 
          LEA   DI,ST
          INC   BX
          MOV   SI,BX
          JMP   CODE
          

FINAL:
    CMP    COUNT,00H
    JNZ    LAST
    MOV    VAR,'N' 
        
LAST:
    RET              
    STR     DB   'KU KU BU CU DUT KU DUT KU'
    LEN     DW  ($-STR)
    ST      DB   'KU'
    S_LEN  DW  ($-ST)
    
    VAR     DB  DUP(0)
    COUNT   DB  DUP(0)

END