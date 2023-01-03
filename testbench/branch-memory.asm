    .text
main:
    lui $t1, 0x1
    addu $t2, $t1, $zero
    sw $t2, 0($zero)
    lw $t3, 0($zero)
    beq $t1, $t3, .Exit # stall for 2 cycles
    addu $t4, $t1, $zero
    addu $t5, $t1, $zero
.Exit:
    syscall
