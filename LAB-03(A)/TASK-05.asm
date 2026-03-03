.MODEL SMALL
 
.STACK 100H    


;TASK-05
;Read a character, and if it's an uppercase letter, display it.

.DATA

; declare variables here 

   OUTP DB 'NOT UP$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

        MOV AH,1
        INT 21H
        MOV BL,AL
        
        CMP BL,97
        
        JL UPPERS
        
        LEA DX,OUTP
        MOV AH,9
        INT 21H
        JMP BYE  
        
        
        UPPERS:
            MOV AH,2
            MOV DL,BL
            INT 21H
        
    BYE:




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
