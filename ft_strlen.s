section .text
    global ft_strlen

ft_strlen:
    ; Input: RDI = pointer to the string
    ; Output: RAX = length of the string

    xor rax, rax          ; Clear RAX to use it as a counter (length)
.loop:
    cmp byte [rdi + rax], 0 ; Compare the current character with null terminator
    je .done                ; If it's null, we are done
    inc rax                 ; Increment the length counter
    jmp .loop               ; Repeat the loop
.done:
    ret                     ; Return with the length in RAX