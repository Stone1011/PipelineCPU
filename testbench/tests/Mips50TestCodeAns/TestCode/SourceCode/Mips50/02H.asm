# ---> init memory <---
addiu $1, $0, -29600
sw $1, 0($0)
addiu $1, $0, -21531
sw $1, 4($0)
addiu $1, $0, 29330
sw $1, 8($0)
addiu $1, $0, 13715
sw $1, 12($0)
addiu $1, $0, -6339
sw $1, 16($0)
addiu $1, $0, 7011
sw $1, 20($0)
addiu $1, $0, -26182
sw $1, 24($0)
addiu $1, $0, -17787
sw $1, 28($0)
addiu $1, $0, 3500
sw $1, 32($0)
addiu $1, $0, 21718
sw $1, 36($0)
addiu $1, $0, -16704
sw $1, 40($0)
addiu $1, $0, -2190
sw $1, 44($0)
addiu $1, $0, -29638
sw $1, 48($0)
addiu $1, $0, -9948
sw $1, 52($0)
addiu $1, $0, -26097
sw $1, 56($0)
addiu $1, $0, -24501
sw $1, 60($0)
addiu $1, $0, 26907
sw $1, 64($0)
addiu $1, $0, -1472
sw $1, 68($0)
addiu $1, $0, 32399
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, -29024
mthi $1
addiu $1, $0, 1409
mtlo $1

# ---> init register <---
addiu $1, $0, 6737
addiu $2, $0, 27478
addiu $3, $0, -15491
addiu $4, $0, -7737
addiu $5, $0, 9626
addiu $6, $0, -31657
addiu $7, $0, -5094
addiu $8, $0, -2589
addiu $9, $0, 23392
addiu $10, $0, -17241
addiu $11, $0, 19563
addiu $12, $0, 3583
addiu $13, $0, -25819
addiu $14, $0, -8665
addiu $15, $0, 5173
addiu $16, $0, -26451
addiu $17, $0, 12281
addiu $18, $0, -20304
addiu $19, $0, 15687
addiu $20, $0, -31279
addiu $21, $0, -1451
addiu $22, $0, 31915
addiu $23, $0, -11039
addiu $24, $0, 13011
addiu $25, $0, 5543
addiu $26, $0, -11165
addiu $27, $0, -31553
addiu $28, $0, 9842
addiu $29, $0, -12295
addiu $30, $0, -21875
addiu $31, $0, -5480

# ---> start at 3120 <---

# ---> block head <---
ori $3, $0, 12604
addiu $4, $0, 16
# ---> block body <---
mflo $1
jalr $30, $3
lui $30, 38336
addu $30, $30, $4
TAG_JALR_2:
ori $1, $30, 51606
# ---> block tail <---
addiu $1, $0, -25065
addiu $30, $0, -1903
# ---> endpc 3144 <---

# ---> block head <---
ori $8, $0, 12640
addiu $9, $0, 16
# ---> block body <---
mfhi $0
jalr $0, $8
lui $0, 39506
addu $2, $2, $9
TAG_JALR_5:
sll $2, $0, 2
# ---> block tail <---
# ---> endpc 3160 <---

# ---> block head <---
addiu $11, $0, 16
# ---> block body <---
mflo $0
jal TAG_JAL_1
lui $0, 26476
addu $31, $31, $11
TAG_JAL_1:
slti $31, $0, 10892
# ---> block tail <---
# ---> endpc 3178 <---

# ---> block head <---
addiu $6, $0, 16
lui $8, 43707
ori $8, $8, 52445
sw $8, 96($0)
lui $9, 43707
ori $9, $9, 52445
sw $9, 128($0)
# ---> block body <---
mfhi $31
jal TAG_JAL_9
slti $31, $31, -25370
addu $31, $31, $6
TAG_JAL_9:
sh $31, 5190($7)
sh $7, 128($31)
# ---> block tail <---
addiu $8, $0, 22731
addiu $9, $0, 19496
# ---> endpc 31b4 <---

# ---> block head <---
addiu $6, $0, 16
lui $7, 43707
ori $7, $7, 52445
sw $7, 88($0)
lui $8, 43707
ori $8, $8, 52445
sw $8, 148($0)
# ---> block body <---
mflo $31
jal TAG_JAL_17
sltiu $31, $31, 16387
addu $31, $31, $6
TAG_JAL_17:
sw $1, 87($31)
sw $31, 25213($1)
# ---> block tail <---
addiu $7, $0, 8536
addiu $8, $0, -18662
# ---> endpc 31f0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $25, $0, 12820
addiu $26, $0, 16
# ---> block body <---
mfhi $31
jalr $31, $25
sra $31, $31, 1
addu $31, $31, $26
TAG_JALR_10:
sb $27, -6317($31)
sb $31, 31643($27)
# ---> block tail <---
# ---> endpc 3218 <---

