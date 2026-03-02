.MODEL SMALL
 
.STACK 100H 

;TASK-01
;Take a number in AX, 
;and if it"s a negative number, replace it by 5.

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

       MOV AX,-7
       
       CMP AX,0  
       JG EXIT
       
       IFBLOCK:
        MOV AX,5
        
       EXIT:
       
       
       
       


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
