    .text
initial:
    lui $t1, 0x17
    sw $t1, ($zero)
    addu $t2, $t1, $t1
    sw $t2, 4($zero)
    syscall
    