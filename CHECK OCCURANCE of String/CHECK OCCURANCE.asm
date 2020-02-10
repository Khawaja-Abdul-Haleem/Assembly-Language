.MODEL SMALL
.STACK 100H
.DATA 
    S DB "STRING: $"
    STR DB "HELLOWORLD$"
    A DB 10,13,"INPUT FOR CHECKING OCCURANCE: $"
    RES DB 10,13,"RESULT: $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
   
    MOV AH, 9  
    LEA DX, S
    INT 21H
    LEA DX, STR
    INT 21H
    LEA DX, A
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    XOR CL,CL
    MOV BL, '$'
    
    LEA SI,STR
    
CHECK:
    CMP BL, [SI]
    JE END_INP
    
    CMP AL, [SI]
    JE COUNTER
    
    INC SI
        JMP CHECK
COUNTER:
    ADD CL, 1
    INC SI
        JMP CHECK

END_INP:
    ADD CL, 48
    
    LEA DX, RES
    MOV AH, 9
    INT 21H
    
    MOV AH, 2
    MOV DL, CL
    INT 21H   
         
        MOV AH, 4CH
        INT 21H
        
    MAIN ENDP
END MAIN