.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
   
   MOV BL, 5
   MOV CL,3
   SUB BL, CL
   
   ADD BL, 48
   
   MOV DL,BL
   MOV AH, 2
   INT 21H 
     
     
     
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN
