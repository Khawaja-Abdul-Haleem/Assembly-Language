.MODEL SMALL
.STACK 100H
.DATA  
    V DB "ENTER VALUE:$"
    E DB 10,13,"EVEN.. $"
    O DB 10,13,"OD.. $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV AH, 2
    LEA DX, V
    INT 21H 
    
    MOV AH, 1
    INT 21H
    
    MOV BL, 2
    DIV BL
    
    CMP AH, 0
    JE ISEVEN
        JMP ISODD
    
 ISEVEN:
    MOV AH, 9
    LEA DX, E
    INT 21H  
        JMP EXIT:

ISODD:
    MOV AH, 9
    LEA DX, O
    INT 21H

EXIT:   
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN