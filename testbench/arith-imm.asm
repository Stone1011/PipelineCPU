    .text
initial:
    lui $t0, 0x1234
    
    addiu $t0, $t0, 0x9a43
    ori $t0, $t0, 0x1b5f
    andi $t0, $t0, 0x23d7
    xori $t0, $t0, 0x8a64
    addu $t1, $t0, $zero

    slti $t0, $t0, 0x7579
    sltiu $t1, $t1, 0x7579

    syscall
    