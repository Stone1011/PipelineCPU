# ---> init memory <---
addiu $1, $0, -32279
sw $1, 0($0)
addiu $1, $0, -2823
sw $1, 4($0)
addiu $1, $0, -9406
sw $1, 8($0)
addiu $1, $0, -20015
sw $1, 12($0)
addiu $1, $0, -31677
sw $1, 16($0)
addiu $1, $0, -28561
sw $1, 20($0)
addiu $1, $0, -18825
sw $1, 24($0)
addiu $1, $0, -6485
sw $1, 28($0)
addiu $1, $0, 11721
sw $1, 32($0)
addiu $1, $0, -550
sw $1, 36($0)
addiu $1, $0, 1724
sw $1, 40($0)
addiu $1, $0, 1082
sw $1, 44($0)
addiu $1, $0, -1259
sw $1, 48($0)
addiu $1, $0, 25119
sw $1, 52($0)
addiu $1, $0, -3105
sw $1, 56($0)
addiu $1, $0, 13802
sw $1, 60($0)
addiu $1, $0, -23142
sw $1, 64($0)
addiu $1, $0, -622
sw $1, 68($0)
addiu $1, $0, 16322
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, 1529
mthi $1
addiu $1, $0, -30207
mtlo $1

# ---> init register <---
addiu $1, $0, 14305
addiu $2, $0, -18758
addiu $3, $0, 24215
addiu $4, $0, -3370
addiu $5, $0, -23363
addiu $6, $0, 18336
addiu $7, $0, -21842
addiu $8, $0, 8800
addiu $9, $0, 12228
addiu $10, $0, -18273
addiu $11, $0, 536
addiu $12, $0, 23442
addiu $13, $0, -23138
addiu $14, $0, 29260
addiu $15, $0, -3919
addiu $16, $0, -19255
addiu $17, $0, -11795
addiu $18, $0, -11885
addiu $19, $0, 25959
addiu $20, $0, 10808
addiu $21, $0, 29272
addiu $22, $0, -370
addiu $23, $0, -25150
addiu $24, $0, -28868
addiu $25, $0, -3939
addiu $26, $0, -27828
addiu $27, $0, 5695
addiu $28, $0, -22555
addiu $29, $0, -23366
addiu $30, $0, -10925
addiu $31, $0, 16333

# ---> start at 3120 <---

# ---> block head <---
lui $15, 43707
ori $15, $15, 52445
sw $15, 144($0)
# ---> block body <---
mfhi $6
lw $6, -1457($6)
lhu $6, -16302($6)
sh $6, -14159($1)
# ---> block tail <---
addiu $6, $0, -28991
addiu $15, $0, -7865
# ---> endpc 3144 <---

# ---> block head <---
lui $30, 43707
ori $30, $30, 52445
sw $30, 152($0)
lui $2, 43707
ori $2, $2, 52445
sw $2, 88($0)
# ---> block body <---
mflo $7
lbu $7, 30282($7)
lb $7, 56($7)
sw $7, -14153($1)
sw $1, 121($7)
# ---> block tail <---
addiu $2, $0, -30659
addiu $30, $0, -20309
# ---> endpc 3178 <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 80($0)
lui $22, 43707
ori $22, $22, 52445
sw $22, 144($0)
# ---> block body <---
mfhi $8
lhu $9, -1455($8)
lh $8, 60($9)
sb $8, 82($0)
sb $0, -13656($8)
# ---> block tail <---
addiu $21, $0, 10026
addiu $22, $0, -23020
# ---> endpc 31ac <---

# ---> block head <---
lui $28, 43707
ori $28, $28, 52445
sw $28, 88($0)
# ---> block body <---
mflo $10
lb $11, 30282($10)
lw $10, 72($11)
sh $27, -16168($10)
sh $10, -5607($27)
# ---> block tail <---
addiu $28, $0, -9409
# ---> endpc 31d0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $17, 43707
ori $17, $17, 52445
sw $17, 84($0)
# ---> block body <---
mfhi $12
lh $13, -1455($12)
lbu $12, 75($13)
sw $12, 84($13)
sw $13, 88($12)
# ---> block tail <---
addiu $17, $0, -21908
# ---> endpc 3200 <---

# ---> block head <---
lui $28, 43707
ori $28, $28, 52445
sw $28, 96($0)
lui $29, 43707
ori $29, $29, 52445
sw $29, 140($0)
# ---> block body <---
mflo $0
lw $0, 52($0)
lhu $0, 12($0)
sb $14, 97($0)
sb $0, -29119($14)
# ---> block tail <---
addiu $28, $0, -32428
addiu $29, $0, 27476
# ---> endpc 3234 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $10, 43707
ori $10, $10, 52445
sw $10, 112($0)
# ---> block body <---
mfhi $0
lbu $0, 44($0)
lb $0, 48($0)
sh $0, 7963($15)
sh $15, 114($0)
# ---> block tail <---
addiu $10, $0, 31965
# ---> endpc 3260 <---

