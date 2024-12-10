section .text
    global ft_strcmp

ft_strcmp:
    ; Input: RDI = pointer to first string (s1)
    ; Input: RSI = pointer to second string (s2)
    ; Output: RAX = result of comparison

.loop:
    mov al, [rdi]          ; Load the next byte from the first string
    mov bl, [rsi]          ; Load the next byte from the second string
    cmp al, bl             ; Compare the two characters
    jne .not_equal         ; If they are not equal, jump to not_equal
    test al, al            ; Check if we reached the null terminator
    jz .equal              ; If it is null, the strings are equal
    inc rdi                ; Move to the next character in the first string
    inc rsi                ; Move to the next character in the second string
    jmp .loop              ; Repeat the loop

.not_equal:
    ; If the characters are not equal, return the difference
    sub rax, rax           ; Clear RAX
    mov al, [rdi]          ; Load the character from the first string
    sub al, [rsi]          ; Subtract the character from the second string
    ret                    ; Return the result in RAX

.equal:
    xor rax, rax           ; Return 0 if the strings are equal
    ret
