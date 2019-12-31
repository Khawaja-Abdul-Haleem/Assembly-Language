.MODEL SMALL
.STACK 100H
.DATA
    VAL1 DB "ENTER VAL1: $"
    VAL2 DB "ENTER VAL2: $"
    
    V1DISPLAY DB " VAL1: $"
    V2DISPLAY DB " VAL2: $"
    
    A DB ?
    B DB ?
    
    MSG1 DB "          1. TO INPUT..$"
    MSG2 DB "          2. TO DISPLAY..$"
    MSG3 DB "          3. TO COMPARE..$"
    MSG4 DB "          4. FOR EXIT..$"  
    MSG5 DB "A IS GREATER..$" 
    MSG6 DB "B IS GREATER ...$"
    MSG7 DB "BOTH ARE EQAUL..$"
    MSG8 DB "INVALID$" 
    
.CODE
    MAIN PROC
      MOV AX, @DATA
      MOV DS, AX
MENU:    
    LEA DX, MSG1
    MOV AH, 9
    INT 21H  
    
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    
    LEA DX, MSG2
    MOV AH, 9
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    
    LEA DX, MSG3
    MOV AH, 9
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    
    LEA DX, MSG4
    MOV AH, 9
    INT 21H
    
   MOV AH, 1
   INT 21H
   MOV BL, AL
           
   CMP BL, '1'
   JE INPUT
          
   CMP BL, '2'
   JE DISPLAY
   
   CMP BL, '3'
   JE COMPARE
   
   CMP BL, '4'
   JE EXIT
    
    JMP INVALID

INPUT:     
MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, VAL1
    MOV AH, 9
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV A, AL
    
     MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H 
    
    LEA DX, VAL2
    MOV AH, 9
    INT 21H
     
    MOV AH, 1
    INT 21H  
    MOV B, AL
         MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
       JMP MENU 
       
DISPLAY:
  
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
     
    LEA DX, V1DISPLAY 
    MOV AH, 9
    INT 21H
    
    MOV DL, A
    MOV AH, 2
    INT 21H
    
        MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, V2DISPLAY 
    MOV AH, 9
    INT 21H
    
    MOV DL, B
    MOV AH, 2
    INT 21H
    
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      
       JMP MENU

COMPARE: 
     MOV BL, A
     MOV CL, B
    CMP BL, CL
    JG GREATER  
    CMP CL, BL
        JG SMALLER 
            JMP EQUAL

GREATER: 
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, MSG5
    MOV AH, 9
    INT 21H 
     MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
        JMP MENU   
SMALLER:
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
        
        LEA DX, MSG6
    MOV AH, 9
    INT 21H  
    
     MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H 
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
        JMP MENU 
EQUAL:  
     MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, MSG7
    MOV AH, 9
    INT 21H 
     MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
        JMP MENU  
        
 
INVALID: 
MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    
    LEA DX, MSG8
    MOV AH, 9
    INT 21H 
          MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
      MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
    MOV DX, 10
    MOV AH,2
    INT 21H
    MOV DX, 13
    MOV AH, 2
    INT 21H
         
    JMP MENU    
      
EXIT:    
    MOV AH, 4CH
    INT 21H
        
    MAIN ENDP
  END MAIN