# ---> block head <---
# ---> block body <---
mflo $27
lhu $27, 30281($27)
lh $27, 52($27)
or $27, $27, $11
# ---> block tail <---
# ---> endpc 3270 <---

# ---> block head <---
# ---> block body <---
mfhi $28
lb $28, -1454($28)
lw $28, 64($28)
sllv $28, $28, $11
# ---> block tail <---
# ---> endpc 3280 <---

# ---> block head <---
# ---> block body <---
mflo $29
lh $29, 30281($29)
lbu $29, 12($29)
slt $29, $29, $11
# ---> block tail <---
# ---> endpc 3290 <---

# ---> block head <---
# ---> block body <---
mfhi $30
lw $1, -1457($30)
lhu $30, -16258($1)
sltu $1, $30, $1
# ---> block tail <---
addiu $30, $0, -11151
# ---> endpc 32a4 <---

# ---> block head <---
# ---> block body <---
mflo $2
lbu $3, 30282($2)
lb $2, 20($3)
srav $2, $2, $3
# ---> block tail <---
# ---> endpc 32b4 <---

# ---> block head <---
# ---> block body <---
mfhi $5
lhu $4, -1455($5)
lh $5, 44($4)
srlv $5, $5, $4
# ---> block tail <---
# ---> endpc 32c4 <---

# ---> block head <---
# ---> block body <---
mflo $0
lb $0, 36($0)
lw $0, 56($0)
sub $6, $6, $0
# ---> block tail <---
# ---> endpc 32d4 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lh $0, 32($0)
lbu $0, 28($0)
subu $7, $0, $7
# ---> block tail <---
# ---> endpc 32e4 <---

# ---> block head <---
# ---> block body <---
mflo $8
lw $8, 30279($8)
lhu $8, -16250($8)
div $11, $8
mfhi $8
mflo $8
# ---> block tail <---
# ---> endpc 32fc <---

# ---> block head <---
# ---> block body <---
mfhi $9
lbu $9, 75($9)
lb $9, 73($9)
divu $11, $9
mfhi $9
mflo $9
# ---> block tail <---
# ---> endpc 3314 <---

# ---> block head <---
# ---> block body <---
mflo $10
lhu $10, 74($10)
lh $10, 28($10)
mthi $10
mfhi $10
mflo $10
# ---> block tail <---
# ---> endpc 332c <---

# ---> block head <---
# ---> block body <---
mfhi $12
lb $11, 6560($12)
lw $12, 44($11)
mtlo $12
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 3344 <---

# ---> block head <---
# ---> block body <---
mflo $14
lh $13, -1008($14)
lbu $14, 24($13)
mult $13, $14
mfhi $13
mflo $13
# ---> block tail <---
# ---> endpc 335c <---

# ---> block head <---
# ---> block body <---
mfhi $15
lw $16, 72($15)
lhu $15, -16298($16)
multu $16, $15
mfhi $15
mflo $15
# ---> block tail <---
addiu $15, $0, 17377
# ---> endpc 3378 <---

# ---> block head <---
# ---> block body <---
mflo $0
lbu $0, 20($0)
lb $0, 40($0)
div $0, $2
mfhi $17
mflo $17
# ---> block tail <---
# ---> endpc 3390 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lhu $0, 24($0)
lh $0, 40($0)
divu $0, $2
mfhi $18
mflo $18
# ---> block tail <---
# ---> endpc 33a8 <---

# ---> block head <---
# ---> block body <---
mflo $19
lb $19, 75($19)
lw $19, 72($19)
lhu $11, -16254($19)
# ---> block tail <---
addiu $11, $0, -26
# ---> endpc 33bc <---

# ---> block head <---
# ---> block body <---
mfhi $20
lh $20, 74($20)
lbu $20, 75($20)
lw $11, 20($20)
# ---> block tail <---
# ---> endpc 33cc <---

# ---> block head <---
# ---> block body <---
mflo $21
lw $21, 72($21)
lhu $21, -16248($21)
lb $11, 64($21)
# ---> block tail <---
# ---> endpc 33dc <---

# ---> block head <---
# ---> block body <---
mfhi $22
lbu $23, 75($22)
lb $22, 75($23)
lbu $23, 40($22)
# ---> block tail <---
# ---> endpc 33ec <---

# ---> block head <---
# ---> block body <---
mflo $24
lhu $25, 74($24)
lh $24, 74($25)
lh $25, 24($24)
# ---> block tail <---
# ---> endpc 33fc <---

# ---> block head <---
# ---> block body <---
mfhi $26
lb $27, 75($26)
lw $26, 72($27)
lhu $27, -16258($26)
# ---> block tail <---
addiu $27, $0, -2814
# ---> endpc 3410 <---

