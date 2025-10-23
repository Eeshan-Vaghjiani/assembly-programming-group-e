; JO → Jump if Overflow
section .data
    msg_ov db "",10,0
    msg_noov db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,7FFFh
    add ax,1       ; causes signed overflow
    jo overflow

    mov ecx, msg_noov
    jmp print

overflow:
    mov ecx, msg_ov

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
