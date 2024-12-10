section .data
    msg db "Hello world!",10      ; 10 is the ASCII code for a new line (LF)

section .text
    global _start
    global _ft_strlen

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 13
    syscall
    
    mov rax, 60
    mov rdi, 0
    syscall


_ft_strlenp:
    mov rax, 1 
    mov  