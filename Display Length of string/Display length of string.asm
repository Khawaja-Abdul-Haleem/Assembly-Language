.MODEL SMALL
.STACK 100H
.DATA
    STR DB 100 DUP("$")
    LEN DB 10,13,"LENGTH: $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    XOR CX,CX
    
    LEA SI, STR
    
LOOP1:
    MOV AH, 1
    INT 21H
    
    CMP AL,13
    JE DISP
    
    MOV [SI],AL
    INC SI
    
    INC BL
        JMP LOOP1

DISP:      
    ADD BL, 48  
    
    LEA DX, LEN
    MOV AH, 9
    INT 21H
    
    MOV AH, 2
    MOV DL, BL
    INT 21H  
          
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN