; JBE / JNA → Jump if Below or Equal

section .data
    str_be db "",10,0
    str_above db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov ax,5
    mov bx,5
    cmp ax,bx
    jbe below_equal

    mov ecx, str_above
    jmp print

below_equal:
    mov ecx, str_be

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
