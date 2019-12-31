.MODEL SMALL
.STACK 100H
.DATA
   ARR DB 20 DUP(?)
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV ES, AX
  
  LEA DI, ARR
  XOR CX,CX
  
  LEA DI, ARR
  MOV AH, 1 
  CLD
INPUT:
  INT 21H  
  CMP AL, 13
  JE END_INP
  INC CX
  STOSB
    JMP INPUT  

END_INP:
  LEA SI, ARR
  MOV AH, 2  
  MOV DL, 10
  INT 21H

DISP:        
    LODSB
    MOV DL, AL
    INT 21H
        LOOP DISP
 
        MOV AH, 4CH
        INT 21H
   MAIN ENDP
END MAIN