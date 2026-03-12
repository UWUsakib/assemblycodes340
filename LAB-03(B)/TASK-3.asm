.MODEL SMALL
 
.STACK 100H  


;QUESTION 03

;Read a five character password 
;and overprint it by executing a carriage return
;and displaying five X's. 
;You don't need to store the input characters.

.DATA

; declare variables here   
 ANS DB '*$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here
                        
      MOV CX,5
      
      ;INPUT
      
      LOOPS:
      CMP CX,0
      JE BYE
      
      MOV AH,1
      INT 21H
      
      LOOP LOOPS   
      
      MOV AH,2
      MOV DL,10
      INT 21H  
      MOV AH,2
      MOV DL,13
      INT 21H    
      
      
      ;PRINT  
      MOV CX,5 
      
      LOOPB:
      CMP CX,0
      JE BYE
      
      LEA DX,ANS  
      MOV AH,9
      INT 21H
      
      LOOP LOOPB    
      
      
      BYE:
      
      
      
      
      
      



 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
