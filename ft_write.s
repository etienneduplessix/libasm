section .text
    global ft_write

ft_write:
    ; Input: RDI = pointer to the string, RSI = length of the string
    ; Output: RAX = number of bytes written (or -1 on error)

    ; Write the string to file descriptor 1 (stdout)
    mov rax, 1          ; syscall number for sys_write
    mov rdi, 1          ; file descriptor 1 (stdout)
    syscall              ; invoke the syscall

    ; Return the number of bytes written in RAX
    ret