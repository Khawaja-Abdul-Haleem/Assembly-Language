.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB " INVALID INPUT$" 
    MSG2 DB " CHAR IS IN LOWERCASE$"
    MSG3 DB " CHAR IS IN UPPERCASE$"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV AH, 1
    INT 21H
    MOV BL, AL
    
    CMP BL, 'A'
    JL INVALID
    
    CMP BL, 'Z'
    JG SMALL
    
    ;ADD BL, 32 ; REPLACE WITH OR
    
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2            
    INT 21H
    
    OR BL, 32
    MOV DL, BL
    MOV AH, 2
    INT 21H
       
        JMP EXIT
SMALL:
    
    CMP BL, 'a'
    JL INVALID
    
    CMP BL, 'z'
    JG INVALID
    
  ;  SUB BL, 32 ; REPLACE WITH AND BL, 223
   
   LEA DX, MSG2
    MOV AH, 9
    INT 21H
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
   
   AND BL, 223  
   
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
        JMP EXIT

INVALID: 
       CMP BL, 48
       JL NOTALLOW
       
       CMP BL, 57
       JG NOTALLOW
    
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
        JMP EXIT
         
NOTALLOW:
        LEA DX, MSG1
    MOV AH, 9
    INT 21H
         
EXIT:    
    
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
  END MAIN