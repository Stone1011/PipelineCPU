jal TAG_JAL_0
addu $8, $8, $13
subu $8, $8, $13
TAG_JAL_0:

beq $0, $0, TAG_IN_BLOCK_0
addu $8, $8, $13
TAG_JAL_1:
beq $0, $0, TAG_OUT_BLOCK_0
addu $8, $8, $13
TAG_IN_BLOCK_0:
jal TAG_JAL_1
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_0:

j TAG_J_0
addu $8, $8, $13
subu $8, $8, $13
TAG_J_0:

beq $0, $0, TAG_IN_BLOCK_1
addu $8, $8, $13
TAG_J_1:
beq $0, $0, TAG_OUT_BLOCK_1
addu $8, $8, $13
TAG_IN_BLOCK_1:
j TAG_J_1
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_1:

lui $1, 32767
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65535
sw $1, 0($0)
lui $1, 32768
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 0
sw $1, 4($0)
addiu $1, $0, -4
sw $1, 8($0)
addiu $1, $0, -3
sw $1, 12($0)
addiu $1, $0, -2
sw $1, 16($0)
addiu $1, $0, -1
sw $1, 20($0)
addiu $1, $0, 0
sw $1, 24($0)
addiu $1, $0, 1
sw $1, 28($0)
addiu $1, $0, 2
sw $1, 32($0)
addiu $1, $0, 3
sw $1, 36($0)
addiu $1, $0, 4
sw $1, 40($0)
lui $1, 6115
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 38641
sw $1, 44($0)
lui $1, 21737
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 13005
sw $1, 48($0)
lui $1, 16013
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 53379
sw $1, 52($0)
lui $1, 4850
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 61345
sw $1, 56($0)
lui $1, 8289
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 45533
sw $1, 60($0)
lui $1, 19125
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 44905
sw $1, 64($0)
lui $1, 20311
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 30047
sw $1, 68($0)
lui $1, 41503
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 62480
sw $1, 72($0)
lui $1, 65167
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 15198
sw $1, 76($0)

addiu $14, $0, 80
addiu $8, $0, 0
TAG_BEQ_LOOP_0:
addiu $9, $0, 0
TAG_BEQ_LOOP_1:

lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_0:

beq $0, $0, TAG_IN_BLOCK_2
addu $12, $12, $13
TAG_BEQ_1:
beq $0, $0, TAG_OUT_BLOCK_2
addu $12, $12, $13
TAG_IN_BLOCK_2:
lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_2:

beq $0, $11, TAG_BEQ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_2:

beq $0, $0, TAG_IN_BLOCK_3
addu $12, $12, $13
TAG_BEQ_3:
beq $0, $0, TAG_OUT_BLOCK_3
addu $12, $12, $13
TAG_IN_BLOCK_3:
beq $0, $11, TAG_BEQ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_3:

lw $10, 0($8)
lw $11, 0($9)
bne $10, $11, TAG_BNE_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BNE_0:

beq $0, $0, TAG_IN_BLOCK_4
addu $12, $12, $13
TAG_BNE_1:
beq $0, $0, TAG_OUT_BLOCK_4
addu $12, $12, $13
TAG_IN_BLOCK_4:
lw $10, 0($8)
lw $11, 0($9)
bne $10, $11, TAG_BNE_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_4:

bne $0, $11, TAG_BNE_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BNE_2:

beq $0, $0, TAG_IN_BLOCK_5
addu $12, $12, $13
TAG_BNE_3:
beq $0, $0, TAG_OUT_BLOCK_5
addu $12, $12, $13
TAG_IN_BLOCK_5:
bne $0, $11, TAG_BNE_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_5:

addiu $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $14, TAG_BEQ_OUT_0
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_1
ori $0, $0, 0
TAG_BEQ_OUT_0:

lw $10, 0($8)
bgez $10, TAG_BGEZ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BGEZ_0:

beq $0, $0, TAG_IN_BLOCK_6
addu $12, $12, $13
TAG_BGEZ_1:
beq $0, $0, TAG_OUT_BLOCK_6
addu $12, $12, $13
TAG_IN_BLOCK_6:
lw $10, 0($8)
bgez $10, TAG_BGEZ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_6:

bgez $0, TAG_BGEZ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BGEZ_2:

beq $0, $0, TAG_IN_BLOCK_7
addu $12, $12, $13
TAG_BGEZ_3:
beq $0, $0, TAG_OUT_BLOCK_7
addu $12, $12, $13
TAG_IN_BLOCK_7:
bgez $0, TAG_BGEZ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_7:

lw $10, 0($8)
bgtz $10, TAG_BGTZ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BGTZ_0:

