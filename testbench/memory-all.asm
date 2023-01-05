    .text
main:
    li $t1, 0x12345678
    sw $t1, 0($zero)
    sw $t1, 4($zero)
    sw $t1, 8($zero)
    lw $t0, 0($zero)
    lh $t1, 0($zero)
    lh $t2, 2($zero)
    lb $t3, 0($zero)
    lb $t4, 1($zero)
    lb $t5, 2($zero)
    lb $t6, 3($zero)

    sh $t1, 6($zero)
    sh $t2, 4($zero)
    sb $t3, 11($zero)
    sb $t4, 10($zero)
    sb $t5, 9($zero)
    sb $t6, 8($zero)
    
    syscall
