.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV AL, 5
    MOV BL, 2
    
    MUL BL
    
    AAM
    
    MOV CH,AH
    MOV CL,AL
    
    MOV DL, CH
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    MOV DL, CL
    ADD DL, 48
    MOV AH, 2
    INT 21H
    
    ;MOV DL, 4CH
;    MOV AH, 2
;    INT 21H
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN
        