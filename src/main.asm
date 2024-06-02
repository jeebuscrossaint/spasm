section .data
    hello db 'Hello, World!',0 ; null terminated string

section .text
    global _start

_start:
    ; write syscall
    mov eax, 4 ; syscall number (sys_write)
    mov ebx, 1 ; file descriptor (stdout)
    mov ecx, hello ; message to write
    mov edx, 13 ; message length
    int 0x80 ; call kernel

    ; exit syscall
    mov eax, 1 ; syscall number (sys_exit)
    xor ebx, ebx ; exit code
    int 0x80 ; call kernel