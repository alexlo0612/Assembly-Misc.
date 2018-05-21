section .text
    global start
start:
    mov edx, len ;message length
    mov ecx, msg ;addr. of message 
    mov ebx, 1 ;file descriptor (sdout)
    mov eax, 4 ;sys call number (sys_write)
    int 0x80  ;call kernel

    mov eax, 1 ;sys call number (sys_exit)
    int 0x80 ;call kernel


section .data
msg db 'Hello World', 0xa ;string to be printed
len equ $ - msg ;length of the message

