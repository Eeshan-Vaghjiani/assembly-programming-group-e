; reading from a file to the terminal

section .data
    file db "output.txt"
    buffer times 128 db 0

section .text
    global _start

_start:
    mov eax, 5
    mov ebx, file
    mov ecx, 0
    ; no edx
    int 0x80

    ; eax has fd

    mov ebx, eax
    mov eax, 3
    mov ecx, buffer
    mov edx, 128
    int 0x80

    ; eax has number of bytes read from the file

    mov edx, eax
    mov eax, 4
    mov ebx, 1
    mov ecx, buffer
    int 0x80

    ;eax has number of bytes written on the terminal

    ; close the file
    mov eax, 6
    mov ebx, 3
    int 0x80

    ; exit the program
    mov eax, 1
    xor ebx, ebx
    int 0x80