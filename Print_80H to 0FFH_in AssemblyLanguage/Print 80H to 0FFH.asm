.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV BL, 80H
    MOV CL, 0
TOP:
        CMP CL,10
        JE NEWLINE
     
        INC CL
     
        MOV DL,BL
        MOV AH,2
        INT 21H
        
        INC BL
        CMP BL,0FFH
       
        JE EXIT
     
        JMP TOP
    
NEWLINE:
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
        
       MOV CL,0
         JMP TOP
 EXIT:
 
    MOV AH,4CH
    INT 21H
         
    MAIN ENDP
END MAIN