beq $0, $0, TAG_IN_BLOCK_8
addu $12, $12, $13
TAG_BGTZ_1:
beq $0, $0, TAG_OUT_BLOCK_8
addu $12, $12, $13
TAG_IN_BLOCK_8:
lw $10, 0($8)
bgtz $10, TAG_BGTZ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_8:

bgtz $0, TAG_BGTZ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BGTZ_2:

beq $0, $0, TAG_IN_BLOCK_9
addu $12, $12, $13
TAG_BGTZ_3:
beq $0, $0, TAG_OUT_BLOCK_9
addu $12, $12, $13
TAG_IN_BLOCK_9:
bgtz $0, TAG_BGTZ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_9:

lw $10, 0($8)
blez $10, TAG_BLEZ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BLEZ_0:

beq $0, $0, TAG_IN_BLOCK_10
addu $12, $12, $13
TAG_BLEZ_1:
beq $0, $0, TAG_OUT_BLOCK_10
addu $12, $12, $13
TAG_IN_BLOCK_10:
lw $10, 0($8)
blez $10, TAG_BLEZ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_10:

blez $0, TAG_BLEZ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BLEZ_2:

beq $0, $0, TAG_IN_BLOCK_11
addu $12, $12, $13
TAG_BLEZ_3:
beq $0, $0, TAG_OUT_BLOCK_11
addu $12, $12, $13
TAG_IN_BLOCK_11:
blez $0, TAG_BLEZ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_11:

lw $10, 0($8)
bltz $10, TAG_BLTZ_0
addu $12, $12, $13
subu $12, $12, $13
TAG_BLTZ_0:

beq $0, $0, TAG_IN_BLOCK_12
addu $12, $12, $13
TAG_BLTZ_1:
beq $0, $0, TAG_OUT_BLOCK_12
addu $12, $12, $13
TAG_IN_BLOCK_12:
lw $10, 0($8)
bltz $10, TAG_BLTZ_1
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_12:

bltz $0, TAG_BLTZ_2
addu $12, $12, $13
subu $12, $12, $13
TAG_BLTZ_2:

beq $0, $0, TAG_IN_BLOCK_13
addu $12, $12, $13
TAG_BLTZ_3:
beq $0, $0, TAG_OUT_BLOCK_13
addu $12, $12, $13
TAG_IN_BLOCK_13:
bltz $0, TAG_BLTZ_3
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_13:

addiu $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $14, TAG_BEQ_OUT_1
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_0
ori $0, $0, 0
TAG_BEQ_OUT_1:

lui $1, 26720
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 44559
mthi $1
lui $1, 9596
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 7859
mtlo $1
lui $2, 58557
ori $0, $0, 0
ori $0, $0, 0
ori $2, $2, 32415
lui $3, 11355
ori $0, $0, 0
ori $0, $0, 0
ori $3, $3, 46131
lui $4, 31907
ori $0, $0, 0
ori $0, $0, 0
ori $4, $4, 37676
lui $5, 45487
ori $0, $0, 0
ori $0, $0, 0
ori $5, $5, 51442
lui $6, 59535
ori $0, $0, 0
ori $0, $0, 0
ori $6, $6, 42452
lui $7, 2767
ori $0, $0, 0
ori $0, $0, 0
ori $7, $7, 57489
lui $8, 34396
ori $0, $0, 0
ori $0, $0, 0
ori $8, $8, 28274
lui $9, 610
ori $0, $0, 0
ori $0, $0, 0
ori $9, $9, 51242
lui $10, 23446
ori $0, $0, 0
ori $0, $0, 0
ori $10, $10, 37812
lui $11, 12232
ori $0, $0, 0
ori $0, $0, 0
ori $11, $11, 33764
lui $12, 64641
ori $0, $0, 0
ori $0, $0, 0
ori $12, $12, 29914
lui $13, 24208
ori $0, $0, 0
ori $0, $0, 0
ori $13, $13, 47307
lui $14, 27131
ori $0, $0, 0
ori $0, $0, 0
ori $14, $14, 16665
lui $15, 21578
ori $0, $0, 0
ori $0, $0, 0
ori $15, $15, 38746
lui $16, 44768
ori $0, $0, 0
ori $0, $0, 0
ori $16, $16, 44289
lui $17, 56177
ori $0, $0, 0
ori $0, $0, 0
ori $17, $17, 9542
lui $18, 34004
ori $0, $0, 0
ori $0, $0, 0
ori $18, $18, 848
lui $19, 62739
ori $0, $0, 0
ori $0, $0, 0
ori $19, $19, 51599
lui $20, 5431
ori $0, $0, 0
ori $0, $0, 0
ori $20, $20, 40475
lui $21, 12716
ori $0, $0, 0
ori $0, $0, 0
ori $21, $21, 15344
lui $22, 60208
ori $0, $0, 0
ori $0, $0, 0
ori $22, $22, 54833
lui $23, 22996
ori $0, $0, 0
ori $0, $0, 0
ori $23, $23, 271
lui $24, 55202
ori $0, $0, 0
ori $0, $0, 0
ori $24, $24, 31271
lui $25, 46218
ori $0, $0, 0
ori $0, $0, 0
ori $25, $25, 32555
lui $26, 23257
ori $0, $0, 0
ori $0, $0, 0
ori $26, $26, 45935
lui $27, 12830
ori $0, $0, 0
ori $0, $0, 0
ori $27, $27, 793
lui $28, 35735
ori $0, $0, 0
ori $0, $0, 0
ori $28, $28, 14179
lui $29, 28844
ori $0, $0, 0
ori $0, $0, 0
ori $29, $29, 54215
lui $30, 32202
ori $0, $0, 0
ori $0, $0, 0
ori $30, $30, 35633
lui $31, 5365
ori $0, $0, 0
ori $0, $0, 0
ori $31, $31, 17062

