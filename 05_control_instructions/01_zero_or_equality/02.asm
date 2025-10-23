; jne_jnz.asm
section .data
    msg_equal db "",10,0
    msg_not_equal db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax, 5
    mov bx, 3
    cmp ax, bx
    jne not_equal

    mov ecx, msg_equal
    jmp print

not_equal:
    mov ecx, msg_not_equal

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
