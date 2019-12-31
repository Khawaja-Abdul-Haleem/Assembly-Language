.MODEL SMALL
.STACK 100H
.DATA
     MSG1 DB "ENTER NO. OF VAL: $"
     
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
   
   MOV DL, "*"
   MOV AH, 2
   
   
   MOV CX, 4
P1:
    INT 21H 
    LOOP P1
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, "*"
    MOV CX, 5
    
P2:
    
    INT 21H 
    LOOP P2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, "*" 
    MOV CX, 6 

P3:

    INT 21H 
    LOOP P3
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, "*"
    MOV CX, 5

P4:
    INT 21H 
    LOOP P4
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    MOV DL, "*"
    MOV CX, 4  
P5:
    
    INT 21H 
    LOOP P5
 EXIT:   
       
    MOV AH, 4CH
    INT 21H
 MAIN ENDP
    END MAIN