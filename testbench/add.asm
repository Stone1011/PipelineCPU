    .text
initial:
    # Need a stall, and forwardings
    lui $t1, 0x1
    sw $t1, 0($zero)
    lw $t2, 0($zero)
    addu $t3, $t2, $t2
    addu $t4, $t3, $t3
    syscall
    