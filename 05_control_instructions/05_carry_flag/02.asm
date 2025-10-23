; JNC → Jump if No Carry
section .data
    msg_carry db "",10,0
    msg_nocarry db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,5
    add ax,2       ; no carry
    jnc nocarry

    mov ecx, msg_carry
    jmp print

nocarry:
    mov ecx, msg_nocarry

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
