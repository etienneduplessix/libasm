section .text
    global ft_strdup

extern malloc
extern memcpy
extern ft_strlen

ft_strdup:
    ; Input: RDI = pointer to the original string
    ; Output: RAX = pointer to the duplicated string (or NULL on error)

    ; Step 1: Calculate the length of the original string using ft_strlen
    call ft_strlen        ; Call ft_strlen, which returns the length in RAX
    test rax, rax         ; Check if the length is zero
    jz .empty_string      ; If the length is zero, handle empty string case

    ; Step 2: Allocate memory for the new string (length + 1 for null terminator)
    mov rdi, rax          ; Move the length into RDI (malloc argument)
    inc rdi               ; Increment length for null terminator
    call malloc           ; Call malloc to allocate memory
    test rax, rax         ; Check if malloc returned NULL
    jz .error             ; If NULL, jump to error handling

    ; Step 3: Copy the original string to the new memory
    mov rsi, rax          ; Move the pointer to the new memory into RSI
    mov rdi, rdi          ; Original string pointer is already in RDI
    call memcpy           ; Call memcpy to copy the string

    ; Step 4: Return the pointer to the new string
    ret

.empty_string:
    ; Handle the case of an empty string
    mov rdi, 1            ; Size to allocate (1 byte for null terminator)
    call malloc           ; Allocate memory for the null terminator
    test rax, rax         ; Check if malloc returned NULL
    jnz .done             ; If not NULL, jump to done
    jmp .error            ; If NULL, jump to error handling

.done:
    ret                   ; Return the pointer to the allocated memory

.error:
    xor rax, rax          ; Return NULL (0) on error
    ret
