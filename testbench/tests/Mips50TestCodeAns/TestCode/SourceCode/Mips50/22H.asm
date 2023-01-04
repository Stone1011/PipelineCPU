# ---> init memory <---
addiu $1, $0, -5116
sw $1, 0($0)
addiu $1, $0, -23392
sw $1, 4($0)
addiu $1, $0, -20438
sw $1, 8($0)
addiu $1, $0, -27716
sw $1, 12($0)
addiu $1, $0, 24726
sw $1, 16($0)
addiu $1, $0, 24753
sw $1, 20($0)
addiu $1, $0, -12795
sw $1, 24($0)
addiu $1, $0, 11679
sw $1, 28($0)
addiu $1, $0, -31091
sw $1, 32($0)
addiu $1, $0, 20571
sw $1, 36($0)
addiu $1, $0, 3173
sw $1, 40($0)
addiu $1, $0, -16409
sw $1, 44($0)
addiu $1, $0, -16594
sw $1, 48($0)
addiu $1, $0, 27572
sw $1, 52($0)
addiu $1, $0, -12024
sw $1, 56($0)
addiu $1, $0, 19226
sw $1, 60($0)
addiu $1, $0, 11756
sw $1, 64($0)
addiu $1, $0, 20022
sw $1, 68($0)
addiu $1, $0, -31947
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, -1331
mthi $1
addiu $1, $0, 31576
mtlo $1

# ---> init register <---
addiu $1, $0, -32279
addiu $2, $0, -30654
addiu $3, $0, 9185
addiu $4, $0, 16794
addiu $5, $0, 25330
addiu $6, $0, -27502
addiu $7, $0, 29000
addiu $8, $0, 11287
addiu $9, $0, 14417
addiu $10, $0, 2662
addiu $11, $0, 29541
addiu $12, $0, 15048
addiu $13, $0, -13304
addiu $14, $0, 21163
addiu $15, $0, 20484
addiu $16, $0, -7979
addiu $17, $0, 16862
addiu $18, $0, -23102
addiu $19, $0, -7159
addiu $20, $0, 15227
addiu $21, $0, -14009
addiu $22, $0, -15644
addiu $23, $0, -6136
addiu $24, $0, 25659
addiu $25, $0, -32172
addiu $26, $0, 2248
addiu $27, $0, 11457
addiu $28, $0, -12689
addiu $29, $0, 4061
addiu $30, $0, 12718
addiu $31, $0, -26700

# ---> start at 3120 <---

# ---> block head <---
# ---> block body <---
mflo $17
mfhi $18
lui $17, 9561
addiu $18, $17, 3679
# ---> block tail <---
addiu $17, $0, 29131
addiu $18, $0, 31349
# ---> endpc 3138 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
lui $0, 7675
andi $19, $0, 49570
# ---> block tail <---
# ---> endpc 3148 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
lui $0, 18075
ori $20, $0, 59514
# ---> block tail <---
addiu $20, $0, 22966
# ---> endpc 315c <---

# ---> block head <---
lui $13, 43707
ori $13, $13, 52445
sw $13, 148($0)
lui $14, 43707
ori $14, $14, 52445
sw $14, 116($0)
# ---> block body <---
mflo $21
mfhi $21
ori $21, $21, 20
sh $21, 32427($1)
sh $1, 1433($21)
# ---> block tail <---
addiu $13, $0, -11618
addiu $14, $0, 14707
# ---> endpc 3190 <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 104($0)
# ---> block body <---
mflo $22
mfhi $22
sll $22, $22, 3
sw $1, 10752($22)
sw $22, 32383($1)
# ---> block tail <---
addiu $21, $0, 2502
# ---> endpc 31b4 <---

# ---> block head <---
lui $30, 43707
ori $30, $30, 52445
sw $30, 88($0)
# ---> block body <---
mflo $23
mfhi $23
slti $23, $23, 18669
sb $1, 87($23)
sb $23, 32427($1)
# ---> block tail <---
addiu $30, $0, -170
# ---> endpc 31d8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $13, 43707
ori $13, $13, 52445
sw $13, 136($0)
# ---> block body <---
mflo $24
mfhi $25
sltiu $25, $24, 25827
sh $12, 106($25)
sh $25, -14910($12)
# ---> block tail <---
addiu $13, $0, 9042
# ---> endpc 3204 <---

