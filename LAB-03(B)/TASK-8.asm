.MODEL SMALL
 
.STACK 100H 

;QUESTION 08

;From a sequence of natural numbers 1, 2, 3, 4, ........, 100 add all those
;numbers that are divisible by the last non zero digit of your student ID and put the
;summation in a variable M. Add the other numbers that are not divisible by that
;digit and put the summation in another variable N.


.DATA

; declare variables here  


    M DW  0
    N DW 0

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

         
         MOV CX,100
         
         FORLOOPS:
         CMP CX,0
         JE TATA   
         
         MOV AX,CX
         
         MOV BL,3
         
         DIV BL
         
         CMP AH,0
         JE MADD   
         
         ADD N,CX 
         
         JMP NEXT
         
         
         MADD:
         ADD M,CX 
         
         
         NEXT:
         
         LOOP FORLOOPS
         
         
         
         
         
         TATA   :
         
         MOV BX,0
         MOV BX,M
         MOV CX,N
         
       
       




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
