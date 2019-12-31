.MODEL SMALL
.STACK 100H
.DATA
   MSG1 DB "A IS GREATER $"
   MSG2 DB "B IS GREATER $"
   
.CODE

MAIN PROC
   MOV AX, @DATA
   MOV DS, AX
   
   MOV AH, 1
   INT 21H
   MOV BL, AL
   
   INT 21H
   MOV CL, AL
   
   MOV AH, 9
   
   CMP BL, CL
   JG GREATER
   
   LEA DX, MSG2
   INT 21H
   
   JMP EXIT
   
   GREATER:
    LEA DX, MSG1
    INT 21H
    
    EXIT: 
    
   MOV AH, 4CH
   INT 21H 
    
   MAIN ENDP
END MAIN