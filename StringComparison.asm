ORG     100H

    LEA     SI,STR

    LEA     DI,ST

    MOV     CX,LEN

    CLD
    
    REP     CMPSB

    JNE     NOT_EQUAL

    MOV     VAR,'Y'

    JMP     LAST

NOT_EQUAL:

    MOV     VAR,'N'

LAST:  

    RET
    STR DB 'KUET CSE'

    LEN EQU ($-STR)

    ST DB 'KUETCSE'

    S_LEN EQU ($-ST)
    VAR DB ?

END