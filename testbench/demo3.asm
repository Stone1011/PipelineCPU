    .text
initial:
    lui $t1, 0x17
    sw $t1, ($zero)
    addu $t2, $t1, $t1
    sw $t2, 4($zero)
    lw $t3, ($zero)
    lw $t4, 4($zero)
    subu $t0, $t4, $t3
    beq $t0, $t1, .if # a simple if branch
    beq $zero, $zero, .endif
.if:
    addu $t4, $t0, $t4
.endif:
    sw $t4, 8($zero) # 0x8 should be 0x17 * 3 = 0x45 if beq $t0, $t1; else should be 0x17 * 2 = 0x2e
    syscall