    .text
initial:
    lui $t1, 0x17
    nop
    nop
    nop
    nop
    sw $t1, ($zero)
    nop
    nop
    nop
    nop
    syscall
    