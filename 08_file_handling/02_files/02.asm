; appending to a file
; Assemble the file   : nasm -f elf32 01.asm -o 01.o
; Link:                 ld -m elf_i386 01.o -o 01 
; Run/Execute:          ./01

section .data
    file db "output.txt", 0
    msg db "Assembly Lnaguage Programming", 10
    msg_len equ $ - msg

section .text
    global _start

_start:
    mov eax, 5
    mov ebx, file
    mov ecx, 0x401 ; 400 to append, 1 to write
    mov edx, 0o644
    int 0x80

    ; I am getting 3 returned from openning the file
    ; mov esi, eax
    ; mov ebx, eax

    mov eax, 4              ;write
    mov ebx, 3              ; write on a file fd
    mov ecx, msg
    mov edx, msg_len
    int 0x80

    mov eax, 6
    mov ebx, 3
    int 0x80


    mov eax, 1
    xor ebx, ebx
    int 0x80