# ---> block head <---
lui $29, 43707
ori $29, $29, 52445
sw $29, 92($0)
lui $30, 43707
ori $30, $30, 52445
sw $30, 128($0)
# ---> block body <---
mflo $26
mfhi $27
sra $26, $27, 1
sw $26, 12781($28)
sw $28, 794($26)
# ---> block tail <---
addiu $29, $0, 1366
addiu $30, $0, -1180
# ---> endpc 3238 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
mflo $28
mfhi $29
srl $28, $29, 1
sb $28, 88($0)
# ---> block tail <---
addiu $28, $0, 31550
# ---> endpc 3254 <---

# ---> block head <---
lui $8, 43707
ori $8, $8, 52445
sw $8, 136($0)
# ---> block body <---
mflo $0
mfhi $0
xori $0, $0, 7518
sh $30, 136($0)
sh $0, 1308($30)
# ---> block tail <---
addiu $8, $0, 31118
# ---> endpc 3278 <---

# ---> block head <---
lui $13, 43707
ori $13, $13, 52445
sw $13, 144($0)
# ---> block body <---
mflo $0
mfhi $0
addi $0, $0, 30682
sw $0, 32423($1)
sw $1, 136($0)
# ---> block tail <---
addiu $13, $0, -87
# ---> endpc 329c <---

# ---> block head <---
# ---> block body <---
mflo $13
mfhi $13
addiu $13, $13, -32604
srav $13, $13, $14
# ---> block tail <---
# ---> endpc 32ac <---

# ---> block head <---
# ---> block body <---
mflo $14
mfhi $14
andi $14, $14, 5
srlv $14, $14, $15
# ---> block tail <---
# ---> endpc 32bc <---

# ---> block head <---
# ---> block body <---
mflo $15
mfhi $15
ori $15, $15, 17
sub $15, $15, $14
# ---> block tail <---
# ---> endpc 32cc <---

# ---> block head <---
# ---> block body <---
mflo $17
mfhi $16
sll $17, $16, 1
subu $16, $17, $16
# ---> block tail <---
# ---> endpc 32dc <---

# ---> block head <---
# ---> block body <---
mflo $19
mfhi $19
slti $19, $18, 27099
xor $19, $19, $18
# ---> block tail <---
# ---> endpc 32ec <---

# ---> block head <---
# ---> block body <---
mflo $20
mfhi $21
sltiu $21, $20, -17927
add $20, $21, $20
# ---> block tail <---
# ---> endpc 32fc <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
sra $0, $22, 3
addu $22, $0, $22
# ---> block tail <---
# ---> endpc 330c <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
srl $0, $23, 3
and $23, $23, $0
# ---> block tail <---
# ---> endpc 331c <---

# ---> block head <---
# ---> block body <---
mflo $24
mfhi $24
xori $24, $24, 12132
mult $24, $14
mfhi $24
mflo $24
# ---> block tail <---
# ---> endpc 3334 <---

# ---> block head <---
# ---> block body <---
mflo $25
mfhi $25
addi $25, $25, 31762
multu $14, $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 334c <---

# ---> block head <---
# ---> block body <---
mflo $26
mfhi $26
addiu $26, $26, 32691
div $14, $26
mfhi $26
mflo $26
# ---> block tail <---
# ---> endpc 3364 <---

# ---> block head <---
# ---> block body <---
mflo $27
mfhi $27
ori $28, $27, 3269
divu $27, $28
mfhi $27
mflo $27
# ---> block tail <---
# ---> endpc 337c <---

# ---> block head <---
# ---> block body <---
mflo $30
mfhi $30
andi $30, $29, 28
mthi $30
mfhi $29
mflo $29
# ---> block tail <---
# ---> endpc 3394 <---

# ---> block head <---
# ---> block body <---
mflo $1
mfhi $2
sll $2, $1, 1
mtlo $2
mfhi $1
mflo $1
# ---> block tail <---
# ---> endpc 33ac <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
slti $0, $0, 12721
mult $3, $0
mfhi $3
mflo $3
# ---> block tail <---
# ---> endpc 33c4 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
sltiu $0, $0, 64
multu $0, $4
mfhi $4
mflo $4
# ---> block tail <---
# ---> endpc 33dc <---

# ---> block head <---
# ---> block body <---
mflo $5
mfhi $5
sra $5, $5, 1
lh $14, 60($5)
# ---> block tail <---
# ---> endpc 33ec <---

# ---> block head <---
# ---> block body <---
mflo $6
mfhi $6
srl $6, $6, 1
lhu $14, 56($6)
# ---> block tail <---
addiu $14, $0, 11478
# ---> endpc 3400 <---

# ---> block head <---
# ---> block body <---
mflo $7
mfhi $7
xori $7, $7, 14636
lw $14, -14620($7)
# ---> block tail <---
# ---> endpc 3410 <---

