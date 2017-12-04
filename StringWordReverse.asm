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
    CALL FUNC
    JMP  L1
    
RET
  
 FUNC   PROC NEAR
   
    MOV     BX,SI 
    LABEL:
    MOV     AL,[SI-1]
    MOV     [DI],AL
    INC     DI
    DEC     SI
    LOOP    LABEL
    
    MOV     SI,BX
    ;INC     DI
    MOV     [DI],20H
    INC     DI
    DEC     CX
    RET
    FUNC ENDP
    

LAST:  

    RET
    STR DB 'KUET CSE F 2K12 ABDUL AZIZ SORKAR '

    LEN EQU ($-STR)

    ST DB LEN DUP(0)
    

    S_LEN EQU LEN
    

END