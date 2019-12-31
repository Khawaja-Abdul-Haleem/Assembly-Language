.MODEL SMALL
.STACK 
.DATA
    MENU DB " ENTER CHARACTERS UNTIL SPACE WILL NOT ENTERED: $"
    MSG DB " NO. OF CHARACTERS (INCLUDING SPACE): $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV CL, '0'
   
   LEA DX, MENU
   MOV AH, 9
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
    MOV DX, 13
    MOV AH, 2
    INT 21H
   
     
AGAIN:   
   MOV AH, 1
   INT 21H       
   INC CL
   
   CMP AL, 20H
   JE DISPLAY
       JMP AGAIN
 
 DISPLAY:  
   
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
   
    
    
    LEA DX, MSG
    MOV AH, 9
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
    MOV DX, 13
    MOV AH, 2
    INT 21H
   
    MOV DL, CL
    MOV AH, 2
    INT 21H  
 
        
    MAIN ENDP
  END MAIN