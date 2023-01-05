    .text
main:
    lui $t1, 0x1
    ori $t2, $t1, 0x11
    sw $t2, 0($zero)
    lw $t3, 0($zero)
    bne $t2, $t3, .L1 # stall for 2 cycles
    addu $t4, $t1, $zero
    addu $t5, $t1, $zero
    addu $t6, $t1, $t5
    addu $t6, $t6, $t6
.L1:
    jal func
    nop
    bgez $t7, .L1
    nop
.L2:
    bltz $t7, .L3
    nop
.L3:
    beq $zero, $zero, .Exit
.Exit:
    syscall

func:
    # addu $t6, $t1, $t1
    subu $t6, $t6, $t1
    addu $t7, $t6, $zero
    jr $ra
    nop