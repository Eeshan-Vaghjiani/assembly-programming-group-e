; Assemble the file   : nasm -f elf32 01.asm -o 01.o
; Link:                 ld -m elf_i386 01.o -o 01 
; Run/Execute:          ./01

section .bss
    buffer resb 128

section .text
    global _start

_start:

;getting input
mov eax, 3               ;get inputs
mov ebx, 0               ; how to get the inputs
mov ecx, buffer          ; where to store the data
mov edx, 128             ; size of data to recieve
int 0x80                 
; after the line above we get a return which has the actual number of bytes we hace recieved

; mov esi, eax
push eax

; display the input
mov eax, 4
mov ebx, 1
mov ecx, buffer
push edx ; number of bytes to print
int 0x80

mov eax, 1
xor ebx, ebx
int 0x80

