section .data
    nl db 10

section .text
    global _start

_start:
    mov ebp, esp
    mov ecx, [ebp]
    add ebp, 4

print_args:
    cmp ecx, 0
    jz exit

    mov esi, [ebp]
    test esi, esi
    jz exit

    mov edx, 0
count_loop:
    cmp byte [esi + edx], 0
    je write_string
    inc edx
    jmp count_loop

write_string:
    ; displays the arguments
    mov eax, 4
    mov ebx, 1
    mov ecx, esi
    ; no edx, 1
    int 0x80

    ; display new line
    mov eax, 4
    mov ebx, 1
    mov ecx, nl
    mov edx, 1
    int 0x80

    add ebp, 4
    dec ecx
    jmp print_args

exit:
    mov eax, 1
    xor ebx, ebx
    int 0x80

; Assemble the file   : nasm -f elf32 01.asm -o 04.o
; Link:                 ld -m elf_i386 04.o -o 04 
; Run/Execute:          ./04