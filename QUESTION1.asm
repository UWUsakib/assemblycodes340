.MODEL SMALL
 
.STACK 100H       

;Question1
;Take input in the register AX, 
;and then move it to BX using the MOV instruction.

.DATA

; declare variables here


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here

        MOV AX, 05ACh  
        MOV BX,AX
        


 

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN
