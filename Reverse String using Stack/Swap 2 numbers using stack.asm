.MODEL SMALL
.STACK 100H
.DATA
    I_V1 DB "ENTER VAL_1: $"
    I_V2 DB 10,13,"ENTRE VAL_2: $"
    B_SWAP DB 10,13,"   .....BEFORE SWAPPING....$"
    A_SWAP DB 10,13,"   .....AFTER SWAPPING....$"
    V1 DW ?
    V2 DW ?
    D_V1 DB 10,13, "VAL1: $"
    D_V2 DB 10,13, "VAL2: $"
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
    
     MOV AH, 9
     LEA DX, I_V1
     INT 21H
     
     MOV AH, 1
     INT 21H
     MOV V1, AX
     PUSH V1
     
     MOV AH, 9
     LEA DX, I_V2
     INT 21H
     
     MOV AH, 1
     INT 21H
     MOV V2, AX
     PUSH V2
     
     
     
     MOV AH, 9
     LEA DX, B_SWAP
     INT 21H
     LEA DX, D_V1
     INT 21H
     
     MOV AH, 2
     MOV DX, V1
     INT 21H
     
     MOV AH, 9
     LEA DX, D_V2
     INT 21H
     
     MOV AH, 2
     MOV DX, V2
     INT 21H
     
     
     POP V1
     POP V2
     
      MOV AH, 9 
      LEA DX, A_SWAP
      INT 21H
     LEA DX, D_V1
     INT 21H
     
     MOV AH, 2
     MOV DX, V1
     INT 21H
     
     MOV AH, 9
     LEA DX, D_V2
     INT 21H
     
     MOV AH, 2
     MOV DX, V2
     INT 21H
   
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN