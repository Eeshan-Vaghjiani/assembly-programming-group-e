; Assemble the file   : nasm -f elf32 01.asm -o 01.o
; Link:                 ld -m elf_i386 01.o -o 01 
; Run/Execute:          ./01

;| Register | Purpose                                                  |
;| -------- | -------------------------------------------------------- |
;| EAX      | Syscall number (tells the kernel which service you want) |
;| EBX      | 1st argument                                             |
;| ECX      | 2nd argument                                             |
;| EDX      | 3rd argument                                             |
;| ESI      | 4th argument (if needed)                                 |
;| EDI      | 5th argument                                             |
;| EBP      | 6th argument                                             |

section .bss
 input resb 128

section .text
global _start

_start:
; accept input via keyboard
    mov eax, 3          ; sys read
    mov ebx, 0          ; get input via the keyboard
    mov ecx, input      ;where to store the input
    mov edx, 128        ; size of input to get
    int 0x80

; we are getting the actual bytes
    push eax

; display on the terminal
    mov eax, 4      ;sys write
    mov ebx, 1      ;where to write/ terminal
    mov ecx, input  ; where to the data
    pop edx   ; size of the data we want to write
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80

