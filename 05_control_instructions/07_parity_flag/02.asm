; JNP / JPO → Jump if Parity Odd

; jnp.asm
section .data
    msg_even db "",10,0
    msg_odd db "Hello, this is Eeshan Vaghjiani, Student No: 166981",10,0

section .text
    global _start
_start:
    mov al,5       ; 00000101b → two 1s → even parity
    test al,al
    jnp odd

    mov ecx, msg_even
    jmp print

odd:
    mov ecx, msg_odd

print:
    mov eax,4
    mov ebx,1
    mov edx,70
    int 0x80

    mov eax,1
    xor ebx,ebx
    int 0x80
