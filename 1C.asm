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
zero_array:
    mov [array + si], 0
    add si, 2
    loop zero_array

    mov ax, 0
    mov [array], ax
    mov ax, 1
    mov [array + 2], ax

    mov cx, 14
    mov si, 4
fill_fibonacci:
    mov bx, [array + si - 2]
    add bx, [array + si - 4]
    mov [array + si], bx
    add si, 2
    loop fill_fibonacci

    mov ax, 4C00h
    int 21h
main ENDP
END main