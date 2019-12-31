.MODEL SMALL
.STACK 100H
.DATA

 A DB "7","3","2","1","4"
 
.CODE


MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA SI, A
    MOV BX, 5
    
    CALL SELECTION_SORT
    
    CALL DISPLAY
    
    
    
    MOV AH,4CH
    INT 21H
    
    
    MAIN ENDP

   SELECTION_SORT PROC
    
    PUSH SI
    PUSH BX
    PUSH CX
    PUSH DX
    DEC BX 
    
    JE SORT
    
    MOV DX, SI
    
    SORT:
    
    MOV SI, DX
    MOV CX, BX
    
    MOV DI, SI
    
    MOV AL, [DI]
    
    SEARCH:
   
    INC SI
    CMP [SI], AL
    JNG NEXT_IND
    
    MOV DI, SI
    
    MOV AL, [DI]
    
    NEXT_IND:
    
    LOOP SEARCH
    
      
      PUSH AX
      MOV AL, [SI]
      XCHG AL, [DI]
      MOV [SI],AL
      POP AX
      
    DEC BX
    
    JNE SORT
    
    ENDSORT:
    POP SI
    POP DX
    POP CX
    POP BX
    
    RET
    
    SELECTION_SORT ENDP
   
   
   
   DISPLAY PROC
   
   
    LEA SI, A
    MOV CX, 5
    
    MOV AH, 2
    
    PRINT_ARRAY:
    MOV DL, [SI]
    INT 21H

    INC SI
    
    LOOP PRINT_ARRAY
    
     DISPLAY ENDP

    END MAIN