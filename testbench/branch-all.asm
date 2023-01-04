    .text
main:
    lui $t1, 0x1
    ori $t2, $t1, 0x11
    sw $t2, 0($zero)
    lw $t3, 0($zero)
    beq $t1, $t3, .L1 # stall for 2 cycles
    addu $t4, $t1, $zero
    addu $t5, $t1, $zero
.L1:
    jal func
    nop
    beq $zero, $zero, .Exit
.Exit:
    syscall

func:
    addu $t6, $t1, $t1
    subu $t7, $t6, $t1
    jr $ra