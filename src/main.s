.section .data
hello:
    .string "Hello, World!"

.section .text
.globl _start
_start:
    mov $1, %rax
    mov $1, %rdi
    lea hello(%rip), %rsi
    mov $14, %rdx
    syscall

    mov $60, %rax
    xor %rdi, %rdi
    syscall 