# ---> block head <---
ori $4, $0, 12876
addiu $5, $0, 16
lui $6, 43707
ori $6, $6, 52445
sw $6, 92($0)
lui $7, 43707
ori $7, $7, 52445
sw $7, 152($0)
# ---> block body <---
mflo $3
jalr $3, $4
srl $31, $3, 1
addu $3, $3, $5
TAG_JALR_16:
sh $3, -6344($31)
sh $31, -12720($3)
# ---> block tail <---
addiu $6, $0, 5969
addiu $7, $0, -1462
# ---> endpc 3258 <---

# ---> block head <---
ori $0, $0, 0
ori $28, $0, 12932
addiu $29, $0, 16
lui $2, 43707
ori $2, $2, 52445
sw $2, 100($0)
# ---> block body <---
mfhi $31
jalr $4, $28
xori $31, $4, 18303
addu $4, $4, $29
TAG_JALR_22:
sw $31, 2031($30)
sw $30, -30107($31)
# ---> block tail <---
addiu $2, $0, -31266
# ---> endpc 328c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $20, $0, 12976
addiu $21, $0, 16
# ---> block body <---
mflo $31
jalr $5, $20
addi $31, $5, 23152
addu $5, $5, $21
TAG_JALR_26:
sb $31, -31812($22)
# ---> block tail <---
addiu $31, $0, 7220
# ---> endpc 32b4 <---

# ---> block head <---
addiu $13, $0, 16
lui $14, 43707
ori $14, $14, 52445
sw $14, 140($0)
lui $15, 43707
ori $15, $15, 52445
sw $15, 104($0)
# ---> block body <---
mfhi $0
jal TAG_JAL_30
addiu $0, $0, -14352
addu $31, $31, $13
TAG_JAL_30:
sh $31, 140($0)
sh $0, -12918($31)
# ---> block tail <---
addiu $14, $0, -29663
addiu $15, $0, 28698
# ---> endpc 32f0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
addiu $3, $0, 16
lui $4, 43707
ori $4, $4, 52445
sw $4, 112($0)
# ---> block body <---
mflo $0
jal TAG_JAL_37
andi $0, $31, 9
addu $31, $31, $3
TAG_JAL_37:
sw $0, -12968($31)
sw $31, 140($0)
# ---> block tail <---
addiu $4, $0, -26311
# ---> endpc 3324 <---

# ---> block head <---
addiu $6, $0, 16
# ---> block body <---
mfhi $31
jal TAG_JAL_39
ori $31, $31, 9
addu $31, $31, $6
TAG_JAL_39:
xor $31, $7, $31
# ---> block tail <---
# ---> endpc 333c <---

# ---> block head <---
addiu $8, $0, 16
# ---> block body <---
mflo $31
jal TAG_JAL_41
sll $31, $31, 3
addu $31, $31, $8
TAG_JAL_41:
add $31, $31, $9
# ---> block tail <---
addiu $31, $0, -32005
# ---> endpc 3358 <---

# ---> block head <---
ori $13, $0, 13172
addiu $14, $0, 16
# ---> block body <---
mfhi $31
jalr $31, $13
slti $31, $31, -6628
addu $31, $31, $14
TAG_JALR_29:
addu $31, $31, $15
# ---> block tail <---
# ---> endpc 3374 <---

# ---> block head <---
ori $19, $0, 13200
addiu $20, $0, 16
# ---> block body <---
mflo $11
jalr $12, $19
sltiu $11, $12, 8559
addu $12, $12, $20
TAG_JALR_32:
and $11, $11, $12
# ---> block tail <---
# ---> endpc 3390 <---

# ---> block head <---
addiu $22, $0, 16
# ---> block body <---
mfhi $13
jal TAG_JAL_43
sra $13, $31, 1
addu $31, $31, $22
TAG_JAL_43:
nor $13, $13, $31
# ---> block tail <---
# ---> endpc 33a8 <---

# ---> block head <---
ori $27, $0, 13252
addiu $28, $0, 16
# ---> block body <---
mflo $14
jalr $15, $27
srl $14, $15, 1
addu $15, $15, $28
TAG_JALR_35:
or $14, $15, $14
# ---> block tail <---
# ---> endpc 33c4 <---

# ---> block head <---
addiu $30, $0, 16
# ---> block body <---
mfhi $0
jal TAG_JAL_45
xori $0, $0, 566
addu $31, $31, $30
TAG_JAL_45:
sllv $31, $31, $0
# ---> block tail <---
# ---> endpc 33dc <---

