.MODEL SMALL
 
.STACK 100H   


;QUESTION 1
;Write an implicit loop to display a row of 80 stars.
                
.DATA

; declare variables here 
   

.CODE
MAIN PROC  
    
    STARS DB '*$'

; initialize DS                                          

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

          MOV CL,80  
          
          FOR_LOOP:
            LEA DX,STARS
            MOV AH,9
            INT 21H
          LOOP FOR_LOOP
          

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