# ---> block head <---
# ---> block body <---
mflo $9
mfhi $9
addi $8, $9, 30457
lb $9, -30457($8)
# ---> block tail <---
# ---> endpc 3420 <---

# ---> block head <---
# ---> block body <---
mflo $10
mfhi $11
addiu $10, $11, 21851
lbu $11, -21847($10)
# ---> block tail <---
# ---> endpc 3430 <---

# ---> block head <---
# ---> block body <---
mflo $13
mfhi $13
andi $12, $13, 8768
lh $13, 68($12)
# ---> block tail <---
# ---> endpc 3440 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
ori $0, $0, 4
lhu $14, 8($0)
# ---> block tail <---
addiu $14, $0, 2722
# ---> endpc 3454 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
sll $0, $15, 1
lw $15, 72($0)
# ---> block tail <---
# ---> endpc 3464 <---

# ---> block head <---
# ---> block body <---
mflo $16
mfhi $16
sra $16, $16, 4
bltz $16, TAG_BLTZ_0
addiu $14, $0, 1
addiu $14, $0, 1
TAG_BLTZ_0:
# ---> block tail <---
# ---> endpc 347c <---

# ---> block head <---
# ---> block body <---
mflo $17
mfhi $17
slti $17, $17, 21829
bne $17, $14, TAG_BNE_0
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BNE_0:
# ---> block tail <---
# ---> endpc 3494 <---

# ---> block head <---
# ---> block body <---
mflo $18
mfhi $18
sltiu $18, $18, -28702
beq $15, $18, TAG_BEQ_0
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BEQ_0:
# ---> block tail <---
# ---> endpc 34ac <---

# ---> block head <---
# ---> block body <---
mflo $20
mfhi $20
srl $19, $20, 2
bgez $19, TAG_BGEZ_0
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BGEZ_0:
# ---> block tail <---
# ---> endpc 34c4 <---

# ---> block head <---
# ---> block body <---
mflo $22
mfhi $21
xori $21, $22, 11852
bgtz $21, TAG_BGTZ_0
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BGTZ_0:
# ---> block tail <---
# ---> endpc 34dc <---

# ---> block head <---
# ---> block body <---
mflo $24
mfhi $24
addi $23, $24, 17073
blez $23, TAG_BLEZ_0
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BLEZ_0:
# ---> block tail <---
# ---> endpc 34f4 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
addiu $0, $0, -8049
bltz $0, TAG_BLTZ_1
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BLTZ_1:
# ---> block tail <---
# ---> endpc 350c <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
andi $0, $26, 7
bne $26, $0, TAG_BNE_1
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BNE_1:
# ---> block tail <---
# ---> endpc 3524 <---

# ---> block head <---
# ---> block body <---
mflo $27
mfhi $27
ori $27, $27, 2
sll $16, $27, 3
# ---> block tail <---
# ---> endpc 3534 <---

# ---> block head <---
# ---> block body <---
mflo $28
mfhi $28
sll $28, $28, 3
slti $16, $28, 28309
# ---> block tail <---
# ---> endpc 3544 <---

# ---> block head <---
# ---> block body <---
mflo $29
mfhi $29
slti $29, $29, -25939
sltiu $16, $29, 19050
# ---> block tail <---
# ---> endpc 3554 <---

# ---> block head <---
# ---> block body <---
mflo $1
mfhi $30
sltiu $30, $1, -19758
sra $1, $30, 3
# ---> block tail <---
# ---> endpc 3564 <---

# ---> block head <---
# ---> block body <---
mflo $2
mfhi $3
sra $2, $3, 3
srl $3, $2, 3
# ---> block tail <---
# ---> endpc 3574 <---

# ---> block head <---
# ---> block body <---
mflo $4
mfhi $4
srl $4, $5, 3
xori $5, $4, 37176
# ---> block tail <---
addiu $5, $0, -28923
# ---> endpc 3588 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
xori $0, $0, 20201
addi $6, $0, -30435
# ---> block tail <---
# ---> endpc 3598 <---

# ---> block head <---
# ---> block body <---
mflo $0
mfhi $0
addi $0, $0, -10861
addiu $7, $0, 13337
# ---> block tail <---
# ---> endpc 35a8 <---

