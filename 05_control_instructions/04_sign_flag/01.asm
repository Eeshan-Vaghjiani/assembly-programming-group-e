; JS → Jump if Sign
section .data
    msg_neg db "",10,0
    msg_pos db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,-5
    test ax,ax
    js negative

    mov ecx, msg_pos
    jmp print

negative:
    mov ecx, msg_neg

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