# ---> block head <---
addiu $3, $0, 16
# ---> block body <---
mflo $0
jal TAG_JAL_47
addi $0, $0, 11296
addu $31, $31, $3
TAG_JAL_47:
slt $31, $0, $31
# ---> block tail <---
# ---> endpc 33f4 <---

# ---> block head <---
ori $8, $0, 13328
addiu $9, $0, 16
# ---> block body <---
mfhi $31
jalr $31, $8
addiu $31, $31, -9836
addu $31, $31, $9
TAG_JALR_38:
mult $31, $10
mfhi $31
mflo $31
# ---> block tail <---
addiu $31, $0, -14864
# ---> endpc 341c <---

# ---> block head <---
addiu $11, $0, 16
# ---> block body <---
mflo $31
jal TAG_JAL_49
andi $31, $31, 6
addu $31, $31, $11
TAG_JAL_49:
multu $31, $12
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 343c <---

# ---> block head <---
ori $16, $0, 13400
addiu $17, $0, 16
# ---> block body <---
mfhi $31
jalr $31, $16
ori $31, $31, 28514
addu $31, $31, $17
TAG_JALR_41:
div $18, $31
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3460 <---

# ---> block head <---
ori $22, $0, 13436
addiu $23, $0, 16
# ---> block body <---
mflo $16
jalr $17, $22
sll $16, $17, 2
addu $17, $17, $23
TAG_JALR_44:
divu $17, $16
mfhi $16
mflo $16
# ---> block tail <---
# ---> endpc 3484 <---

# ---> block head <---
addiu $26, $0, 16
# ---> block body <---
mfhi $31
jal TAG_JAL_50
slti $31, $18, 7523
addu $31, $31, $26
TAG_JAL_50:
mthi $31
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 34a4 <---

# ---> block head <---
ori $0, $0, 0
addiu $2, $0, 16
# ---> block body <---
mflo $31
jal TAG_JAL_51
sltiu $31, $19, -26217
addu $31, $31, $2
TAG_JAL_51:
mtlo $31
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 34c8 <---

# ---> block head <---
ori $7, $0, 13540
addiu $8, $0, 16
# ---> block body <---
mfhi $0
jalr $0, $7
sra $0, $31, 2
addu $31, $31, $8
TAG_JALR_50:
mult $31, $0
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 34ec <---

# ---> block head <---
addiu $10, $0, 16
# ---> block body <---
mflo $0
jal TAG_JAL_53
srl $0, $31, 2
addu $31, $31, $10
TAG_JAL_53:
multu $31, $0
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 350c <---

# ---> block head <---
ori $15, $0, 13608
addiu $16, $0, 16
# ---> block body <---
mfhi $31
jalr $31, $15
xori $31, $31, 32361
addu $31, $31, $16
TAG_JALR_53:
lh $17, -19225($31)
# ---> block tail <---
# ---> endpc 3528 <---

# ---> block head <---
ori $22, $0, 13636
addiu $23, $0, 16
# ---> block body <---
mflo $20
jalr $20, $22
addi $20, $20, -3838
addu $20, $20, $23
TAG_JALR_56:
lhu $24, -9718($20)
# ---> block tail <---
# ---> endpc 3544 <---

# ---> block head <---
addiu $24, $0, 16
# ---> block body <---
mfhi $31
jal TAG_JAL_55
addiu $31, $31, -30608
addu $31, $31, $24
TAG_JAL_55:
lw $25, 16996($31)
# ---> block tail <---
# ---> endpc 355c <---

# ---> block head <---
ori $29, $0, 13688
addiu $30, $0, 16
# ---> block body <---
mflo $21
jalr $21, $29
andi $31, $21, 28701
addu $21, $21, $30
TAG_JALR_59:
lb $21, -12272($31)
# ---> block tail <---
# ---> endpc 3578 <---

# ---> block head <---
ori $6, $0, 13716
addiu $7, $0, 16
# ---> block body <---
mfhi $22
jalr $22, $6
ori $31, $22, 113
addu $22, $22, $7
TAG_JALR_62:
lbu $22, -13781($31)
# ---> block tail <---
# ---> endpc 3594 <---

# ---> block head <---
ori $12, $0, 13744
addiu $13, $0, 16
# ---> block body <---
mflo $31
jalr $23, $12
sll $31, $23, 1
addu $23, $23, $13
TAG_JALR_65:
lh $23, -27456($31)
# ---> block tail <---
# ---> endpc 35b0 <---

