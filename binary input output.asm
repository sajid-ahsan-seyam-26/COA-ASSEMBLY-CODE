stack 100h
.model small
.data
input db "enter bianryinput:$"
output db "you hav entered:$"
.CODE
input proc
mov ax,@DATA
mov DS,AX
mov ah,9
int 21H
LEA dx,input
net
endp

main proc
mov ax,@DATA
mov ds,ax
call input1
xor bx,bx
mov cx,16