# ---> block head <---
# ---> block body <---
mflo $0
lh $0, 12($0)
lbu $0, 72($0)
lw $28, 12($0)
# ---> block tail <---
# ---> endpc 3420 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lw $0, 40($0)
lhu $0, 40($0)
lb $29, 32($0)
# ---> block tail <---
# ---> endpc 3430 <---

# ---> block head <---
addiu $14, $0, 21
# ---> block body <---
mflo $30
lbu $30, 75($30)
lb $30, 48($30)
beq $30, $14, TAG_BEQ_1
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BEQ_1:
# ---> block tail <---
# ---> endpc 344c <---

# ---> block head <---
# ---> block body <---
mfhi $1
lhu $1, 74($1)
lh $1, 70($1)
bgez $1, TAG_BGEZ_0
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BGEZ_0:
# ---> block tail <---
# ---> endpc 3464 <---

# ---> block head <---
# ---> block body <---
mflo $2
lb $2, 75($2)
lw $2, 68($2)
bgtz $2, TAG_BGTZ_0
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BGTZ_0:
# ---> block tail <---
# ---> endpc 347c <---

# ---> block head <---
# ---> block body <---
mfhi $3
lbu $4, 75($3)
lh $3, 70($4)
blez $3, TAG_BLEZ_0
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BLEZ_0:
# ---> block tail <---
# ---> endpc 3494 <---

# ---> block head <---
# ---> block body <---
mflo $5
lhu $6, 74($5)
lw $5, 68($6)
bltz $5, TAG_BLTZ_0
addiu $15, $0, 1
addiu $15, $0, 1
TAG_BLTZ_0:
# ---> block tail <---
# ---> endpc 34ac <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
mfhi $7
lbu $8, 75($7)
lb $7, 28($8)
bne $7, $7, TAG_BNE_1
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BNE_1:
# ---> block tail <---
# ---> endpc 34c8 <---

# ---> block head <---
# ---> block body <---
mflo $0
lhu $0, 36($0)
lh $0, 40($0)
beq $0, $9, TAG_BEQ_2
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BEQ_2:
# ---> block tail <---
# ---> endpc 34e0 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lb $0, 48($0)
lw $0, 4($0)
bgez $0, TAG_BGEZ_1
addiu $16, $0, 1
addiu $16, $0, 1
TAG_BGEZ_1:
# ---> block tail <---
# ---> endpc 34f8 <---

# ---> block head <---
# ---> block body <---
mflo $11
lh $11, 74($11)
lbu $11, 24($11)
sltiu $16, $11, -4650
# ---> block tail <---
# ---> endpc 3508 <---

# ---> block head <---
# ---> block body <---
mfhi $12
lw $12, 72($12)
lhu $12, -16298($12)
sra $16, $12, 4
# ---> block tail <---
addiu $12, $0, 10933
# ---> endpc 351c <---

# ---> block head <---
# ---> block body <---
mflo $13
lbu $13, 75($13)
lb $13, 72($13)
srl $16, $13, 1
# ---> block tail <---
addiu $16, $0, -23774
# ---> endpc 3530 <---

# ---> block head <---
# ---> block body <---
mfhi $15
lhu $14, 74($15)
lh $15, 72($14)
xori $14, $15, 24712
# ---> block tail <---
# ---> endpc 3540 <---

# ---> block head <---
# ---> block body <---
mflo $16
lb $17, 75($16)
lw $16, 68($17)
addi $17, $16, 16676
# ---> block tail <---
# ---> endpc 3550 <---

# ---> block head <---
# ---> block body <---
mfhi $19
lh $18, 74($19)
lbu $19, 12($18)
addiu $18, $19, -28286
# ---> block tail <---
# ---> endpc 3560 <---

# ---> block head <---
# ---> block body <---
mflo $0
lw $0, 64($0)
lhu $0, 20($0)
andi $20, $0, 19479
# ---> block tail <---
# ---> endpc 3570 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lbu $0, 8($0)
lb $0, 60($0)
ori $21, $0, 43339
# ---> block tail <---
addiu $21, $0, 23390
# ---> endpc 3584 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 124($0)
# ---> block body <---
mflo $22
lh $22, 8($22)
lui $22, 34181
sw $22, 125($1)
# ---> block tail <---
addiu $19, $0, -2373
addiu $22, $0, 30664
# ---> endpc 35a8 <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 100($0)
# ---> block body <---
mfhi $23
lhu $23, 48($23)
lui $23, 35498
sb $23, 104($1)
# ---> block tail <---
addiu $23, $0, -5097
addiu $24, $0, -26976
# ---> endpc 35cc <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
mflo $24
lw $24, 24($24)
lui $24, 22807
sh $24, 113($1)
# ---> block tail <---
addiu $24, $0, 28392
# ---> endpc 35e8 <---

