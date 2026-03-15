.MODEL SMALL
 
.STACK 100H 

;QUESTION 10

;From a sequence of natural numbers 1, 2, 3, 4, ........, 100 add all those
;numbers that are divisible by the last non zero digit of your student ID and put the
;summation in a variable M. Add the other numbers that are not divisible by that
;digit and put the summation in another variable N.


.DATA

; declare variables here  

   YEAR DW 0 
   INTS DW 1000  
   DIVS DW 0 
   
   LEP1 DW 'LEAPYEAR$'
   LEP2 DW 'NOT LEAP YEAR$'
 

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

      MOV CX,4
      INPUTS:  
         CMP CX,0
         JE SEEA 
         
         MOV AH,1
         INT 21H
         
         
         MOV BL,AL
         SUB BL,48 
         
         
         MOV AX,INTS
         MUL BL
         
       
         
         
         
         ADD YEAR,AX           
         
         MOV AX,INTS 
         MOV DX,0
         MOV DIVS,10
         DIV DIVS
         
         MOV INTS,AX
           
         LOOP INPUTS
          
         SEEA:  
         MOV AX,YEAR
         MOV DX,0
         MOV BX,4
         
         DIV BX
         
         CMP DX,0
         JE PRINT 
         LEA DX,LEP2
         MOV AH,9
         INT 21H 
         JMP BYE
         
         
         
         
         PRINT:  
         LEA DX,LEP1
         MOV AH,9
         INT 21H 
         JMP BYE
         
         
         
         BYE:
         
         
         
      
       
       




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
