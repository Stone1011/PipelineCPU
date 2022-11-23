    .text
initial:
    lui $t1, 0x17
    sw $t1, ($zero)
    addu $t2, $t1, $t1
    sw $t2, 4($zero)
    lw $t3, ($zero)
    lw $t4, 4($zero)
    subu $t0, $t4, $t3
    ori $t5, $t0, 0xFF
    sw $t5, 8($zero)
    syscall
    