# ---> block head <---
ori $18, $0, 13772
addiu $19, $0, 16
# ---> block body <---
mfhi $0
jalr $0, $18
slti $0, $0, 6689
addu $24, $24, $19
TAG_JALR_68:
lhu $24, 28($0)
# ---> block tail <---
addiu $24, $0, 13845
# ---> endpc 35d0 <---

# ---> block head <---
addiu $21, $0, 16
# ---> block body <---
mflo $0
jal TAG_JAL_57
sltiu $0, $0, -13401
addu $31, $31, $21
TAG_JAL_57:
lw $31, 60($0)
# ---> block tail <---
# ---> endpc 35e8 <---

# ---> block head <---
ori $2, $0, 13828
addiu $3, $0, 16
# ---> block body <---
mfhi $25
jalr $25, $2
sra $25, $25, 2
addu $25, $25, $3
TAG_JALR_71:
beq $4, $25, TAG_BEQ_2
addiu $5, $0, 1
addiu $5, $0, 1
TAG_BEQ_2:
# ---> block tail <---
# ---> endpc 360c <---

# ---> block head <---
ori $8, $0, 13864
addiu $9, $0, 16
# ---> block body <---
mflo $26
jalr $26, $8
srl $26, $26, 3
addu $26, $26, $9
TAG_JALR_74:
bgez $26, TAG_BGEZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
# ---> endpc 3630 <---

# ---> block head <---
addiu $11, $0, 16
# ---> block body <---
mfhi $31
jal TAG_JAL_59
xori $31, $31, 18335
addu $31, $31, $11
TAG_JAL_59:
bgtz $31, TAG_BGTZ_1
addiu $12, $0, 1
addiu $12, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
# ---> endpc 3650 <---

# ---> block head <---
ori $0, $0, 0
addiu $16, $0, 16
# ---> block body <---
mflo $27
jal TAG_JAL_60
addi $31, $27, 27155
addu $31, $31, $16
TAG_JAL_60:
blez $31, TAG_BLEZ_2
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BLEZ_2:
# ---> block tail <---
# ---> endpc 3674 <---

# ---> block head <---
ori $21, $0, 13968
addiu $22, $0, 16
# ---> block body <---
mfhi $29
jalr $28, $21
addiu $28, $29, 7388
addu $28, $28, $22
TAG_JALR_79:
bltz $28, TAG_BLTZ_2
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BLTZ_2:
# ---> block tail <---
# ---> endpc 3698 <---

# ---> block head <---
ori $28, $0, 14004
addiu $29, $0, 16
# ---> block body <---
mflo $30
jalr $1, $28
andi $30, $1, 13
addu $1, $1, $29
TAG_JALR_82:
bne $27, $30, TAG_BNE_2
addiu $2, $0, 1
addiu $2, $0, 1
TAG_BNE_2:
# ---> block tail <---
# ---> endpc 36bc <---

# ---> block head <---
ori $6, $0, 14040
addiu $7, $0, 16
# ---> block body <---
mfhi $0
jalr $0, $6
ori $0, $0, 16
addu $2, $2, $7
TAG_JALR_85:
beq $0, $2, TAG_BEQ_5
addiu $8, $0, 1
addiu $8, $0, 1
TAG_BEQ_5:
# ---> block tail <---
# ---> endpc 36e0 <---

# ---> block head <---
addiu $8, $0, 16
# ---> block body <---
mflo $0
jal TAG_JAL_62
sll $0, $31, 4
addu $31, $31, $8
TAG_JAL_62:
bgez $0, TAG_BGEZ_4
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BGEZ_4:
# ---> block tail <---
# ---> endpc 3700 <---

# ---> block head <---
ori $13, $0, 14108
addiu $14, $0, 16
# ---> block body <---
mfhi $3
jalr $3, $13
slti $3, $3, -9406
addu $3, $3, $14
TAG_JALR_88:
sltiu $15, $3, 9500
# ---> block tail <---
# ---> endpc 371c <---

# ---> block head <---
addiu $16, $0, 16
# ---> block body <---
mflo $31
jal TAG_JAL_64
sltiu $31, $31, -32654
addu $31, $31, $16
TAG_JAL_64:
sra $17, $31, 2
# ---> block tail <---
# ---> endpc 3734 <---

# ---> block head <---
addiu $18, $0, 16
# ---> block body <---
mfhi $31
jal TAG_JAL_66
sra $31, $31, 4
addu $31, $31, $18
TAG_JAL_66:
srl $19, $31, 1
# ---> block tail <---
# ---> endpc 374c <---

