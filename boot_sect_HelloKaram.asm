;raise interrupt 0x10 which is a general interrupt for video services.
;-------------------------------------------------------------------------------------------
mov ah, 0x0e ; tty mode | 0x0e on ah tells the video interrupt that the 
             ; actual function we want to run is to 'write the contents of al in tty mode'.
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

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55
