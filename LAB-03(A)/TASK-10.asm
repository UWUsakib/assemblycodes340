.MODEL SMALL
 
.STACK 100H   


;QUESTION 10
;Write a program to find the 
;maximum and minimum between three numbers..
              
                
                
.DATA

; declare variables here 
   OUT1 DB 'MAX: $'
   OUT2 DB 'MIN: $'
   

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
        
         
          MOV AH,1
          INT 21H
          
          MOV CL,AL
          SUB CL,48

          
          MOV AH,1
          INT 21H
          
          MOV BH,AL
          SUB BH,48   
          
          ;BL>CL:
          CMP BL,CL
          JG BLBORO
          JL CLBORO
          
          BLBORO: 
          ;BL>BH
          CMP BL,BH
          JG BLPRINT 
          JL BHPRINT
          
          
          BLPRINT: 
                    LEA DX,OUT1 
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2
                    MOV DL,BL
                    ADD DL,48 
                    INT 21H
                    
                    
                    ;CL<BH
                    CMP CL,BH
                    JL CLPRINT 
                    
                    LEA DX,OUT2
                    
                    MOV DL,BH
                    ADD DL,48 
                    INT 21H 
                    
                    JMP TATA
                    
                    
                    CLPRINT:
                    LEA DX,OUT2 
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2
                    MOV DL,CL
                    ADD DL,48 
                    INT 21H 
                    JMP TATA
                    
          
                BHPRINT: 
                    LEA DX,OUT1
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BH
                    ADD DL,48 
                    INT 21H        
                    
                    ;BL<CL
                    CMP BL,CL
                    JL LBLPRINT 
                    
                    LEA DX,OUT2
                    MOV DL,CL
                    ADD DL,48 
                    INT 21H 
                    
                    JMP TATA
                    
                    
                    LBLPRINT:
                    LEA DX,OUT2
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BL
                    ADD DL,48 
                    INT 21H 
                    JMP TATA
          
                
          CLBORO:  
          ;CL>BH:
               
          CMP CL,BH
          JG BOROCLPRINT 
          JL BOROBHPRINT
          
          
          BOROCLPRINT: 
                    LEA DX,OUT1
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,CL
                    ADD DL,48 
                    INT 21H
                    
                    
                    ;BL<BH
                    CMP BL,BH
                    JL SOTOBLPRINT 
                    
                    LEA DX,OUT2
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BH
                    ADD DL,48 
                    INT 21H 
                    
                    JMP TATA
                    
                    
                    SOTOBLPRINT:
                    LEA DX,OUT2 
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BL
                    ADD DL,48 
                    INT 21H 
                    JMP TATA
                    
          
                BOROBHPRINT:
                    LEA DX,OUT1
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BH
                    ADD DL,48 
                    INT 21H        
                    
                    ;BL<CL
                    CMP BL,CL
                    JL LBLPRINT1
                    
                    LEA DX,OUT2 
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,CL
                    ADD DL,48 
                    INT 21H 
                    
                    JMP TATA
                  LBLPRINT1:
                    LEA DX,OUT2 
                    MOV AH,9
                    INT 21H
                    
                    MOV AH,2 
                    
                    MOV DL,BL
                    ADD DL,48 
                    INT 21H 
                    JMP TATA               
                    
          TATA:
          
          

;exit to DOS
               
MOV AX,4C00H
INT 21H

MAIN ENDP
    END MAIN