# ---> block head <---
ori $5, $0, 13780
addiu $6, $0, 16
lui $8, 43707
ori $8, $8, 52445
sw $8, 100($0)
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $31, $5
sb $7, -13675($31)
addu $31, $31, $6
TAG_JALR_5:
sb $31, -13249($7)
# ---> block tail <---
addiu $8, $0, 9123
# ---> endpc 35d8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $28, $0, 13824
addiu $29, $0, 16
# ---> block body <---
mflo $8
ori $0, $0, 0
jalr $8, $28
sh $1, -13684($8)
addu $8, $8, $29
TAG_JALR_10:
sh $8, 118($1)
# ---> block tail <---
# ---> endpc 3600 <---

# ---> block head <---
addiu $25, $0, 16
lui $26, 43707
ori $26, $26, 52445
sw $26, 140($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 124($0)
# ---> block body <---
mfhi $31
ori $0, $0, 0
jal TAG_JAL_7
sw $31, 140($1)
addu $31, $31, $25
TAG_JAL_7:
sw $1, -13748($31)
# ---> block tail <---
addiu $26, $0, 17010
addiu $27, $0, -18569
# ---> endpc 363c <---

# ---> block head <---
addiu $15, $0, 16
lui $16, 43707
ori $16, $16, 52445
sw $16, 120($0)
# ---> block body <---
mflo $9
ori $0, $0, 0
jal TAG_JAL_10
sb $31, 103($9)
addu $31, $31, $15
TAG_JAL_10:
sb $9, -13800($31)
# ---> block tail <---
addiu $16, $0, -7420
# ---> endpc 3668 <---

# ---> block head <---
ori $6, $0, 13972
addiu $7, $0, 16
lui $8, 43707
ori $8, $8, 52445
sw $8, 104($0)
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $31, $6
sh $31, -21763($10)
addu $31, $31, $7
TAG_JALR_18:
sh $10, -13864($31)
# ---> block tail <---
addiu $8, $0, 21331
# ---> endpc 3698 <---

# ---> block head <---
ori $15, $0, 14032
addiu $16, $0, 16
lui $17, 43707
ori $17, $17, 52445
sw $17, 112($0)
lui $18, 43707
ori $18, $18, 52445
sw $18, 96($0)
# ---> block body <---
mflo $11
ori $0, $0, 0
jalr $11, $15
sw $11, 112($12)
addu $11, $11, $16
TAG_JALR_27:
sw $12, -13932($11)
# ---> block tail <---
addiu $17, $0, 16343
addiu $18, $0, 149
# ---> endpc 36d8 <---

# ---> block head <---
ori $17, $0, 14096
addiu $18, $0, 16
lui $19, 43707
ori $19, $19, 52445
sw $19, 128($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 156($0)
# ---> block body <---
mfhi $0
ori $0, $0, 0
jalr $0, $17
sb $0, 130($0)
addu $13, $13, $18
TAG_JALR_36:
sb $0, 156($0)
# ---> block tail <---
addiu $19, $0, -7216
addiu $20, $0, 3066
# ---> endpc 3718 <---

# ---> block head <---
addiu $11, $0, 16
lui $12, 43707
ori $12, $12, 52445
sw $12, 120($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 96($0)
# ---> block body <---
mflo $0
ori $0, $0, 0
jal TAG_JAL_18
sh $0, -14030($31)
addu $31, $31, $11
TAG_JAL_18:
sh $31, 98($0)
# ---> block tail <---
addiu $12, $0, -29872
addiu $13, $0, -11151
# ---> endpc 3754 <---

# ---> block head <---
addiu $15, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jal TAG_JAL_20
nor $31, $16, $31
addu $31, $31, $15
TAG_JAL_20:
# ---> block tail <---
# ---> endpc 376c <---

# ---> block head <---
addiu $17, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_22
or $31, $31, $18
addu $31, $31, $17
TAG_JAL_22:
# ---> block tail <---
# ---> endpc 3784 <---

# ---> block head <---
ori $22, $0, 14244
addiu $23, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $31, $22
sllv $31, $24, $31
addu $31, $31, $23
TAG_JALR_39:
# ---> block tail <---
# ---> endpc 37a0 <---

# ---> block head <---
ori $28, $0, 14272
addiu $29, $0, 16
# ---> block body <---
mflo $15
ori $0, $0, 0
jalr $14, $28
slt $14, $14, $15
addu $14, $14, $29
TAG_JALR_42:
# ---> block tail <---
# ---> endpc 37bc <---

# ---> block head <---
addiu $3, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jal TAG_JAL_23
sltu $16, $16, $31
addu $31, $31, $3
TAG_JAL_23:
# ---> block tail <---
# ---> endpc 37d4 <---

# ---> block head <---
addiu $5, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_25
srav $31, $31, $17
addu $31, $31, $5
TAG_JAL_25:
# ---> block tail <---
# ---> endpc 37ec <---

# ---> block head <---
ori $10, $0, 14348
addiu $11, $0, 16
# ---> block body <---
mfhi $0
ori $0, $0, 0
jalr $0, $10
srlv $18, $18, $0
addu $18, $18, $11
TAG_JALR_46:
# ---> block tail <---
# ---> endpc 3808 <---

# ---> block head <---
ori $16, $0, 14376
addiu $17, $0, 16
# ---> block body <---
mflo $0
ori $0, $0, 0
jalr $0, $16
sub $19, $19, $0
addu $19, $19, $17
TAG_JALR_49:
# ---> block tail <---
# ---> endpc 3824 <---

# ---> block head <---
ori $23, $0, 14404
addiu $24, $0, 16
# ---> block body <---
mfhi $20
ori $0, $0, 0
jalr $20, $23
div $25, $20
addu $20, $20, $24
TAG_JALR_52:
mfhi $20
mflo $20
# ---> block tail <---
# ---> endpc 3848 <---

# ---> block head <---
addiu $25, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_27
divu $26, $31
addu $31, $31, $25
TAG_JAL_27:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3868 <---

# ---> block head <---
addiu $27, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jal TAG_JAL_29
mthi $31
addu $31, $31, $27
TAG_JAL_29:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3888 <---

# ---> block head <---
addiu $29, $0, 16
# ---> block body <---
mflo $21
ori $0, $0, 0
jal TAG_JAL_31
mtlo $31
addu $31, $31, $29
TAG_JAL_31:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 38a8 <---

# ---> block head <---
ori $5, $0, 14536
addiu $6, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $22, $5
mult $31, $22
addu $22, $22, $6
TAG_JALR_55:
mfhi $31
mflo $31
# ---> block tail <---
addiu $31, $0, -16959
# ---> endpc 38d0 <---

# ---> block head <---
ori $11, $0, 14576
addiu $12, $0, 16
# ---> block body <---
mflo $23
ori $0, $0, 0
jalr $24, $11
multu $23, $24
addu $24, $24, $12
TAG_JALR_58:
mfhi $23
mflo $23
# ---> block tail <---
addiu $23, $0, -28829
# ---> endpc 38f8 <---

# ---> block head <---
addiu $14, $0, 16
# ---> block body <---
mfhi $0
ori $0, $0, 0
jal TAG_JAL_33
div $0, $3
addu $31, $31, $14
TAG_JAL_33:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3918 <---

# ---> block head <---
addiu $16, $0, 16
# ---> block body <---
mflo $0
ori $0, $0, 0
jal TAG_JAL_35
divu $0, $3
addu $31, $31, $16
TAG_JAL_35:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3938 <---

# ---> block head <---
ori $21, $0, 14680
addiu $22, $0, 16
# ---> block body <---
mfhi $25
ori $0, $0, 0
jalr $25, $21
lb $23, -14616($25)
addu $25, $25, $22
TAG_JALR_61:
# ---> block tail <---
# ---> endpc 3954 <---

# ---> block head <---
addiu $24, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_37
lbu $25, -14656($31)
addu $31, $31, $24
TAG_JAL_37:
# ---> block tail <---
# ---> endpc 396c <---

# ---> block head <---
ori $29, $0, 14732
addiu $30, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $31, $29
lh $2, -14704($31)
addu $31, $31, $30
TAG_JALR_64:
# ---> block tail <---
# ---> endpc 3988 <---

# ---> block head <---
addiu $3, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_39
lhu $26, -14712($31)
addu $31, $31, $3
TAG_JAL_39:
# ---> block tail <---
# ---> endpc 39a0 <---

# ---> block head <---
ori $8, $0, 14784
addiu $9, $0, 16
# ---> block body <---
mfhi $27
ori $0, $0, 0
jalr $31, $8
lw $27, -14748($31)
addu $31, $31, $9
TAG_JALR_67:
# ---> block tail <---
# ---> endpc 39bc <---

# ---> block head <---
ori $14, $0, 14812
addiu $15, $0, 16
# ---> block body <---
mflo $29
ori $0, $0, 0
jalr $28, $14
lb $29, -14736($28)
addu $28, $28, $15
TAG_JALR_70:
# ---> block tail <---
# ---> endpc 39d8 <---

# ---> block head <---
ori $20, $0, 14840
addiu $21, $0, 16
# ---> block body <---
mfhi $0
ori $0, $0, 0
jalr $0, $20
lbu $30, 8($0)
addu $30, $30, $21
TAG_JALR_73:
# ---> block tail <---
# ---> endpc 39f4 <---

# ---> block head <---
addiu $23, $0, 16
# ---> block body <---
mflo $0
ori $0, $0, 0
jal TAG_JAL_41
lh $31, 36($0)
addu $31, $31, $23
TAG_JAL_41:
# ---> block tail <---
# ---> endpc 3a0c <---

# ---> block head <---
addiu $25, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jal TAG_JAL_43
andi $26, $31, 132
addu $31, $31, $25
TAG_JAL_43:
# ---> block tail <---
# ---> endpc 3a24 <---

# ---> block head <---
addiu $27, $0, 16
# ---> block body <---
mflo $31
ori $0, $0, 0
jal TAG_JAL_45
ori $28, $31, 15192
addu $31, $31, $27
TAG_JAL_45:
# ---> block tail <---
# ---> endpc 3a3c <---

# ---> block head <---
ori $3, $0, 14940
addiu $4, $0, 16
# ---> block body <---
mfhi $1
ori $0, $0, 0
jalr $1, $3
sll $5, $1, 2
addu $1, $1, $4
TAG_JALR_76:
# ---> block tail <---
addiu $5, $0, 16983
# ---> endpc 3a5c <---

# ---> block head <---
addiu $7, $0, 16
# ---> block body <---
mflo $2
ori $0, $0, 0
jal TAG_JAL_46
slti $2, $31, -31287
addu $31, $31, $7
TAG_JAL_46:
# ---> block tail <---
# ---> endpc 3a74 <---

# ---> block head <---
ori $12, $0, 14996
addiu $13, $0, 16
# ---> block body <---
mfhi $31
ori $0, $0, 0
jalr $3, $12
sltiu $31, $3, -16013
addu $3, $3, $13
TAG_JALR_80:
# ---> block tail <---
# ---> endpc 3a90 <---

# ---> block head <---
ori $18, $0, 15024
addiu $19, $0, 16
# ---> block body <---
mflo $4
ori $0, $0, 0
jalr $4, $18
sra $5, $4, 2
addu $4, $4, $19
TAG_JALR_83:
# ---> block tail <---
# ---> endpc 3aac <---

# ---> block head <---
addiu $21, $0, 16
# ---> block body <---
mfhi $0
ori $0, $0, 0
jal TAG_JAL_48
srl $31, $0, 3
addu $31, $31, $21
TAG_JAL_48:
# ---> block tail <---
# ---> endpc 3ac4 <---

# ---> block head <---
addiu $23, $0, 16
# ---> block body <---
mflo $0
ori $0, $0, 0
jal TAG_JAL_50
xori $31, $0, 40350
addu $31, $31, $23
TAG_JAL_50:
# ---> block tail <---
addiu $31, $0, -6709
# ---> endpc 3ae0 <---

# ---> block head <---
ori $0, $0, 0
lui $4, 43707
ori $4, $4, 52445
sw $4, 128($0)
# ---> block body <---
mflo $6
ori $0, $0, 0
mfhi $6
sw $6, -14808($1)
sw $1, 148($6)
# ---> block tail <---
addiu $4, $0, -23107
# ---> endpc 3b08 <---

# ---> block head <---
lui $14, 43707
ori $14, $14, 52445
sw $14, 132($0)
# ---> block body <---
mflo $7
ori $0, $0, 0
mfhi $7
sb $7, 91($13)
sb $13, 132($7)
# ---> block tail <---
addiu $14, $0, 19210
# ---> endpc 3b2c <---

# ---> block head <---
lui $28, 43707
ori $28, $28, 52445
sw $28, 148($0)
lui $29, 43707
ori $29, $29, 52445
sw $29, 104($0)
# ---> block body <---
mflo $8
ori $0, $0, 0
mfhi $8
sh $8, 134($27)
sh $27, 106($8)
# ---> block tail <---
addiu $28, $0, -9290
addiu $29, $0, -22683
# ---> endpc 3b60 <---

# ---> block head <---
ori $0, $0, 0
lui $11, 43707
ori $11, $11, 52445
sw $11, 120($0)
# ---> block body <---
mflo $9
ori $0, $0, 0
mfhi $9
sw $9, -14228($10)
sw $10, 92($9)
# ---> block tail <---
addiu $11, $0, 26523
# ---> endpc 3b88 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $23, 43707
ori $23, $23, 52445
sw $23, 132($0)
# ---> block body <---
mflo $12
ori $0, $0, 0
mfhi $11
sb $11, 134($12)
sb $12, 135($11)
# ---> block tail <---
addiu $23, $0, 24928
# ---> endpc 3bb4 <---

# ---> block head <---
lui $9, 43707
ori $9, $9, 52445
sw $9, 100($0)
lui $10, 43707
ori $10, $10, 52445
sw $10, 104($0)
# ---> block body <---
mflo $14
ori $0, $0, 0
mfhi $13
sh $8, 102($13)
sh $13, 104($8)
# ---> block tail <---
addiu $9, $0, -25775
addiu $10, $0, 32722
# ---> endpc 3be8 <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 92($0)
lui $25, 43707
ori $25, $25, 52445
sw $25, 84($0)
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
sw $0, 76($15)
sw $15, 84($0)
# ---> block tail <---
addiu $24, $0, -8063
addiu $25, $0, -22201
# ---> endpc 3c1c <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 112($0)
lui $8, 43707
ori $8, $8, 52445
sw $8, 148($0)
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
sb $0, 98($16)
sb $16, 150($0)
# ---> block tail <---
addiu $7, $0, -31902
addiu $8, $0, 21554
# ---> endpc 3c50 <---

# ---> block head <---
# ---> block body <---
mflo $28
ori $0, $0, 0
mfhi $28
subu $28, $28, $9
# ---> block tail <---
# ---> endpc 3c60 <---

# ---> block head <---
# ---> block body <---
mflo $29
ori $0, $0, 0
mfhi $29
xor $29, $29, $9
# ---> block tail <---
# ---> endpc 3c70 <---

# ---> block head <---
# ---> block body <---
mflo $30
ori $0, $0, 0
mfhi $30
add $30, $30, $9
# ---> block tail <---
# ---> endpc 3c80 <---

# ---> block head <---
# ---> block body <---
mflo $1
ori $0, $0, 0
mfhi $1
addu $2, $2, $1
# ---> block tail <---
# ---> endpc 3c90 <---

# ---> block head <---
# ---> block body <---
mflo $4
ori $0, $0, 0
mfhi $3
and $4, $4, $3
# ---> block tail <---
# ---> endpc 3ca0 <---

# ---> block head <---
# ---> block body <---
mflo $6
ori $0, $0, 0
mfhi $5
nor $5, $5, $6
# ---> block tail <---
# ---> endpc 3cb0 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
or $7, $0, $7
# ---> block tail <---
# ---> endpc 3cc0 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
sllv $8, $8, $0
# ---> block tail <---
# ---> endpc 3cd0 <---

# ---> block head <---
# ---> block body <---
mflo $9
ori $0, $0, 0
mfhi $9
mthi $9
mfhi $9
mflo $9
# ---> block tail <---
# ---> endpc 3ce8 <---

# ---> block head <---
# ---> block body <---
mflo $10
ori $0, $0, 0
mfhi $10
mtlo $10
mfhi $10
mflo $10
# ---> block tail <---
# ---> endpc 3d00 <---

# ---> block head <---
# ---> block body <---
mflo $11
ori $0, $0, 0
mfhi $11
mult $9, $11
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 3d18 <---

# ---> block head <---
# ---> block body <---
mflo $12
ori $0, $0, 0
mfhi $13
multu $12, $13
mfhi $12
mflo $12
# ---> block tail <---
# ---> endpc 3d30 <---

# ---> block head <---
mthi $5
# ---> block body <---
mflo $15
ori $0, $0, 0
mfhi $15
div $14, $15
mfhi $14
mflo $14
# ---> block tail <---
# ---> endpc 3d4c <---

# ---> block head <---
mthi $5
# ---> block body <---
mflo $17
ori $0, $0, 0
mfhi $16
divu $17, $16
mfhi $16
mflo $16
# ---> block tail <---
# ---> endpc 3d68 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
mthi $0
mfhi $18
mflo $18
# ---> block tail <---
# ---> endpc 3d80 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
mtlo $0
mfhi $19
mflo $19
# ---> block tail <---
# ---> endpc 3d98 <---

# ---> block head <---
# ---> block body <---
mflo $20
ori $0, $0, 0
mfhi $20
lhu $9, 64($20)
# ---> block tail <---
# ---> endpc 3da8 <---

# ---> block head <---
# ---> block body <---
mflo $21
ori $0, $0, 0
mfhi $21
lw $9, 56($21)
# ---> block tail <---
# ---> endpc 3db8 <---

# ---> block head <---
# ---> block body <---
mflo $22
ori $0, $0, 0
mfhi $22
lb $9, 24($22)
# ---> block tail <---
# ---> endpc 3dc8 <---

# ---> block head <---
# ---> block body <---
mflo $23
ori $0, $0, 0
mfhi $23
lbu $24, 76($23)
# ---> block tail <---
# ---> endpc 3dd8 <---

# ---> block head <---
# ---> block body <---
mflo $25
ori $0, $0, 0
mfhi $25
lh $26, 56($25)
# ---> block tail <---
# ---> endpc 3de8 <---

# ---> block head <---
# ---> block body <---
mflo $28
ori $0, $0, 0
mfhi $27
lhu $28, 48($27)
# ---> block tail <---
addiu $28, $0, 9835
# ---> endpc 3dfc <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
lw $29, 4($0)
# ---> block tail <---
# ---> endpc 3e0c <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
lb $30, 0($0)
# ---> block tail <---
# ---> endpc 3e1c <---

# ---> block head <---
# ---> block body <---
mflo $1
ori $0, $0, 0
mfhi $1
beq $1, $9, TAG_BEQ_1
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BEQ_1:
# ---> block tail <---
# ---> endpc 3e34 <---

# ---> block head <---
mthi $5
# ---> block body <---
mflo $2
ori $0, $0, 0
mfhi $2
bgez $2, TAG_BGEZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
# ---> endpc 3e50 <---

# ---> block head <---
# ---> block body <---
mflo $3
ori $0, $0, 0
mfhi $3
bgtz $3, TAG_BGTZ_1
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
# ---> endpc 3e68 <---

# ---> block head <---
# ---> block body <---
mflo $5
ori $0, $0, 0
mfhi $4
blez $4, TAG_BLEZ_1
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BLEZ_1:
# ---> block tail <---
# ---> endpc 3e80 <---

# ---> block head <---
# ---> block body <---
mflo $6
ori $0, $0, 0
mfhi $6
bltz $6, TAG_BLTZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BLTZ_2:
# ---> block tail <---
# ---> endpc 3e98 <---

# ---> block head <---
# ---> block body <---
mflo $8
ori $0, $0, 0
mfhi $9
bne $0, $8, TAG_BNE_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BNE_2:
# ---> block tail <---
# ---> endpc 3eb0 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
beq $0, $10, TAG_BEQ_2
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BEQ_2:
# ---> block tail <---
# ---> endpc 3ec8 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
bgez $0, TAG_BGEZ_3
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGEZ_3:
# ---> block tail <---
# ---> endpc 3ee0 <---

# ---> block head <---
# ---> block body <---
mflo $12
ori $0, $0, 0
mfhi $12
addi $10, $12, -21009
# ---> block tail <---
# ---> endpc 3ef0 <---

# ---> block head <---
# ---> block body <---
mflo $13
ori $0, $0, 0
mfhi $13
addiu $10, $13, 30934
# ---> block tail <---
# ---> endpc 3f00 <---

# ---> block head <---
# ---> block body <---
mflo $14
ori $0, $0, 0
mfhi $14
andi $10, $14, 41788
# ---> block tail <---
addiu $10, $0, 14378
# ---> endpc 3f14 <---

# ---> block head <---
# ---> block body <---
mflo $16
ori $0, $0, 0
mfhi $15
ori $15, $16, 9623
# ---> block tail <---
# ---> endpc 3f24 <---

# ---> block head <---
# ---> block body <---
mflo $17
ori $0, $0, 0
mfhi $18
sll $17, $18, 3
# ---> block tail <---
# ---> endpc 3f34 <---

# ---> block head <---
# ---> block body <---
mflo $20
ori $0, $0, 0
mfhi $20
slti $20, $19, 3861
# ---> block tail <---
# ---> endpc 3f44 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
sltiu $21, $0, -13552
# ---> block tail <---
# ---> endpc 3f54 <---

# ---> block head <---
# ---> block body <---
mflo $0
ori $0, $0, 0
mfhi $0
sra $22, $0, 2
# ---> block tail <---
# ---> endpc 3f64 <---

# ---> block head <---
ori $0, $0, 0
lui $20, 43707
ori $20, $20, 52445
sw $20, 112($0)
# ---> block body <---
mfhi $23
ori $0, $0, 0
ori $0, $0, 0
sh $23, 114($19)
sh $19, 115($23)
# ---> block tail <---
addiu $20, $0, 27434
# ---> endpc 3f8c <---

# ---> block head <---
ori $0, $0, 0
lui $3, 43707
ori $3, $3, 52445
sw $3, 112($0)
# ---> block body <---
mflo $24
ori $0, $0, 0
ori $0, $0, 0
sw $24, 88($1)
sw $1, 112($24)
# ---> block tail <---
addiu $3, $0, -30976
# ---> endpc 3fb4 <---

ori $v0, $zero, 10
syscall
