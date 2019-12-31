.MODEL SMALL 
.STACK 100H
.DATA      
   M1 DB "ENTER IN HEX: $"
   M2 DB 10,13,"IN BINARY: $"
   M3 DB "INVALID$"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
   
   MOV AH,9
   LEA DX, M1
   INT 21H
   
   MOV AH, 1

INP:
   INT 21H
   
   CMP AL, 13
   JE END_INP
   
   CMP AL, 48
   JGE NUMBER
      JMP EXIT

NUMBER:
    CMP AL, 57
    JG ALPHA
    
    
    SUB AL, 48
        JMP ADDON

ALPHA:
    CMP AL, 65
    JL INVALID
    
    CMP AL, 70
    JG INVALID
    
    SUB AL, 55

ADDON:
    SHL BL, 1
    SHL BL, 1
    SHL BL, 1
    SHL BL, 1
    
    OR BL, AL
        JMP INP

END_INP:
    LEA DX, M2
    MOV AH, 9
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

