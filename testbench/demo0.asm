    .text
initial:
    lui $t1, 0x17
    sw $t1, ($zero)
    syscall
    