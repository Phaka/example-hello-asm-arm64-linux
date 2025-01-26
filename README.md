# Hello World in ARM64 Assembly (Linux)

A simple Hello World implementation in ARM64 assembly language for Linux systems.

## Installation

### Linux
For Debian/Ubuntu:
```bash
sudo apt-get update
sudo apt-get install gcc binutils
```

For Red Hat/Fedora:
```bash
sudo dnf install gcc binutils
```

## Running

Assemble and link:
```bash
as -o main.o main.s
ld -o hello main.o
./hello
```

## Code Explanation

The implementation uses Linux system calls for ARM64 architecture. The program is structured into data and text sections:

The data section contains our "Hello, World!\n" message. The text section contains the program logic which uses two system calls:

1. write (syscall #64) to output our message to stdout
2. exit (syscall #93) to terminate the program

The program uses the ARM64 instruction set:
- mov instructions for immediate values
- ldr for loading addresses
- svc for system calls

System calls in ARM64 Linux use the x8 register for the system call number, with arguments passed in x0-x2.
