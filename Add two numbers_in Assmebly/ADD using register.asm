.MODEL SMALL
.STACK 100H
;.DATA
.CODE

MAIN PROC
 ; Mov Ax, @DATA    
 
   
   Mov AX, 4
   MOv Bx, 4
   ADD Bx, Ax
   MOv Ax, Bx
                                              
   Mov DL, AL 
   
   ;45 FOR \ SIGN
   ; 44 FOR - SIGN
   ; 46 FOR 0 
   ; 47 MINUS 1 FROM ANS
   ; 48 FOR EXACT ANSWER
   ; 49 FOR ADD 1 IN EXACT ANSWER
   ; 50 FOR ADD 1 IN EXACT ANSWER
   
   ADD DL, 48 
   ;sub DL, 48 ERROR
   Mov AH, 2 
   INT 21H
  
   
  MOv AH, 4CH
  INT 21H
  MAIN ENDP
END MAIN
     