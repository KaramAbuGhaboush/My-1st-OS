loop:         
   jmp loop             ; Infinite loop (e9 fd ff)



times 510-($-$$) db 0   ; Fill with 510 zeros minus the size of the previous code
 
dw 0xaa55               ;Magic Number