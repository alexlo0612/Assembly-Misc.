section .text
global start

start:
mov rax, 0x02000004; syscall for write
mov rdi, 1; file descriptor ->stdout
mov rsi, msg; addr. of message
;mov rdx, 13 ; number of bytes

syscall; syscall to write

mov rax, 0x02000001;syscall exit
xor rdi,rdi; exit code 0 -> no problem

syscall; syscall exit

section .data
msg db 'Hello, World!', 10; 10 -> newline
