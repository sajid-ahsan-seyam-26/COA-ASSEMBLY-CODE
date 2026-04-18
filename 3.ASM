.MODEL SMALL
.STACK 100H
.DATA 
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,3
    
    ; check even or odd using AND
    AND AL,1
    CMP AL,0
    JE PRINT_E
    
PRINT_O:
    MOV AH,2
    MOV DL,'O'
    INT 21H
    JMP FINISH
    
PRINT_E:
    MOV AH,2
    MOV DL,'E'
    INT 21H

FINISH:
    MOV AH,4CH
    INT 21H
    
MAIN ENDP
END MAIN