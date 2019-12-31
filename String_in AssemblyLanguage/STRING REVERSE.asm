.MODEL SMALL
.STACK 100H
.DATA
   ARR DB 20 DUP(?)
   ARR1 DB 20 DUP(?)
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        MOV ES, AX
  
  LEA DI, ARR
  XOR CX,CX
 
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
    MOV BX, CX
  LEA SI, ARR
 LEA DI, ARR1
 
 ADD DI, CX
 DEC DI
 CLD
COPY:
    MOVSB
    SUB DI, 2 
    LOOP COPY
  
  MOV CX,BX
  
  MOV AH, 2  
  MOV DL, 10
  INT 21H

    LEA SI, ARR1  
DISP:        
    LODSB
    MOV DL, AL
    INT 21H
        LOOP DISP
  
        MOV AH, 4CH
        INT 21H
   MAIN ENDP
END MAIN