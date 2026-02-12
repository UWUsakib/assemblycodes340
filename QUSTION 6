.MODEL SMALL
 
.STACK 100H       

;QUESTION 6
;Perform the following arithmetic instructions. A, B, C are three variables to be
;declared beforehand





.DATA

; declare variables here


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here
                      
        ;1. A = B - A
        MOV AX,17
        MOV BX, 5 
        SUB AX,BX
           
           
        ;2. A = -(A + 1)  
        MOV AX,17
        INC AX
        NEG AX 

        ;3. C = A + (B + 1); use inc
              MOV AX,5
              MOV BX,6
              INC BX
              ADD AX,BX
              MOV CX,AX
              
         ;4. 4. A = B - (A - 1); use dec    
              MOV AX,5
              MOV BX,8
              DEC AX
              SUB BX,AX
              MOV AX,BX
              
                          

         

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN
