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
        
        ;1) 36DF * AF
                            
        MOV   AX, 036DFH 
        MOV  CX,  0AFH
        MUL  CX              
                
                                                        
                                                        
        ;2) F4D5 / C9A5
        
        MOV AX, 0F4D5H
        MOV BX, 0C9A5H
        DIV BX                      
                                            
            
        ;3)   CA92 * BAF9
        
        
        MOV AX, 0CA92H
        MOV BX, 0BAF9H
        MUL BX
        
        
        ;4)  C2A2 * ABCD / BED  
        
        MOV  AX, 0C2A2H
        MOV BX, 0ABCDH
        MUL BX
        
        MOV CX,0BEDH
        DIV CX
        
        
        
        
        
        
                                            
       
                          

         

;exit to DOS
               
        MOV AX,4C00H
        INT 21H
    
    MAIN ENDP
END MAIN



