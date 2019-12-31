.MODEL SMALL
.STACK 100H
.DATA
    M1 DB "ENTER NUMBER: $"
    M2 DB 10,13,10,13,"IN BINARY: $"
    M3 DB "INVALID!! $"
.CODE
    MAIN PROC
      MOV AX, @DATA
      MOV DS, AX
   
   MOV AH, 9
   LEA DX, M1
   INT 21H
   
   MOV AH, 1
   INT 21H
   
   CMP AL, 48
   JL INVALID
   CMP AL, 57
   JG INVALID
  
   MOV BL, AL
   SUB BL, 48
   
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
EXIT:     
   MOV AH, 4CH
   INT 21H
     MAIN ENDP
END MAIN