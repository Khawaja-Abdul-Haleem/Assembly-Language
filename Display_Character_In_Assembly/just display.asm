.MODEL HUGE
.STACK 100H 
.DATA
     TBH DB "HELLO K.A.H ! WELCOME TO UR WORLD$"
      TB DB "NEW CREATION WITH K.A.H$"
.CODE
MAIN PROC
   MOV AX, @DATA
   MOV DS, AX
  
    MOV AH, 9
   LEA DX, TB
   INT 21H           
           
   MOV AH, 2
    MOV DL, 10
    INT 21H          
    
   MOV AH, 9
   LEA DX,TBH
   INT 21H
   
   MOV AH, 4CH
   INT 21H
    MAIN ENDP
END MAIN