# ---> block head <---
ori $0, $0, 0
addiu $23, $0, 16
# ---> block body <---
mflo $4
jal TAG_JAL_67
srl $31, $4, 3
addu $31, $31, $23
TAG_JAL_67:
xori $4, $31, 50809
# ---> block tail <---
addiu $4, $0, -12899
# ---> endpc 376c <---

# ---> block head <---
ori $28, $0, 14216
addiu $29, $0, 16
# ---> block body <---
mfhi $5
jalr $6, $28
xori $5, $6, 9670
addu $6, $6, $29
TAG_JALR_93:
addi $6, $5, -30018
# ---> block tail <---
# ---> endpc 3788 <---

# ---> block head <---
addiu $2, $0, 16
# ---> block body <---
mflo $31
jal TAG_JAL_69
addi $7, $31, 1481
addu $31, $31, $2
TAG_JAL_69:
addiu $31, $7, -29159
# ---> block tail <---
# ---> endpc 37a0 <---

# ---> block head <---
ori $7, $0, 14268
addiu $9, $0, 16
# ---> block body <---
mfhi $0
jalr $0, $7
addiu $0, $0, -32596
addu $8, $8, $9
TAG_JALR_96:
andi $8, $0, 6548
# ---> block tail <---
# ---> endpc 37bc <---

# ---> block head <---
ori $13, $0, 14296
addiu $14, $0, 16
# ---> block body <---
mflo $0
jalr $0, $13
andi $0, $9, 12
addu $9, $9, $14
TAG_JALR_99:
ori $9, $0, 20601
# ---> block tail <---
# ---> endpc 37d8 <---

# ---> block head <---
addiu $8, $0, 16
lui $10, 43707
ori $10, $10, 52445
sw $10, 156($0)
lui $11, 43707
ori $11, $11, 52445
sw $11, 100($0)
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_77
sb $31, -20445($9)
addu $31, $31, $8
TAG_JAL_77:
sb $9, -14244($31)
# ---> block tail <---
addiu $10, $0, -2872
addiu $11, $0, 9380
# ---> endpc 3814 <---

# ---> block head <---
ori $0, $0, 0
ori $7, $0, 14404
addiu $8, $0, 16
lui $9, 43707
ori $9, $9, 52445
sw $9, 116($0)
# ---> block body <---
mflo $10
mfhi $10
jalr $10, $7
sh $10, -13906($1)
addu $10, $10, $8
TAG_JALR_106:
sh $1, -14284($10)
# ---> block tail <---
addiu $9, $0, -29123
# ---> endpc 3848 <---

# ---> block head <---
ori $0, $0, 0
addiu $25, $0, 16
lui $27, 43707
ori $27, $27, 52445
sw $27, 144($0)
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_83
sw $26, -14304($31)
addu $31, $31, $25
TAG_JAL_83:
sw $31, -1632($26)
# ---> block tail <---
addiu $27, $0, -20402
# ---> endpc 3878 <---

