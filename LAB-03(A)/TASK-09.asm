.MODEL SMALL
 
.STACK 100H   


;QUESTION 09
;Write a program to check 
;whether a number is divisible by 5 and 11 or not.
              
                
                
.DATA

; declare variables here 
   OUT1 DB 'YES$'
   OUT2 DB 'NO$'
   

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here  

        MOV AX,11
        MOV BL,11
        
        DIV BL 
        
        MOV CL,0
        
        
        CMP AH,CL
        JE YES   
        
        LEA DX,OUT2
        MOV AH,9
        INT 21H 
        JMP EXIT
        
        
        YES:   
        LEA DX,OUT1
        MOV AH,9
        INT 21H  
        JMP EXIT
        
        
        EXIT:
        
         




 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
