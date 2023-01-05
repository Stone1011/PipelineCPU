    .text
initial:
    lui $t0, 0x1234
    lui $t1, 0x1234
    lui $t2, 0x3456
    lui $t3, 0x5678
    lui $t4, 0x789a
    
    add $t0, $t0, $t0
    sub $t2, $t3, $t2
    sll $t0, $t0, 1
    srl $t1, $t1, 1
    sra $t2, $t2, 1
    and $t3, $t3, $t4
    or $t4, $t3, $t0
    xor $t0, $t1, $t2
    nor $t1, $t2, $t0
    slt $t2, $t3, $t4
    sllv $t3, $t4, $t2
    srlv $t4, $t0, $t2
    sltu $t3, $t4, $t0
    srav $t4, $t1, $t3
    syscall
    