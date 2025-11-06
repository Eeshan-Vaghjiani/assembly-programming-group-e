; simple loop

; nasm -f elf32 loop1.asm -o loop1.o -g
; ld -m elf_i386 loop1.o -o loop1
; to run = ./loop1
; to debug = gdb --silent loop1

section .data
    str_msg db "Hello from LOOP!", 10
    len equ $ - str_msg

section .text
    global _start

_start:
    mov ecx, 5              ; loop counter

print_loop:
    mov eax, 4              
    mov ebx, 1              
    push ecx                ; save loop counter
    mov ecx, str_msg
    mov edx, len
    int 0x80
    pop ecx                 ; restore loop counter from stack

    loop print_loop          ; decrements ecx, jumps if not 0


    mov eax, 1
    xor ebx, ebx
    int 0x80
