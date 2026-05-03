.stack 100h
.code
main proc
    mov ax,5h
    mov bx,6h
    
    push ax
    push bx
    
    pop ax
    pop bx
    
    
        
        
        
        
        
        
        
        
        
        
        
        
        
    ;mov ax,1234h
    ;mov bx, 5678h
    ;mov cx, 9ABCh
    
    ;mov sp,100h
    
    ;PUSH AX 
    ;PUSH BX 
    ;XCHG AX,CX 
    ;POP CX
    ;PUSH AX 
    ;POP BX
    
    mov ah,1
    int 21h
    mov bl,al
    push bx
    
    int 21h
    mov cl,al
    push cx
    
    int 21h
    mov dl,al
    push dx 
    
   
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    pop bx
    mov dl,bl
    int 21h
    
    pop cx
    mov dl,cl
    int 21h 
    
    pop dx
    mov dl,dl
    int 21h
    
    
    
     
 
    


