.MODEL SMALL
.STACK 100H
.DATA
    V1 DB ?
    V2 DB ?
    V3 DB ?  
    V4 DB ?      
.CODE
 MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
     
    MOV AH, 1
    INT 21H
    MOV V1, AL       
              
    INT 21H
    MOV V2, AL
    
    INT 21H
    MOV V3, AL
    
    INT 21H
    MOV V4, AL
    
    MOV AH, 2
    MOV DL, 10
    INT 21H
    MOV DL, 13
     
    MOV DL, V1
    INT 21H
    
    MOV DL, V2
    INT 21H
    
    MOV DL, V3
    INT 21H   
    
    MOV DL, V4
    INT 21H
     
    MOV AH, 2 
    ;INT 21H
    MOV DL, 10
    INT 21H
    MOV DL, 13 
    INT          
     
    MOV DL, V1
    INT 21H
    
    MOV DL, V2
    INT 21H
    
    MOV DL, V3
    INT 21H   
    
    MOV DL, V4
    INT 21H
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
 END MAIN