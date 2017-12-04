ORG     100H  
	                            
	LEA     SI,A
	MOV     AL,[SI]
	MOV     RESULT,AL
	MOV     CX,LEN
	
LOOPING:
    INC     SI  
    MOV     AL,[SI]
    CMP     AL,RESULT
    JA      SWAP
L1:
    LOOP    LOOPING 
    
    JMP     LAST

SWAP:
    MOV     AL,[SI]
    MOV     RESULT,AL
    JMP     L1
	

LAST:
    RET
    A       DB    12H,56H,7H,79H,99H
    LEN     DW    ($-A)
	RESULT DB ? 
  
END
