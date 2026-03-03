.MODEL SMALL
 
.STACK 100H    


;TASK-04
;If AL contains 1 or 3, display 'o'
; if AL contains 2 or 4 display "e".

.DATA

; declare variables here 

    OUT1 DB 'o$'
    OUT2 DB 'e$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

    MOV AL,4
    
    CMP AL,1
    JE ODD
    
    CMP AL,3
    JE ODD
    
    
    CMP AL,2
    JE EVEN
    CMP AL,4
    JE EVEN
    
    
    ODD:
    
    LEA DX, OUT1
    MOV AH,9
    INT 21H
    JMP BYE
    
    
    EVEN:
        LEA DX,OUT2
        MOV AH,9
        INT 21H
        JMP BYE
        
    BYE:




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
