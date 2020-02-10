.MODEL SMALL 
.STACK 100H
.DATA
    ST DB "JOHN$"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
        
    LEA SI,ST ; SI = SOURCE INDEX
    MOV CX, 4    

LOOP1:
    MOV BX, [SI]
    PUSH BX
    INC SI
        LOOP LOOP1

MOV CX, 4
LOOP2:
    POP DX
    MOV AH, 2 
    INT 21H
    
    INC SI
        LOOP LOOP2            
        
        MOV AH, 4CH
        INT 21H
     MAIN ENDP
 END MAIN
      