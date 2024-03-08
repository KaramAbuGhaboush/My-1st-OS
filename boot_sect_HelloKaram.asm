mov ah, 0x0e ; tty mode
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10
mov al, 'K'
int 0x10
mov al, 'a'
int 0x10
mov al, 'r'
int 0x10
mov al, 'a'
int 0x10
mov al, 'm'
int 0x10

jmp $ ; Jump to the current address (Infinite loop)

times 510 - ($-$$) db 0
dw 0xaa55
