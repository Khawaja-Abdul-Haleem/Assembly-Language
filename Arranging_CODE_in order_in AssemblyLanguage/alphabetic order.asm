.MODEL SMALL
.STACK 100H
.DATA
    CHAR1 DB " ENTER CHARACTER 1: $"
    CHAR2 DB " ENTER CHARACTER 1: $"
    RESULT DB " THE RESULT IS: $"
.CODE
    MAIN PROC
       MOV  AX, @DATA
       MOV DS, AX  
    
    LEA DX, CHAR1
    MOV AH, 9
    INT 21H
         
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
    
    LEA DX, CHAR2
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BH, AL
    
    
    CMP BL, BH
    JAE GREATER
    
      JMP SMALLER 
      
GREATER:
    
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
    LEA DX, RESULT
    MOV AH, 9
    INT 21H
    
    MOV DL, BH
    MOV AH, 2
    INT 21H 
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    JMP EXIT
 
SMALLER: 

    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
   MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    
    LEA DX, RESULT
    MOV AH, 9
    INT 21H
    
    
    MOV DL, BL
    MOV AH, 2
    INT 21H    
    
   
    
    MOV DL, BH
    MOV AH, 2
    INT 21H
EXIT:   
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
  END MAIN