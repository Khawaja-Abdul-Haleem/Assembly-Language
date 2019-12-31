.MODEL SMALL
.STACK 100H
.DATA
    A DB " ENTER VALUE: $"
    MSG1 DB " EQUAL TO 5 $"
    MSG2 DB " NOT EQUAL TO 5 $" 
    MSG3 DB " DO YEW WANT TO CONTINUE(Y/N)? $"
.CODE
    MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
 ENTER:   
    LEA DX, A
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
   MOV BL, AL
   
    CMP BL, '5'
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
    JE INPUT
          
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    JMP AGAIN
    
 INPUT:
    LEA DX, MSG1
    MOV AH, 9
    INT 21H  
 AGAIN:   
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
    
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    
   
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
   
    
    CMP BL, 'Y'
    
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
    JE ENTER 
    CMP BL, 'N'
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
    JMP EXIT
EXIT:    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
    END MAIN