# ---> block head <---
lui $8, 43707
ori $8, $8, 52445
sw $8, 96($0)
# ---> block body <---
mfhi $26
lb $25, 52($26)
lui $25, 3703
sw $7, 100($26)
sw $26, 181($7)
# ---> block tail <---
addiu $8, $0, 19051
addiu $25, $0, -31854
# ---> endpc 3610 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 112($0)
# ---> block body <---
mflo $27
lbu $28, 32($27)
lui $28, 54785
sb $28, 737($16)
# ---> block tail <---
addiu $17, $0, -3984
addiu $28, $0, 233
# ---> endpc 3634 <---

# ---> block head <---
# ---> block body <---
mfhi $29
lh $30, 44($29)
lui $30, 51715
sh $30, 28177($18)
# ---> block tail <---
addiu $30, $0, -22791
# ---> endpc 3648 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
mflo $0
lhu $0, 68($0)
lui $0, 649
sw $1, 112($0)
sw $0, 113($1)
# ---> block tail <---
# ---> endpc 3660 <---

# ---> block head <---
lui $5, 43707
ori $5, $5, 52445
sw $5, 140($0)
lui $6, 43707
ori $6, $6, 52445
sw $6, 112($0)
# ---> block body <---
mfhi $0
lw $0, 68($0)
lui $0, 54333
sb $0, 140($0)
sb $0, 112($0)
# ---> block tail <---
addiu $5, $0, -21918
addiu $6, $0, -18572
# ---> endpc 3694 <---

# ---> block head <---
# ---> block body <---
mflo $3
lb $3, 68($3)
lui $3, 19702
xor $3, $3, $2
# ---> block tail <---
addiu $3, $0, 12698
# ---> endpc 36a8 <---

# ---> block head <---
# ---> block body <---
mfhi $4
lbu $4, 72($4)
lui $4, 42513
add $4, $4, $2
# ---> block tail <---
addiu $4, $0, 29697
# ---> endpc 36bc <---

# ---> block head <---
# ---> block body <---
mflo $5
lh $5, 28($5)
lui $5, 7652
addu $5, $2, $5
# ---> block tail <---
addiu $5, $0, -22111
# ---> endpc 36d0 <---

# ---> block head <---
# ---> block body <---
mfhi $7
lhu $6, 52($7)
lui $6, 3466
and $7, $6, $7
# ---> block tail <---
addiu $6, $0, -12849
# ---> endpc 36e4 <---

# ---> block head <---
# ---> block body <---
mflo $8
lw $9, 28($8)
lui $9, 26383
nor $8, $9, $8
# ---> block tail <---
addiu $8, $0, 15373
addiu $9, $0, 11551
# ---> endpc 36fc <---

# ---> block head <---
# ---> block body <---
mfhi $10
lb $11, 44($10)
lui $11, 60251
or $10, $10, $11
# ---> block tail <---
addiu $10, $0, 26426
addiu $11, $0, 29908
# ---> endpc 3714 <---

# ---> block head <---
# ---> block body <---
mflo $0
lbu $0, 56($0)
lui $0, 2618
sllv $12, $0, $12
# ---> block tail <---
# ---> endpc 3724 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lh $0, 28($0)
lui $0, 7577
slt $13, $13, $0
# ---> block tail <---
# ---> endpc 3734 <---

# ---> block head <---
# ---> block body <---
mflo $14
lhu $14, 44($14)
lui $14, 47355
mthi $14
mfhi $14
mflo $14
# ---> block tail <---
# ---> endpc 374c <---

# ---> block head <---
mthi $1
# ---> block body <---
mfhi $15
lw $15, 57($15)
lui $15, 12219
mtlo $15
mfhi $15
mflo $15
# ---> block tail <---
addiu $15, $0, -15689
# ---> endpc 376c <---

# ---> block head <---
mtlo $1
# ---> block body <---
mflo $16
lb $16, 57($16)
lui $16, 56285
mult $2, $16
mfhi $16
mflo $16
# ---> block tail <---
addiu $16, $0, 11180
# ---> endpc 378c <---

# ---> block head <---
# ---> block body <---
mfhi $18
lbu $17, -15($18)
lui $17, 39786
multu $18, $17
mfhi $17
mflo $17
# ---> block tail <---
addiu $17, $0, 1618
# ---> endpc 37a8 <---

# ---> block head <---
mtlo $1
# ---> block body <---
mflo $20
lh $19, 13($20)
lui $19, 45984
div $20, $19
mfhi $19
mflo $19
# ---> block tail <---
# ---> endpc 37c4 <---

# ---> block head <---
# ---> block body <---
mfhi $21
lhu $22, 77($21)
lui $22, 8993
divu $21, $22
mfhi $21
mflo $21
# ---> block tail <---
addiu $22, $0, 29061
# ---> endpc 37e0 <---

# ---> block head <---
# ---> block body <---
mflo $0
lw $0, 16($0)
lui $0, 55349
mthi $0
mfhi $23
mflo $23
# ---> block tail <---
# ---> endpc 37f8 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lb $0, 20($0)
lui $0, 23423
mtlo $0
mfhi $24
mflo $24
# ---> block tail <---
# ---> endpc 3810 <---

