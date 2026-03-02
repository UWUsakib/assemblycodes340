.MODEL SMALL
 
.STACK 100H 

;TASK-03

;If AX contains a negative number, put -1 in BX;
;if AX contains 0, put 0 In BX; 
;if AX contains a positive number, put 1 in BX.

.DATA

; declare variables here  
    BNEG  DB 'BX=-1$' 
    BZERO DB 'BX=0$'
    BPOST DB 'BX=1$'
    

.CODE
MAIN PROC

; initialize DS

MOV AX,@DATA
MOV DS,AX
 
; enter your code here

        MOV AH,1
        INT 21H
        MOV BL,AL
        SUB BL,48
        
        
        CMP BL,0
        JL BXNEG  
        JE BXZERO
        
        MOV BX,1 
        
        LEA DX,BPOST
        MOV AH,9
        INT 21H 
       
        JMP BYE
        
        
        
        BXNEG:
            MOV BX,-1 
            
        LEA DX,BNEG
        MOV AH,9
        INT 21H 
       
        
            
            JMP BYE
          
            
                  
        BXZERO:
            MOV BX,0 
            
        LEA DX,BZERO
        MOV AH,9
        INT 21H 
         
       
            JMP BYE
        
        
        BYE:
            
       
       
       
       


 

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN
