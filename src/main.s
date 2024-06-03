

.section .data
hello:
    .string "Hello, World!"

.include "src/editor.s"
.include "src/display.s"
.include "src/input.s"


.section .text
.globl _start

_start:
    # write syscall
    movq $1, %rax     # syscall number (sys_write)
    movq $1, %rdi     # file descriptor (stdout)
    lea hello(%rip), %rsi # message to write
    movq $13, %rdx    # message length
    syscall           # call kernel

    # exit syscall
    movq $60, %rax    # syscall number (sys_exit)
    xorq %rdi, %rdi   # exit code
    syscall           # call kernel
