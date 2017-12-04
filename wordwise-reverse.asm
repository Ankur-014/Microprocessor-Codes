ORG     100H  
    LEA     DI,ST
    MOV     CX,0000H
    MOV     DX,LEN
    LEA     SI,STR

LOOPING:
    CMP    [SI],20H
    JE     REV
    L1:
    INC    CX
    INC    SI 
    DEC    DX 
    CMP    DX,0000H
    JE     LAST 
JMP    LOOPING  
               
REV: 

    MOV     BX,SI 
    LABEL:
        MOV     AL,[SI-1]
        MOV     [DI],AL
        INC     DI
        DEC     SI
        LOOP    LABEL    
        MOV     SI,BX
        MOV     [DI],20H
        INC     DI
    JMP  L1 
    
LAST:  
    RET               
    STR DB 'india pakistan bangladesh '
    LEN EQU ($-STR)
    ST DB LEN DUP(0)
END