.MODEL SMALL
 
.STACK 100H 

;TASK-02
;Suppose AL and BL contain extended ASCII characters.
;Display the one that comes first
;in the character sequence.

.DATA

; declare variables here

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

       MOV AH,1
       INT 21H
       MOV CL,AL   
       SUB CL,48
       
       MOV AH,1
       INT 21H
       MOV BL,AL 
       SUB BL,48
       
       MOV AL,CL
       

       
       CMP AL,BL
       JLE ALBIG
       JGE BLBIG 
       
       ALBIG: 
        MOV AH,2
        MOV DL,AL
        ADD DL,48
        INT 21H
        
        MOV AH,2
        MOV DL,BL
        ADD DL,48
        INT 21H     
        
        JMP SHESH
       
       BLBIG:
        MOV AH,2
        MOV DL,BL
        ADD DL,48
        INT 21H
        
        MOV AH,2
        MOV DL,CL
        ADD DL,48
        INT 21H   
        
       SHESH:
            
       
       
       
       


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
