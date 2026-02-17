.MODEL SMALL
 
.STACK 100H       

;QUESTION4
;Subtract two numbers using two registers. Do you always get the correct answer?
;What happens when you subtract larger number from the smaller one?

.DATA

; declare variables here


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here

        MOV AX,17
        MOV BX, 5 
        SUB AX,BX
        


;What happens when you subtract larger number from the smaller one?  WILL GET NEGATIVE 

         MOV AX,17
         SUB BX,AX


         

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN
