// ARM64 assembly for Linux
// System call numbers for ARM64 Linux:
// 64 for write
// 93 for exit
.global _start

.section .data
    message:
        .ascii "Hello, World!\n"
    message_len = . - message

.section .text
_start:
    // Write system call
    mov x0, #1          // File descriptor 1 is stdout
    ldr x1, =message    // Load address of message
    mov x2, #14         // Message length (including newline)
    mov x8, #64         // write system call number
    svc #0              // Make system call

    // Exit system call
    mov x0, #0          // Return code 0
    mov x8, #93         // exit system call number
    svc #0              // Make system call