# ---> block head <---
addiu $26, $0, 16
lui $27, 43707
ori $27, $27, 52445
sw $27, 112($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 88($0)
# ---> block body <---
mflo $11
mfhi $31
jal TAG_JAL_89
sb $11, -14390($31)
addu $31, $31, $26
TAG_JAL_89:
sb $31, 91($11)
# ---> block tail <---
addiu $27, $0, 32215
addiu $28, $0, 31290
# ---> endpc 38b4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
addiu $26, $0, 16
lui $28, 43707
ori $28, $28, 52445
sw $28, 140($0)
# ---> block body <---
mflo $12
mfhi $12
jal TAG_JAL_96
sh $27, -14424($31)
addu $31, $31, $26
TAG_JAL_96:
sh $31, -32075($27)
# ---> block tail <---
addiu $28, $0, -21504
# ---> endpc 38ec <---

# ---> block head <---
addiu $24, $0, 16
lui $26, 43707
ori $26, $26, 52445
sw $26, 124($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 88($0)
# ---> block body <---
mflo $13
mfhi $31
jal TAG_JAL_103
sw $25, -14496($31)
addu $31, $31, $24
TAG_JAL_103:
sw $31, 72($25)
# ---> block tail <---
addiu $26, $0, 22031
addiu $27, $0, -13725
# ---> endpc 3928 <---

# ---> block head <---
addiu $9, $0, 16
lui $10, 43707
ori $10, $10, 52445
sw $10, 144($0)
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_108
sb $31, 152($0)
addu $31, $31, $9
TAG_JAL_108:
sb $0, -14521($31)
# ---> block tail <---
addiu $10, $0, -6082
# ---> endpc 3954 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
addiu $28, $0, 16
lui $29, 43707
ori $29, $29, 52445
sw $29, 100($0)
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_115
sh $0, -14620($31)
addu $31, $31, $28
TAG_JAL_115:
sh $31, 140($0)
# ---> block tail <---
addiu $29, $0, -15811
# ---> endpc 3988 <---

# ---> block head <---
ori $5, $0, 14760
addiu $6, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jalr $31, $5
sltu $31, $7, $31
addu $31, $31, $6
TAG_JALR_113:
# ---> block tail <---
# ---> endpc 39a4 <---

# ---> block head <---
addiu $8, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_117
srav $31, $9, $31
addu $31, $31, $8
TAG_JAL_117:
# ---> block tail <---
# ---> endpc 39bc <---

# ---> block head <---
ori $13, $0, 14812
addiu $14, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jalr $31, $13
srlv $31, $31, $15
addu $31, $31, $14
TAG_JALR_116:
# ---> block tail <---
# ---> endpc 39d8 <---

# ---> block head <---
ori $0, $0, 0
addiu $18, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_119
sub $14, $14, $31
addu $31, $31, $18
TAG_JAL_119:
# ---> block tail <---
# ---> endpc 39f4 <---

# ---> block head <---
ori $23, $0, 14868
addiu $24, $0, 16
# ---> block body <---
mflo $31
mfhi $15
jalr $15, $23
subu $15, $31, $15
addu $15, $15, $24
TAG_JALR_120:
# ---> block tail <---
# ---> endpc 3a10 <---

# ---> block head <---
ori $29, $0, 14896
addiu $30, $0, 16
# ---> block body <---
mflo $17
mfhi $16
jalr $16, $29
xor $17, $17, $16
addu $16, $16, $30
TAG_JALR_123:
# ---> block tail <---
# ---> endpc 3a2c <---

# ---> block head <---
ori $6, $0, 14924
addiu $7, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jalr $0, $6
add $18, $0, $18
addu $18, $18, $7
TAG_JALR_126:
# ---> block tail <---
# ---> endpc 3a48 <---

# ---> block head <---
addiu $9, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_121
addu $31, $31, $0
addu $31, $31, $9
TAG_JAL_121:
# ---> block tail <---
# ---> endpc 3a60 <---

# ---> block head <---
addiu $11, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_123
div $12, $31
addu $31, $31, $11
TAG_JAL_123:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3a80 <---

# ---> block head <---
addiu $13, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_125
divu $14, $31
addu $31, $31, $13
TAG_JAL_125:
mfhi $31
mflo $31
# ---> block tail <---
addiu $31, $0, -17848
# ---> endpc 3aa4 <---

# ---> block head <---
ori $18, $0, 15044
addiu $19, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jalr $31, $18
mthi $31
addu $31, $31, $19
TAG_JALR_129:
mfhi $31
mflo $31
# ---> block tail <---
addiu $31, $0, 29110
# ---> endpc 3acc <---

# ---> block head <---
ori $25, $0, 15084
addiu $26, $0, 16
# ---> block body <---
mflo $20
mfhi $20
jalr $19, $25
mtlo $19
addu $19, $19, $26
TAG_JALR_132:
mfhi $19
mflo $19
# ---> block tail <---
# ---> endpc 3af0 <---

# ---> block head <---
ori $30, $0, 15120
addiu $2, $0, 16
# ---> block body <---
mflo $21
mfhi $21
jalr $21, $30
mult $22, $21
addu $21, $21, $2
TAG_JALR_135:
mfhi $21
mflo $21
# ---> block tail <---
addiu $21, $0, 4205
# ---> endpc 3b18 <---

# ---> block head <---
addiu $4, $0, 16
# ---> block body <---
mflo $31
mfhi $23
jal TAG_JAL_127
multu $23, $31
addu $31, $31, $4
TAG_JAL_127:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3b38 <---

# ---> block head <---
addiu $6, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_129
div $0, $1
addu $31, $31, $6
TAG_JAL_129:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3b58 <---

# ---> block head <---
addiu $8, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_131
divu $0, $1
addu $31, $31, $8
TAG_JAL_131:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3b78 <---

# ---> block head <---
ori $13, $0, 15256
addiu $14, $0, 16
# ---> block body <---
mflo $24
mfhi $24
jalr $24, $13
lb $15, -15236($24)
addu $24, $24, $14
TAG_JALR_138:
# ---> block tail <---
# ---> endpc 3b94 <---

# ---> block head <---
addiu $16, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_133
lbu $17, -15272($31)
addu $31, $31, $16
TAG_JAL_133:
# ---> block tail <---
# ---> endpc 3bac <---

# ---> block head <---
ori $21, $0, 15308
addiu $22, $0, 16
# ---> block body <---
mflo $25
mfhi $25
jalr $25, $21
lh $23, -15244($25)
addu $25, $25, $22
TAG_JALR_141:
# ---> block tail <---
# ---> endpc 3bc8 <---

# ---> block head <---
ori $29, $0, 15336
addiu $30, $0, 16
# ---> block body <---
mflo $26
mfhi $27
jalr $26, $29
lhu $27, -15328($26)
addu $26, $26, $30
TAG_JALR_144:
# ---> block tail <---
addiu $27, $0, -20845
# ---> endpc 3be8 <---

# ---> block head <---
addiu $27, $0, 16
# ---> block body <---
mflo $28
mfhi $28
jal TAG_JAL_135
lw $28, -15328($31)
addu $31, $31, $27
TAG_JAL_135:
# ---> block tail <---
# ---> endpc 3c00 <---

# ---> block head <---
addiu $3, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_137
lb $29, -15384($31)
addu $31, $31, $3
TAG_JAL_137:
# ---> block tail <---
# ---> endpc 3c18 <---

# ---> block head <---
ori $8, $0, 15416
addiu $9, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jalr $0, $8
lbu $31, 20($0)
addu $31, $31, $9
TAG_JALR_147:
# ---> block tail <---
# ---> endpc 3c34 <---

# ---> block head <---
addiu $11, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_139
lh $31, 48($0)
addu $31, $31, $11
TAG_JAL_139:
# ---> block tail <---
# ---> endpc 3c4c <---

# ---> block head <---
ori $16, $0, 15468
addiu $17, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jalr $31, $16
sll $18, $31, 1
addu $31, $31, $17
TAG_JALR_150:
# ---> block tail <---
# ---> endpc 3c68 <---

# ---> block head <---
addiu $19, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jal TAG_JAL_141
slti $20, $31, -11634
addu $31, $31, $19
TAG_JAL_141:
# ---> block tail <---
# ---> endpc 3c80 <---

# ---> block head <---
ori $24, $0, 15520
addiu $25, $0, 16
# ---> block body <---
mflo $31
mfhi $31
jalr $31, $24
sltiu $26, $31, 8548
addu $31, $31, $25
TAG_JALR_153:
# ---> block tail <---
# ---> endpc 3c9c <---

# ---> block head <---
addiu $27, $0, 16
# ---> block body <---
mflo $30
mfhi $30
jal TAG_JAL_143
sra $30, $31, 4
addu $31, $31, $27
TAG_JAL_143:
# ---> block tail <---
# ---> endpc 3cb4 <---

# ---> block head <---
ori $4, $0, 15572
addiu $5, $0, 16
# ---> block body <---
mflo $2
mfhi $2
jalr $2, $4
srl $1, $2, 2
addu $2, $2, $5
TAG_JALR_156:
# ---> block tail <---
# ---> endpc 3cd0 <---

# ---> block head <---
ori $9, $0, 15600
addiu $10, $0, 16
# ---> block body <---
mflo $3
mfhi $3
jalr $4, $9
xori $3, $4, 2107
addu $4, $4, $10
TAG_JALR_159:
# ---> block tail <---
# ---> endpc 3cec <---

# ---> block head <---
addiu $12, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_145
addi $31, $0, -15771
addu $31, $31, $12
TAG_JAL_145:
# ---> block tail <---
# ---> endpc 3d04 <---

# ---> block head <---
addiu $14, $0, 16
# ---> block body <---
mflo $0
mfhi $0
jal TAG_JAL_147
addiu $31, $0, -26346
addu $31, $31, $14
TAG_JAL_147:
# ---> block tail <---
# ---> endpc 3d1c <---

# ---> block head <---
lui $29, 43707
ori $29, $29, 52445
sw $29, 80($0)
lui $30, 43707
ori $30, $30, 52445
sw $30, 92($0)
# ---> block body <---
mflo $5
mfhi $5
ori $0, $0, 0
sw $28, 80($5)
sw $5, -3408($28)
# ---> block tail <---
addiu $29, $0, 27352
addiu $30, $0, -6424
# ---> endpc 3d50 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $19, 43707
ori $19, $19, 52445
sw $19, 148($0)
# ---> block body <---
mflo $6
mfhi $6
ori $0, $0, 0
sb $6, -30777($18)
sb $18, 140($6)
# ---> block tail <---
addiu $19, $0, -11153
# ---> endpc 3d7c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $30, 43707
ori $30, $30, 52445
sw $30, 124($0)
# ---> block body <---
mflo $7
mfhi $7
ori $0, $0, 0
sh $7, -3768($1)
sh $1, 142($7)
# ---> block tail <---
addiu $30, $0, 21646
# ---> endpc 3da8 <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 116($0)
# ---> block body <---
mflo $8
mfhi $8
ori $0, $0, 0
sw $9, 116($8)
sw $8, -15484($9)
# ---> block tail <---
addiu $7, $0, 2068
# ---> endpc 3dcc <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 112($0)
lui $25, 43707
ori $25, $25, 52445
sw $25, 132($0)
# ---> block body <---
mflo $10
mfhi $10
ori $0, $0, 0
sb $10, 97($11)
sb $11, 135($10)
# ---> block tail <---
addiu $24, $0, 13840
addiu $25, $0, 6014
# ---> endpc 3e00 <---

# ---> block head <---
lui $8, 43707
ori $8, $8, 52445
sw $8, 144($0)
lui $9, 43707
ori $9, $9, 52445
sw $9, 104($0)
# ---> block body <---
mflo $13
mfhi $12
ori $0, $0, 0
sh $13, 146($12)
sh $12, 104($13)
# ---> block tail <---
addiu $8, $0, -1402
addiu $9, $0, -13573
# ---> endpc 3e34 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 128($0)
lui $24, 43707
ori $24, $24, 52445
sw $24, 88($0)
# ---> block body <---
mflo $0
mfhi $0
ori $0, $0, 0
sw $0, 112($14)
sw $14, 88($0)
# ---> block tail <---
addiu $23, $0, 9029
addiu $24, $0, -18132
# ---> endpc 3e68 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $4, 43707
ori $4, $4, 52445
sw $4, 140($0)
# ---> block body <---
mflo $0
mfhi $0
ori $0, $0, 0
sb $15, 155($0)
sb $0, 81($15)
# ---> block tail <---
addiu $4, $0, -5131
# ---> endpc 3e94 <---

# ---> block head <---
# ---> block body <---
mflo $27
mfhi $27
ori $0, $0, 0
and $27, $5, $27
# ---> block tail <---
# ---> endpc 3ea4 <---

# ---> block head <---
# ---> block body <---
mflo $28
mfhi $28
ori $0, $0, 0
nor $28, $5, $28
# ---> block tail <---
# ---> endpc 3eb4 <---

# ---> block head <---
# ---> block body <---
mflo $29
mfhi $29
ori $0, $0, 0
or $29, $0, $29
# ---> block tail <---
# ---> endpc 3ec4 <---

# ---> block head <---
# ---> block body <---
mflo $30
mfhi $1
ori $0, $0, 0
sllv $30, $30, $1
# ---> block tail <---
# ---> endpc 3ed4 <---

# ---> block head <---
# ---> block body <---
mflo $2
mfhi $2
ori $0, $0, 0
slt $2, $2, $3
# ---> block tail <---
# ---> endpc 3ee4 <---

# ---> block head <---
# ---> block body <---
mflo $5
mfhi $5
ori $0, $0, 0
sltu $5, $4, $5
# ---> block tail <---
# ---> endpc 3ef4 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
ori $0, $0, 0
srav $6, $6, $0
# ---> block tail <---
# ---> endpc 3f04 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
ori $0, $0, 0
srlv $7, $7, $0
# ---> block tail <---
# ---> endpc 3f14 <---

# ---> block head <---
# ---> block body <---
mflo $8
mfhi $8
ori $0, $0, 0
mthi $8
mfhi $8
mflo $8
# ---> block tail <---
# ---> endpc 3f2c <---

# ---> block head <---
# ---> block body <---
mflo $9
mfhi $9
ori $0, $0, 0
mtlo $9
mfhi $9
mflo $9
# ---> block tail <---
# ---> endpc 3f44 <---

# ---> block head <---
# ---> block body <---
mflo $10
mfhi $10
ori $0, $0, 0
mult $10, $5
mfhi $10
mflo $10
# ---> block tail <---
# ---> endpc 3f5c <---

# ---> block head <---
# ---> block body <---
mflo $11
mfhi $11
ori $0, $0, 0
multu $11, $12
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 3f74 <---

# ---> block head <---
mthi $2
# ---> block body <---
mflo $14
mfhi $13
ori $0, $0, 0
div $14, $13
mfhi $13
mflo $13
# ---> block tail <---
# ---> endpc 3f90 <---

# ---> block head <---
mthi $2
# ---> block body <---
mflo $15
mfhi $15
ori $0, $0, 0
divu $16, $15
mfhi $15
mflo $15
# ---> block tail <---
# ---> endpc 3fac <---

ori $v0, $zero, 10
syscall
