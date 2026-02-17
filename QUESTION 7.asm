.MODEL SMALL
 
.STACK 100H       


;Qustion 7
;Perform the following arithmetic operations



.DATA

; declare variables here


.CODE

       MAIN PROC

; initialize DS

        MOV AX,@DATA
        MOV DS,AX
 
; enter your code here
        
        ;1) X * Y  
                            
        MOV   AX,5 
        MOV  CX,5
        MUL  CX         ;answer will be in  DX:AX
                                            ;(h:l)
                                                        
                                                        
                                                        
        ;2) X/Y        16/4
        
        MOV AX,16
        MOV BX,4
        DIV BX              ; ;answer will be in  AH:AL 
                                            ;AH=REMAINDER                  
                                            ;AL=QUOTIENT(ANS)          
                                            
            
        ;3) X*Y/Z       5*6/4
        
        
        MOV AX, 5
        MOV BX, 6
        MUL BX
        
        
        MOV CX, 7 
        DIV CX
        
                                            
       
                          

         

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN








