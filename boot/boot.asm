
; nasm flags to set start location at 0x7C00 and use 16 bits
[org 0x7C00]
[bits 16]

mov bx, msg_hello_world
call print_bios

bootsector_hold:
jmp $                   ; Jump to the current instruction, aka infinite loop

%include "boot/print.asm"


msg_hello_world:			db `\r\nTouch some grass, Bruh!\r\n`

;padding for bootsector number
times 510 - ($ - $$) db 0x00


;Boot magic number
dw 0xAA55