addiu $14, $0, 80
addiu $8, $0, 0
TAG_BEQ_LOOP_2:
addiu $9, $0, 0
TAG_BEQ_LOOP_3:

lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_4:

beq $0, $0, TAG_IN_BLOCK_14
addu $12, $12, $13
TAG_BEQ_5:
beq $0, $0, TAG_OUT_BLOCK_14
addu $12, $12, $13
TAG_IN_BLOCK_14:
lw $10, 0($8)
lw $11, 0($9)
beq $10, $11, TAG_BEQ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_14:

beq $10, $0, TAG_BEQ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BEQ_6:

beq $0, $0, TAG_IN_BLOCK_15
addu $12, $12, $13
TAG_BEQ_7:
beq $0, $0, TAG_OUT_BLOCK_15
addu $12, $12, $13
TAG_IN_BLOCK_15:
beq $10, $0, TAG_BEQ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_15:

lw $10, 0($8)
lw $11, 0($9)
bne $10, $11, TAG_BNE_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BNE_4:

beq $0, $0, TAG_IN_BLOCK_16
addu $12, $12, $13
TAG_BNE_5:
beq $0, $0, TAG_OUT_BLOCK_16
addu $12, $12, $13
TAG_IN_BLOCK_16:
lw $10, 0($8)
lw $11, 0($9)
bne $10, $11, TAG_BNE_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_16:

bne $0, $11, TAG_BNE_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BNE_6:

beq $0, $0, TAG_IN_BLOCK_17
addu $12, $12, $13
TAG_BNE_7:
beq $0, $0, TAG_OUT_BLOCK_17
addu $12, $12, $13
TAG_IN_BLOCK_17:
bne $0, $11, TAG_BNE_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_17:

addiu $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $14, TAG_BEQ_OUT_2
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_3
ori $0, $0, 0
TAG_BEQ_OUT_2:

lw $10, 0($8)
bgez $10, TAG_BGEZ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BGEZ_4:

beq $0, $0, TAG_IN_BLOCK_18
addu $12, $12, $13
TAG_BGEZ_5:
beq $0, $0, TAG_OUT_BLOCK_18
addu $12, $12, $13
TAG_IN_BLOCK_18:
lw $10, 0($8)
bgez $10, TAG_BGEZ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_18:

bgez $0, TAG_BGEZ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BGEZ_6:

beq $0, $0, TAG_IN_BLOCK_19
addu $12, $12, $13
TAG_BGEZ_7:
beq $0, $0, TAG_OUT_BLOCK_19
addu $12, $12, $13
TAG_IN_BLOCK_19:
bgez $0, TAG_BGEZ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_19:

lw $10, 0($8)
bgtz $10, TAG_BGTZ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BGTZ_4:

beq $0, $0, TAG_IN_BLOCK_20
addu $12, $12, $13
TAG_BGTZ_5:
beq $0, $0, TAG_OUT_BLOCK_20
addu $12, $12, $13
TAG_IN_BLOCK_20:
lw $10, 0($8)
bgtz $10, TAG_BGTZ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_20:

bgtz $0, TAG_BGTZ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BGTZ_6:

beq $0, $0, TAG_IN_BLOCK_21
addu $12, $12, $13
TAG_BGTZ_7:
beq $0, $0, TAG_OUT_BLOCK_21
addu $12, $12, $13
TAG_IN_BLOCK_21:
bgtz $0, TAG_BGTZ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_21:

lw $10, 0($8)
blez $10, TAG_BLEZ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BLEZ_4:

