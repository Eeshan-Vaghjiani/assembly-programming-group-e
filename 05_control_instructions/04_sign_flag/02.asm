; JNS → Jump if Not Sign

section .data
    msg_neg db "",10,0
    msg_nonneg db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,5
    test ax,ax
    jns nonneg

    mov ecx, msg_neg
    jmp print

nonneg:
    mov ecx, msg_nonneg

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
