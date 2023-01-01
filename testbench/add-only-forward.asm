    .text
initial:
    # need two forwarding
    lui $t1, 0x1
    addu $t2, $t1, $t1
    addu $t3, $t2, $t2
    syscall
    