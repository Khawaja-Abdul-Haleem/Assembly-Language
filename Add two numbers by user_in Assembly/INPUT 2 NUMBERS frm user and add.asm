;PROOGRAM TO INPUT 2 NUMBERS AND ADD THEM

.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
     
     MOV AH, 1  ; INPUT 1
     INT 21H
     
     MOV BL, AL
     
     MOV AH, 1  ; INPUT 2
     INT 21H
      
     ADD BL, AL
      SUB BL, 48
      
      MOV DL, BL
      MOV AH, 2
      INT 21H
        
       
    MOV AH, 4CH
    INT 21H
    
    MAIN ENDP
END MAIN