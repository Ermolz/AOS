.model small
.stack 100h
.data
    array dw 16 DUP(0)  
.code
main PROC
    mov ax, @data     
    mov ds, ax

    mov cx, 16        
    mov si, 0          
    mov ax, 3          

fill_array:
    cmp si, 32          
    je end_fill_array   
    mov [array + si], ax 
    add ax, 3 
    add si, 2            
    jmp fill_array      

end_fill_array:


    mov ax, 4C00h        
    int 21h
main ENDP
END main