# ---> block head <---
# ---> block body <---
mflo $25
lbu $25, 48($25)
lui $25, 47774
bgtz $25, TAG_BGTZ_1
addiu $2, $0, 1
addiu $2, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
addiu $25, $0, -4952
# ---> endpc 382c <---

# ---> block head <---
# ---> block body <---
mfhi $26
lh $26, 52($26)
lui $26, 53089
blez $26, TAG_BLEZ_1
addiu $2, $0, 1
addiu $2, $0, 1
TAG_BLEZ_1:
# ---> block tail <---
addiu $26, $0, 16050
# ---> endpc 3848 <---

# ---> block head <---
# ---> block body <---
mflo $27
lhu $27, 76($27)
lui $27, 49861
bltz $27, TAG_BLTZ_1
addiu $2, $0, 1
addiu $2, $0, 1
TAG_BLTZ_1:
# ---> block tail <---
addiu $27, $0, 30710
# ---> endpc 3864 <---

# ---> block head <---
addiu $7, $0, 0
# ---> block body <---
mfhi $28
lw $29, 16($28)
lui $29, 20546
bne $7, $28, TAG_BNE_3
addiu $8, $0, 1
addiu $8, $0, 1
TAG_BNE_3:
# ---> block tail <---
addiu $29, $0, 15352
# ---> endpc 3884 <---

# ---> block head <---
addiu $9, $0, 0
# ---> block body <---
mflo $30
lb $1, 56($30)
lui $1, 3835
beq $30, $9, TAG_BEQ_4
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BEQ_4:
# ---> block tail <---
addiu $1, $0, 572
# ---> endpc 38a4 <---

# ---> block head <---
# ---> block body <---
mfhi $3
lbu $2, 68($3)
lui $2, 56367
bgez $2, TAG_BGEZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
addiu $2, $0, -32261
# ---> endpc 38c0 <---

# ---> block head <---
# ---> block body <---
mflo $0
lh $0, 24($0)
lui $0, 55981
bgtz $0, TAG_BGTZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BGTZ_2:
# ---> block tail <---
# ---> endpc 38d8 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lhu $0, 8($0)
lui $0, 63363
blez $0, TAG_BLEZ_2
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BLEZ_2:
# ---> block tail <---
# ---> endpc 38f0 <---

# ---> block head <---
# ---> block body <---
mflo $6
lw $6, 8($6)
lui $6, 5684
sll $10, $6, 3
# ---> block tail <---
addiu $6, $0, 7263
addiu $10, $0, 14221
# ---> endpc 3908 <---

# ---> block head <---
# ---> block body <---
mfhi $7
lb $7, 76($7)
lui $7, 12215
slti $10, $7, 23039
# ---> block tail <---
addiu $7, $0, 28332
# ---> endpc 391c <---

# ---> block head <---
# ---> block body <---
mflo $8
lbu $8, 8($8)
lui $8, 45459
sltiu $10, $8, 14684
# ---> block tail <---
addiu $8, $0, 32258
# ---> endpc 3930 <---

# ---> block head <---
# ---> block body <---
mfhi $9
lh $10, 12($9)
lui $10, 13489
sra $9, $10, 4
# ---> block tail <---
addiu $9, $0, 22928
addiu $10, $0, 4568
# ---> endpc 3948 <---

# ---> block head <---
# ---> block body <---
mflo $12
lhu $11, 40($12)
lui $11, 15233
srl $12, $11, 2
# ---> block tail <---
addiu $11, $0, 2501
addiu $12, $0, 10625
# ---> endpc 3960 <---

# ---> block head <---
# ---> block body <---
mfhi $13
lw $14, 76($13)
lui $14, 20743
xori $13, $14, 30583
# ---> block tail <---
addiu $13, $0, -26337
addiu $14, $0, -17490
# ---> endpc 3978 <---

# ---> block head <---
# ---> block body <---
mflo $0
lb $0, 20($0)
lui $0, 53886
addi $15, $0, -15378
# ---> block tail <---
# ---> endpc 3988 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lbu $0, 36($0)
lui $0, 31002
addiu $16, $0, 1208
# ---> block tail <---
# ---> endpc 3998 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 132($0)
lui $28, 43707
ori $28, $28, 52445
sw $28, 124($0)
# ---> block body <---
mflo $17
lh $17, 12($17)
sra $17, $17, 1
sh $26, 10140($17)
sh $17, -15926($26)
# ---> block tail <---
addiu $27, $0, -19619
addiu $28, $0, 586
# ---> endpc 39cc <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $12, 43707
ori $12, $12, 52445
sw $12, 144($0)
# ---> block body <---
mfhi $18
lhu $18, 56($18)
srl $18, $18, 1
sw $0, -31091($18)
sw $18, 144($0)
# ---> block tail <---
addiu $12, $0, 6054
# ---> endpc 39f8 <---

