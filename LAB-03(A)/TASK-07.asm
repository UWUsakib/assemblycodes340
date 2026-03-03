.MODEL SMALL
 
.STACK 100H    


;TASK-07
;Write an assembly program to check whether a number is even or odd.

.DATA

; declare variables here 

   OUTP1 DB 'EVEN$' 
   OUTP2 DB 'ODD$'

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here 

        MOV AH,1
        INT 21H
        SUB AL,48
        
        MOV BL,2
        
        MOV AH,0
        
        
        
        DIV BL
        
        CMP AH,0
        JE EVEN  
        
        LEA DX,OUTP2
        MOV AH,9
        INT 21H
        JMP BYE
        
        
        
        EVEN:  
        LEA DX,OUTP1
        MOV AH,9
        INT 21H
        JMP BYE
      
        
    BYE:




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