beq $0, $0, TAG_IN_BLOCK_22
addu $12, $12, $13
TAG_BLEZ_5:
beq $0, $0, TAG_OUT_BLOCK_22
addu $12, $12, $13
TAG_IN_BLOCK_22:
lw $10, 0($8)
blez $10, TAG_BLEZ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_22:

blez $0, TAG_BLEZ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BLEZ_6:

beq $0, $0, TAG_IN_BLOCK_23
addu $12, $12, $13
TAG_BLEZ_7:
beq $0, $0, TAG_OUT_BLOCK_23
addu $12, $12, $13
TAG_IN_BLOCK_23:
blez $0, TAG_BLEZ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_23:

lw $10, 0($8)
bltz $10, TAG_BLTZ_4
addu $12, $12, $13
subu $12, $12, $13
TAG_BLTZ_4:

beq $0, $0, TAG_IN_BLOCK_24
addu $12, $12, $13
TAG_BLTZ_5:
beq $0, $0, TAG_OUT_BLOCK_24
addu $12, $12, $13
TAG_IN_BLOCK_24:
lw $10, 0($8)
bltz $10, TAG_BLTZ_5
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_24:

bltz $0, TAG_BLTZ_6
addu $12, $12, $13
subu $12, $12, $13
TAG_BLTZ_6:

beq $0, $0, TAG_IN_BLOCK_25
addu $12, $12, $13
TAG_BLTZ_7:
beq $0, $0, TAG_OUT_BLOCK_25
addu $12, $12, $13
TAG_IN_BLOCK_25:
bltz $0, TAG_BLTZ_7
addu $12, $12, $13
subu $12, $12, $13
TAG_OUT_BLOCK_25:

addiu $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $14, TAG_BEQ_OUT_3
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_2
ori $0, $0, 0
TAG_BEQ_OUT_3:

jal TAG_JAL_2
addu $8, $8, $13
subu $8, $8, $13
TAG_JAL_2:

beq $0, $0, TAG_IN_BLOCK_26
addu $8, $8, $13
TAG_JAL_3:
beq $0, $0, TAG_OUT_BLOCK_26
addu $8, $8, $13
TAG_IN_BLOCK_26:
jal TAG_JAL_3
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_26:

j TAG_J_2
addu $8, $8, $13
subu $8, $8, $13
TAG_J_2:

beq $0, $0, TAG_IN_BLOCK_27
addu $8, $8, $13
TAG_J_3:
beq $0, $0, TAG_OUT_BLOCK_27
addu $8, $8, $13
TAG_IN_BLOCK_27:
j TAG_J_3
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_27:

la $14, TAG_JALR_0
jalr $8, $14
addu $9, $9, $13
subu $9, $9, $13
TAG_JALR_0:

la $14, TAG_JALR_1
beq $0, $0, TAG_IN_BLOCK_28
addu $9, $9, $13
TAG_JALR_1:
beq $0, $0, TAG_OUT_BLOCK_28
addu $9, $9, $13
TAG_IN_BLOCK_28:
jalr $8, $14
addu $9, $9, $13
subu $9, $9, $13
TAG_OUT_BLOCK_28:

la $14, TAG_JR_0
jr $14
addu $8, $8, $13
subu $8, $8, $13
TAG_JR_0:

la $14, TAG_JR_1
beq $0, $0, TAG_IN_BLOCK_29
addu $8, $8, $13
TAG_JR_1:
beq $0, $0, TAG_OUT_BLOCK_29
addu $8, $8, $13
TAG_IN_BLOCK_29:
jr $14
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_29:

la $31, TAG_JALR_2
jalr $8, $31
addu $9, $9, $13
subu $9, $9, $13
TAG_JALR_2:

la $31, TAG_JALR_3
beq $0, $0, TAG_IN_BLOCK_30
addu $9, $9, $13
TAG_JALR_3:
beq $0, $0, TAG_OUT_BLOCK_30
addu $9, $9, $13
TAG_IN_BLOCK_30:
jalr $8, $31
addu $9, $9, $13
subu $9, $9, $13
TAG_OUT_BLOCK_30:

la $31, TAG_JR_2
jr $31
addu $8, $8, $13
subu $8, $8, $13
TAG_JR_2:

la $31, TAG_JR_3
beq $0, $0, TAG_IN_BLOCK_31
addu $8, $8, $13
TAG_JR_3:
beq $0, $0, TAG_OUT_BLOCK_31
addu $8, $8, $13
TAG_IN_BLOCK_31:
jr $31
addu $8, $8, $13
subu $8, $8, $13
TAG_OUT_BLOCK_31:

ori $v0, $zero, 10
syscall