# ---> block head <---
lui $30, 43707
ori $30, $30, 52445
sw $30, 96($0)
lui $2, 43707
ori $2, $2, 52445
sw $2, 92($0)
# ---> block body <---
mflo $19
lw $19, 72($19)
xori $19, $19, 13390
sb $29, -2860($19)
sb $19, -15259($29)
# ---> block tail <---
addiu $2, $0, 21033
addiu $30, $0, 13474
# ---> endpc 3a2c <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 136($0)
# ---> block body <---
mfhi $20
lb $21, 75($20)
addi $20, $21, 27640
sh $20, 134($21)
sh $21, -27502($20)
# ---> block tail <---
addiu $7, $0, 6479
# ---> endpc 3a50 <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 100($0)
lui $24, 43707
ori $24, $24, 52445
sw $24, 108($0)
# ---> block body <---
mflo $22
lbu $23, 75($22)
addiu $22, $23, 22384
sw $23, -22284($22)
sw $22, 108($23)
# ---> block tail <---
addiu $21, $0, -2711
addiu $24, $0, 23857
# ---> endpc 3a84 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $7, 43707
ori $7, $7, 52445
sw $7, 132($0)
# ---> block body <---
mfhi $24
lh $25, 74($24)
andi $24, $25, 10016
sb $24, 98($25)
sb $25, 135($24)
# ---> block tail <---
addiu $7, $0, 28230
# ---> endpc 3ab0 <---

# ---> block head <---
lui $19, 43707
ori $19, $19, 52445
sw $19, 100($0)
lui $20, 43707
ori $20, $20, 52445
sw $20, 80($0)
# ---> block body <---
mflo $0
lhu $0, 68($0)
ori $0, $0, 16
sh $0, -15950($26)
sh $26, 80($0)
# ---> block tail <---
addiu $19, $0, -7293
addiu $20, $0, -13049
# ---> endpc 3ae4 <---

# ---> block head <---
ori $0, $0, 0
lui $30, 43707
ori $30, $30, 52445
sw $30, 96($0)
# ---> block body <---
mfhi $0
lw $0, 36($0)
sll $0, $27, 2
sw $0, 96($0)
sw $0, 92($0)
# ---> block tail <---
addiu $30, $0, -32306
# ---> endpc 3b0c <---

# ---> block head <---
# ---> block body <---
mflo $9
lb $9, 8($9)
slti $9, $9, 2926
sltu $9, $9, $27
# ---> block tail <---
# ---> endpc 3b1c <---

# ---> block head <---
# ---> block body <---
mfhi $10
lbu $10, 4($10)
sltiu $10, $10, 32388
srav $10, $10, $27
# ---> block tail <---
# ---> endpc 3b2c <---

# ---> block head <---
# ---> block body <---
mflo $11
lh $11, 24($11)
sra $11, $11, 3
srlv $11, $27, $11
# ---> block tail <---
addiu $11, $0, -24196
# ---> endpc 3b40 <---

# ---> block head <---
# ---> block body <---
mfhi $12
lhu $13, 48($12)
srl $13, $12, 2
sub $13, $12, $13
# ---> block tail <---
# ---> endpc 3b50 <---

# ---> block head <---
# ---> block body <---
mflo $15
lw $14, 28($15)
xori $15, $14, 2525
subu $15, $14, $15
# ---> block tail <---
# ---> endpc 3b60 <---

# ---> block head <---
# ---> block body <---
mfhi $17
lb $16, 60($17)
addi $17, $16, 6168
xor $16, $17, $16
# ---> block tail <---
# ---> endpc 3b70 <---

# ---> block head <---
# ---> block body <---
mflo $0
lbu $0, 68($0)
addiu $0, $0, -30023
add $18, $0, $18
# ---> block tail <---
# ---> endpc 3b80 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lh $0, 4($0)
andi $0, $19, 25
addu $19, $19, $0
# ---> block tail <---
# ---> endpc 3b90 <---

# ---> block head <---
# ---> block body <---
mflo $20
lhu $20, 12($20)
ori $20, $20, 2
mult $27, $20
mfhi $20
mflo $20
# ---> block tail <---
addiu $20, $0, 18799
# ---> endpc 3bac <---

# ---> block head <---
# ---> block body <---
mfhi $21
lw $21, 57($21)
sll $21, $21, 2
multu $27, $21
mfhi $21
mflo $21
# ---> block tail <---
addiu $21, $0, 21733
# ---> endpc 3bc8 <---

# ---> block head <---
mtlo $1
# ---> block body <---
mflo $22
lb $22, -499($22)
sra $22, $22, 5
div $27, $22
mfhi $22
mflo $22
# ---> block tail <---
# ---> endpc 3be4 <---

# ---> block head <---
# ---> block body <---
mfhi $23
lbu $24, 73($23)
srl $23, $24, 5
divu $24, $23
mfhi $23
mflo $23
# ---> block tail <---
# ---> endpc 3bfc <---

