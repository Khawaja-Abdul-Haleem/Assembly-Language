.MODEL SMALL
.STACK 100H
.DATA      
    Q DB "QUOTIENT: $"
    QUO DW ?         
    R DB 10,13,10,13,"REMINDER: $"
    REM DW ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    MOV AX, 40
    XOR DX,DX  ; DX = 0
    
    MOV BX, 5 
    DIV BX
    
    ADD AX, 48
    ADD DX, 48
    
    MOV QUO, AX
    MOV REM, DX
    
    MOV AH, 9
    LEA DX, Q
    INT 21H
    
    MOV DX, QUO
    MOV AH, 2
    INT 21H
    
    MOV AH, 9
    LEA DX,R
    INT 21H
    
    MOV DX, REM
    MOV AH, 2
    INT 21H
        
        MOV AH, 4CH
        INT 21H
     MAIN ENDP
 END MAIN
        