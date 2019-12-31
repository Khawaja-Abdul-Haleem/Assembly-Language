.MODEL SMALL 
.STACK 100H
.DATA 
    A DB "ENTER VALUE: $"
  ZERO DB " ZERO FLAG IS ZERO $"
  ONE DB " ZERO FLAG IS ONE $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    LEA DX, A
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    TEST BL, 80H
    JZ   MSG2    
        JMP MSG1
        
MSG1:
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    
    LEA DX, ZERO
    MOV AH, 9
    INT 21H
        JMP EXIT
MSG2:
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, ONE
    MOV AH, 9
    INT 21H
        JMP EXIT

EXIT:    
     MOV AH, 4CH
     INT 21H
     
    MAIN ENDP
 END MAIN