.MODEL SMALL
.STACK 100H
.DATA
   ARR DB 2,5,7,9,1
   G DB "GREATER VALUE: $"
   GREATER DB ? 
   S DB "SMALLER VALUE: $"
   SMALLER DB ?
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX
  
    MOV CX, 5
    
    MOV BL, 0 ; 79H FOR SMALLER VALUE
    
    LEA SI, ARR
 
 SEARCH:           
    
    MOV AL, [SI]
    CMP AL, BL
    JL NEXT   ; JGE FOR SMALLER VALUE
    
    MOV BL, AL
 
 NEXT:
    INC SI
    DEC CX
      JNZ SEARCH
    
    MOV GREATER, BL
    
    ADD GREATER, 48
    
    LEA DX, G
    MOV AH, 9
    INT 21H
    
    MOV AH, 2
    MOV DL, GREATER
    INT 21H
        MOV AH, 4CH
        INT 21H
    MAIN ENDP
END MAIN