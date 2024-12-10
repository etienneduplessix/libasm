section .text
    global ft_read

ft_read:
    ; Input: RDI = pointer to the buffer, RSI = length of the buffer
    ; Output: RAX = number of bytes read (or -1 on error)

    mov rax, 0          ; syscall number for sys_read
    mov rdi, 0          ; file descriptor 0 (stdin)
    syscall              ; invoke the syscall

    ; Return the number of bytes read in RAX
    ret