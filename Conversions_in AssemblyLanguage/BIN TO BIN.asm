.MODEL SMALL 
.STACK 100H
.DATA

    M1 DB "ENTER IN BINARY: $"
    M2 DB 10,13,10,13,"DISPLAY IN BINARY: $"
    M3 DB "INVALID $"

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV AH, 9
    LEA DX,M1
    INT 21H
    
    XOR BL,BL
    MOV AH, 1

INPUT:    
    INT 21H
    CMP AL, 13
    JE END_INP
    
    CMP AL, 48
    JL INVALID
    CMP AL, 49
    JG INVALID
   
    SHL BL, 1
    SUB BL, 48
    OR BL, AL
        JMP INPUT

END_INP:
    MOV AH, 9
    LEA DX, M2
    INT 21H
    
    MOV AH, 2
    MOV CX, 8
 
DISP:
    ROL BL, 1
    JC DISP_ONE
    
    MOV DL, 48
    INT 21H
        LOOP DISP
            JMP EXIT
DISP_ONE:
    MOV DL, 49
    INT 21H
        LOOP DISP
            JMP EXIT
INVALID:
    MOV AH, 9
    LEA DX, M3
    INT 21H
        JMP EXIT            

EXIT:            
    MOV AH, 4CH
    INT 21H
     MAIN ENDP
END MAIN
       