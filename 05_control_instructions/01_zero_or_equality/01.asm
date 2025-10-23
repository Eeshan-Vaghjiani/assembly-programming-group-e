; jump if equal 

section .data
    msg_equal db "",10,0
    len_equal equ $ - msg_equal 
    ;10 decimal / 0x0A hex - newline character to move cursor to the next line after printing
    ;0 - null terminator
    msg_not_equal db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0
    len_not_equal equ $ - msg_not_equal

section .text
    global _start
_start:
    mov ax, 5
    mov bx, 5

    ; cmp ax, bx performs (ax - bx), 
    ; updates flags but does not store result
    cmp ax, bx
    je equal

    mov ecx, msg_not_equal ; ecx = pointer to message
    jmp print

equal:
    mov ecx, msg_equal ; ecx = pointer to message

print:
    mov eax,4   ; syscall number for sys_write
    mov ebx,1   ; file descriptor (1 = stdout)
    mov edx,70  ; length of the message to be printed
    int 0x80    ;interrupt to invoke the call

    mov eax,1
    xor ebx,ebx
    int 0x80    ; interrupt to exit the program
