.MODEL SMALL
.STACK 100H
.DATA
    A DB "HELLO K.A.H..!$"
    B DB "HOW ARE YEW ;? $" 
    C DB "GOOD TO SEE U.. $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
    CALL ENTER 
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    CALL ENTER
    CALL ENTER 
     
    LEA DX, B
    MOV AH, 9
    INT 21H
    
    CALL ENTER
    CALL ENTER 
    
    LEA DX, C
    MOV AH, 9
    INT 21H    
    
        
        MOV AH, 4CH
        INT 21H
     MAIN ENDP

ENTER PROC
     MOV AH, 2
     MOV DX, 10
     INT 21H
     MOV DX, 13
     INT 21H
     
     RET
     ENTER ENDP
    

END MAIN
        