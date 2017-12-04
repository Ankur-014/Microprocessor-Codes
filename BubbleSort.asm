ORG     100H
    
      
      LEA   SI,NUM
      MOV   AX,0001H
      MOV   CX,LEN
      
      
LP1:
    CMP     AX,LEN
    JE      LAST  
     MOV   CX,LEN
    MOV     BX,SI
    SUB     CX,AX

    LP2:   
        MOV     DL,[SI]
        CMP     DL,[SI+1] 
        JA      FUNC
        L:
       INC SI
    LOOP    LP2
    
    INC     AX
    
    MOV     SI,BX
    
JMP     LP1

JMP     LAST
        
FUNC:
    CALL SWAP
    JMP  L      
SWAP    PROC    NEAR
    MOV     DH,[SI+1]
    MOV     [SI+1],DL
    MOV     [SI],DH
    
    RET
    SWAP ENDP

LAST:
    RET
    NUM     DB  34H,5H,45H,1H,90H,12H
    LEN     EQU ($-NUM)
    

END