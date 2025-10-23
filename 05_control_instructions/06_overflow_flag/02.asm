; JNO → Jump if No Overflow
section .data
    msg_ov db "",10,0
    msg_noov db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,5
    add ax,2
    jno nooverflow

    mov ecx, msg_ov
    jmp print

nooverflow:
    mov ecx, msg_noov

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
