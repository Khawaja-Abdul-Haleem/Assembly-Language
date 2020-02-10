.MODEL SMALL
.STACK 100H
.DATA
   ANS DB "ANSWER: $" 
   A DW ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
   
   MOV AL, 2
   MOV BL, 4
   
   MUL BL
   
   MOV A, AX
   
    LEA DX, ANS
    MOV AH, 9
    INT 21H
  
   ADD A, 48
   MOV DX, A
   MOV AH, 2
   INT 21H
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN