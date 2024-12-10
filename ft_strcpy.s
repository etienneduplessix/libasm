section .text
    global ft_strcpy

ft_strcpy:
    ; Input: RDI = pointer to destination, RSI = pointer to source
    ; Output: RAX = pointer to destination (RDI)

    mov rax, rdi          ; Save the destination pointer in RAX for return
.copy_loop:
    mov al, [rsi]        ; Load the next byte from the source string
    mov [rdi], al        ; Store it in the destination buffer
    test al, al          ; Check if it's the null terminator
    jz .done             ; If it is, we are done
    inc rdi              ; Move to the next byte in the destination
    inc rsi              ; Move to the next byte in the source
    jmp .copy_loop       ; Repeat the loop
.done:
    ret                   ; Return with the pointer to the destination in RAX

