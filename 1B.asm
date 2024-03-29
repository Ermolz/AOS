.model small
.stack 100h
.data
    array dw 12*12 DUP(0)

.code
main PROC
    mov ax, @data
    mov ds, ax

    mov cx, 12
    mov si, 0

outer_loop:
    mov dx, 12
    mov di, si

inner_loop:
    mov ax, di
    mul si
    sub ax, di

    mov [array + si], ax
    add di, 2
    loop inner_loop

    add si, 24
    loop outer_loop

    mov ax, 4C00h
    int 21h
main ENDP
END main