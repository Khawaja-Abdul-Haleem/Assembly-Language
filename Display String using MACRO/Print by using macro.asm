
PRINT MACRO V1
    MOV AH, 9
    LEA DX, V1
    INT 21H 
    
    MOV AH, 2
    MOV DX, 10
    INT 21H
    MOV DX, 13
    INT 21H
        ENDM


.MODEL SMALL
.STACK 100H
.DATA
   A DB "HELOO K.A.H...!!$"
   B DB 10,13,"WELCOME TO THIS APPLICATION:$"
   C DB 10,13,"THANKS FOR YOUR FEEDBACK... $"
.CODE
    MAIN PROC
        MOV AX, @DATA                                                      
        MOV DS, AX
      
     PRINT A
     PRINT B
     PRINT C  
        
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN
 
 
 