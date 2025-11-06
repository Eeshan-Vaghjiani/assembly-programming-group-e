; 15 to 25
; params 15 = rdi , 25 = rsi

section .text
global sum

sum:
    mov rax, 0
    mov rcx, rdi ; get first arg and assign to rec

loop:
    add rax, rcx ; rax += rcx 
    inc rcx      ; rcx++
    cmp rcx, rsi ;compare the second arg with current value in rcx
    jne loop     ; loop
    ret


