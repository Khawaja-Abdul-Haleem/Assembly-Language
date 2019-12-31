.MODEL SMALL
.STACK 100H
.DATA
    M1 DB "ENTER IN HEX: $"
    M2 DB "DISPLAY IN HEX: $"
    M3 DB "INVALID $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
   
    MOV AH, 9
    LEA DX, M1
    INT 21H
   
   XOR BL,BL
   
   MOV AH, 1
 
 INPUT:  
   INT 21H
   
   CMP AL, 13
   JE END_INP
   
   CMP AL, 48
   JGE NUMBER

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
        JMP INPUT

END_INP:        
  MOV AH, 9
  LEA DX, M2
  INT 21H
  
  MOV CX, 4
  MOV AH, 2

PRINT:      
  MOV DL, BL
  SHR DL, 1
  SHR DL, 1
  SHR DL, 1
  SHR DL, 1
  
  CMP DL, 9
  JLE DISPNUM
  ADD DL, 55
     JMP DISP
 
 DISPNUM:
    ADD DL, 48
 
 DISP:
    INT 21H
    ROL BL, 1
    ROL BL, 1
    ROL BL, 1
    ROL BL, 1
        LOOP PRINT
INVALID:
    MOV AH, 9
    LEA DX, M3
    INT 21H
   
EXIT:    
  MOV AH, 4CH
  INT 21H
    MAIN ENDP
 END MAIN