# ---> block head <---
# ---> block body <---
mflo $25
lh $26, 5($25)
slti $25, $26, -20183
mthi $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 3c14 <---

# ---> block head <---
# ---> block body <---
mfhi $28
lhu $27, 4($28)
sltiu $28, $27, 9820
mtlo $28
mfhi $27
mflo $27
# ---> block tail <---
# ---> endpc 3c2c <---

# ---> block head <---
# ---> block body <---
mflo $0
lw $0, 4($0)
xori $0, $0, 32560
mult $0, $29
mfhi $29
mflo $29
# ---> block tail <---
# ---> endpc 3c44 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lb $0, 20($0)
addi $0, $0, -26550
multu $0, $30
mfhi $30
mflo $30
# ---> block tail <---
# ---> endpc 3c5c <---

# ---> block head <---
# ---> block body <---
mflo $1
lbu $1, 75($1)
addiu $1, $1, 22075
lbu $27, -22063($1)
# ---> block tail <---
# ---> endpc 3c6c <---

# ---> block head <---
# ---> block body <---
mfhi $2
lh $2, 74($2)
andi $2, $2, 9681
lh $27, 52($2)
# ---> block tail <---
# ---> endpc 3c7c <---

# ---> block head <---
# ---> block body <---
mflo $3
lhu $3, 74($3)
ori $3, $3, 124
lhu $27, -68($3)
# ---> block tail <---
addiu $27, $0, 29068
# ---> endpc 3c90 <---

# ---> block head <---
# ---> block body <---
mfhi $4
lw $5, 72($4)
sll $4, $5, 31
lw $5, 0($4)
# ---> block tail <---
# ---> endpc 3ca0 <---

# ---> block head <---
# ---> block body <---
mflo $6
lb $7, 8($6)
slti $6, $7, 9334
lb $7, 71($6)
# ---> block tail <---
# ---> endpc 3cb0 <---

# ---> block head <---
# ---> block body <---
mfhi $8
lbu $9, 36($8)
sltiu $8, $9, -7448
lbu $9, 7($8)
# ---> block tail <---
# ---> endpc 3cc0 <---

# ---> block head <---
# ---> block body <---
mflo $0
lh $0, 44($0)
sra $0, $10, 3
lh $10, 40($0)
# ---> block tail <---
# ---> endpc 3cd0 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lhu $0, 12($0)
srl $0, $11, 1
lhu $11, 52($0)
# ---> block tail <---
# ---> endpc 3ce0 <---

# ---> block head <---
# ---> block body <---
mflo $12
lw $12, 72($12)
xori $12, $12, 31868
bltz $12, TAG_BLTZ_2
addiu $27, $0, 1
addiu $27, $0, 1
TAG_BLTZ_2:
# ---> block tail <---
# ---> endpc 3cf8 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
mfhi $13
lb $13, 44($13)
addi $13, $13, -4075
bne $3, $13, TAG_BNE_5
addiu $4, $0, 1
addiu $4, $0, 1
TAG_BNE_5:
# ---> block tail <---
# ---> endpc 3d14 <---

# ---> block head <---
addiu $6, $0, 16962
# ---> block body <---
mflo $14
lbu $14, 40($14)
addiu $14, $14, 16774
beq $6, $14, TAG_BEQ_6
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BEQ_6:
# ---> block tail <---
# ---> endpc 3d30 <---

# ---> block head <---
# ---> block body <---
mfhi $16
lh $15, 28($16)
ori $15, $16, 8
bgez $15, TAG_BGEZ_3
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BGEZ_3:
# ---> block tail <---
# ---> endpc 3d48 <---

# ---> block head <---
# ---> block body <---
mflo $18
lhu $17, 36($18)
sra $17, $18, 3
bgtz $17, TAG_BGTZ_3
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BGTZ_3:
# ---> block tail <---
# ---> endpc 3d60 <---

# ---> block head <---
# ---> block body <---
mfhi $20
lw $19, 76($20)
srl $19, $20, 3
blez $19, TAG_BLEZ_3
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BLEZ_3:
# ---> block tail <---
# ---> endpc 3d78 <---

# ---> block head <---
# ---> block body <---
mflo $0
lb $0, 52($0)
andi $0, $21, 14
bltz $0, TAG_BLTZ_3
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BLTZ_3:
# ---> block tail <---
# ---> endpc 3d90 <---

# ---> block head <---
# ---> block body <---
mfhi $0
lbu $0, 36($0)
sll $0, $22, 2
bne $22, $0, TAG_BNE_6
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BNE_6:
# ---> block tail <---
# ---> endpc 3da8 <---

# ---> block head <---
# ---> block body <---
mflo $23
lh $23, 52($23)
slti $23, $23, -29163
andi $7, $23, 2514
# ---> block tail <---
# ---> endpc 3db8 <---

