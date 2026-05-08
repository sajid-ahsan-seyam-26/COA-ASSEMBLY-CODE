.MODEL SMALL
.STACK 100H

.DATA
    INPUT  DB 'ENTER BINARY INPUT: $'
    OUTPUT DB 0DH,0AH,'HEXA OUTPUT: $'

.CODE

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Print input message
    MOV AH, 9
    LEA DX, INPUT
    INT 21H

    XOR BX, BX
    MOV CX, 16

READ_BINARY:
    MOV AH, 1
    INT 21H

    CMP AL, 0DH
    JE PRINT_HEX

    AND AL, 0FH
    SHL BX, 1
    OR BL, AL

    LOOP READ_BINARY

PRINT_HEX:
    MOV AH, 9
    LEA DX, OUTPUT
    INT 21H

    MOV CX, 4

HEX_LOOP:
    MOV DL, BH
    SHR DL, 4

    ROL BX, 4

    CMP DL, 10
    JGE HEX_LETTER

    ADD DL, 30H
    JMP DISPLAY_HEX

HEX_LETTER:
    ADD DL, 37H

DISPLAY_HEX:
    MOV AH, 2
    INT 21H

    LOOP HEX_LOOP

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN