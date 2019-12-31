.MODEL SMALL
.STACK 100H
.DATA  
    A DB "ENTER VAL1: $"
    B DB "ENTER VAL2: $"
    C DB "ENTER VAL3: $"
     MSG1 DB " BOTH And CHECKED$" 
     MSG2 DB " FIZZ$" 
     MSG3 DB " BUZZ$"
     MSG4 DB " FIZZ BUZZ$"
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
 
  LEA DX, B
   MOV AH, 9
   INT 21H
             
    MOV AH, 1
    INT 21H
    MOV CL, AL
 
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
 
 
 LEA DX, C
   MOV AH, 9
   INT 21H
      
    MOV AH, 1
    INT 21H 
    
    
    CMP  BL, CL, AL 
    JG CHECKED  
    
AGAIN:    
    CMP BL, CL
    JG  FIZZ
    CMP CL,BL
    JG BUZZ 
    CMP BL, CL
    JE FIZBUZ
    
CHECKED:
    LEA DX, MSG1
    MOV AH, 9
    INT 21H 
        
      JMP AGAIN
FIZZ:
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
        JMP EXIT
BUZZ:
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
        JMP EXIT
FIZBUZ:
    LEA DX, MSG4
    MOV AH, 9
    INT 21H
    
EXIT:     
    MOV AH, 4CH
    INT 21H    
    
    MAIN ENDP
  END MAIN