# ---> block head <---
# ---> block body <---
mfhi $24
lhu $24, 28($24)
sltiu $24, $24, -12553
ori $7, $24, 25701
# ---> block tail <---
# ---> endpc 3dc8 <---

# ---> block head <---
# ---> block body <---
mflo $25
lw $25, 40($25)
xori $25, $25, 13184
sll $7, $25, 4
# ---> block tail <---
addiu $7, $0, 2457
# ---> endpc 3ddc <---

# ---> block head <---
# ---> block body <---
mfhi $27
lb $26, 24($27)
addi $27, $26, -8278
slti $26, $27, 15654
# ---> block tail <---
# ---> endpc 3dec <---

# ---> block head <---
# ---> block body <---
mflo $28
lbu $29, 8($28)
addiu $29, $28, -19922
sltiu $28, $29, -16283
# ---> block tail <---
# ---> endpc 3dfc <---

# ---> block head <---
# ---> block body <---
mfhi $30
lh $1, 72($30)
andi $1, $30, 11
sra $30, $1, 3
# ---> block tail <---
# ---> endpc 3e0c <---

# ---> block head <---
# ---> block body <---
mflo $0
lhu $0, 48($0)
ori $0, $0, 16
srl $2, $0, 4
# ---> block tail <---
# ---> endpc 3e1c <---

# ---> block head <---
# ---> block body <---
mfhi $0
lw $0, 4($0)
sll $0, $3, 2
xori $3, $0, 9817
# ---> block tail <---
# ---> endpc 3e2c <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
ori $19, $0, 15972
addiu $20, $0, 16
lui $21, 43707
ori $21, $21, 52445
sw $21, 148($0)
# ---> block body <---
mflo $4
lui $4, 48012
jalr $4, $19
sb $4, 82($1)
addu $4, $4, $20
TAG_JALR_8:
sb $1, -15818($4)
# ---> block tail <---
addiu $21, $0, 15804
# ---> endpc 3e68 <---

# ---> block head <---
addiu $15, $0, 16
lui $17, 43707
ori $17, $17, 52445
sw $17, 104($0)
lui $18, 43707
ori $18, $18, 52445
sw $18, 148($0)
# ---> block body <---
mfhi $31
lui $31, 41630
jal TAG_JAL_7
sh $16, -15920($31)
addu $31, $31, $15
TAG_JAL_7:
sh $31, 148($16)
# ---> block tail <---
addiu $17, $0, -26922
addiu $18, $0, -31078
# ---> endpc 3ea4 <---

# ---> block head <---
addiu $12, $0, 16
lui $14, 43707
ori $14, $14, 52445
sw $14, 88($0)
lui $15, 43707
ori $15, $15, 52445
sw $15, 80($0)
# ---> block body <---
mflo $31
lui $31, 12733
jal TAG_JAL_15
sw $31, 4105($13)
addu $31, $31, $12
TAG_JAL_15:
sw $13, -16004($31)
# ---> block tail <---
addiu $14, $0, -13311
addiu $15, $0, -12151
# ---> endpc 3ee0 <---

# ---> block head <---
ori $0, $0, 0
ori $15, $0, 16144
addiu $16, $0, 16
lui $17, 43707
ori $17, $17, 52445
sw $17, 132($0)
# ---> block body <---
mfhi $6
lui $6, 23151
jalr $5, $15
sb $6, -16007($5)
addu $5, $5, $16
TAG_JALR_15:
# ---> block tail <---
addiu $6, $0, 938
addiu $17, $0, -29386
# ---> endpc 3f14 <---

# ---> block head <---
addiu $27, $0, 16
lui $28, 43707
ori $28, $28, 52445
sw $28, 100($0)
# ---> block body <---
mflo $31
lui $7, 30653
jal TAG_JAL_20
sh $7, -16082($31)
addu $31, $31, $27
TAG_JAL_20:
# ---> block tail <---
addiu $7, $0, 19423
addiu $28, $0, 6554
# ---> endpc 3f40 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $27, $0, 16244
addiu $28, $0, 16
lui $30, 43707
ori $30, $30, 52445
sw $30, 116($0)
# ---> block body <---
mfhi $8
lui $31, 17816
jalr $8, $27
sw $8, 20070($29)
addu $8, $8, $28
TAG_JALR_19:
sw $29, -16124($8)
# ---> block tail <---
addiu $30, $0, -12540
addiu $31, $0, 30068
# ---> endpc 3f7c <---

# ---> block head <---
ori $0, $0, 0
addiu $14, $0, 16
lui $15, 43707
ori $15, $15, 52445
sw $15, 132($0)
# ---> block body <---
mflo $0
lui $0, 52121
jal TAG_JAL_30
sb $31, 101($0)
addu $31, $31, $14
TAG_JAL_30:
sb $0, -16159($31)
# ---> block tail <---
addiu $15, $0, 5807
# ---> endpc 3fac <---

ori $v0, $zero, 10
syscall
