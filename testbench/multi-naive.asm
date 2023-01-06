    .text
main:
    li $t0, 0x12345678
    li $t1, 0x87654321
    mult $t0, $t1
    mflo $t2
    mfhi $t3
    multu $t0, $t1
    mflo $t2
    mfhi $t3
    div $t1, $t0
    mflo $t2
    mfhi $t3
    divu $t1, $t0
    mflo $t2
    mfhi $t3
    
    syscall
