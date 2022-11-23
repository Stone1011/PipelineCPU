    .text
main:
    lui $t1, 0x7
    lui $t2, 0x33
    jal frac
    sw $t3, ($zero)
    syscall

frac:
    addu $t1, $t1, $t1 # t1 *= 2
    subu $t3, $t2, $t1 # t3 = t2 - t1 = 0x33 - 0xE = 0x25
    jr $ra
