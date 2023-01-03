    .text
main:
    lui $t1, 0x1
    addu $t2, $t1, $zero
    beq $t1, $t2, .Exit
    addu $t3, $t1, $zero
    addu $t4, $t1, $zero
.Exit:
    syscall
