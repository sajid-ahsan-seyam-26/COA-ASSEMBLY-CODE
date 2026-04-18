.MODEL SMALL
.STACK 100H

.DATA 

.CODE 
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, -25      ; signed number

    CMP AX, 0
    JNL END_IF       ; jump if AX >= 0
    NEG AX           ; make it positive

END_IF:
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN