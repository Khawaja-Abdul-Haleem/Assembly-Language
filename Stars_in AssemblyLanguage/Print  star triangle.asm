.MODEL SMALL
.STACK 100H
.DATA

.CODE
    MAIN PROC
    
    MOV BH, 4
    MOV BL, 0

LOOP1:
    
    CMP BH, 0
    JE EXIT
    MOV BL, 0

LOOP2:
    
    CMP BL, BH
    JAE END1
     MOV DL, "*"
     MOV AH, 2
     INT 21H
     
     INC BL
        JMP LOOP2
     
END1:
    MOV DX, 10
    MOV AH, 2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      
        DEC BH
    JMP LOOP1          
     
EXIT:
 
    MOV AH, 4CH
    INT 21H
        
    MAIN ENDP
  END MAIN