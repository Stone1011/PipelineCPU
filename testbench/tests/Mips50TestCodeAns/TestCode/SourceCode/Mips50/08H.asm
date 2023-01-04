# ---> init memory <---
addiu $1, $0, 10608
sw $1, 0($0)
addiu $1, $0, 29539
sw $1, 4($0)
addiu $1, $0, -4932
sw $1, 8($0)
addiu $1, $0, 14211
sw $1, 12($0)
addiu $1, $0, -28694
sw $1, 16($0)
addiu $1, $0, 22033
sw $1, 20($0)
addiu $1, $0, 30810
sw $1, 24($0)
addiu $1, $0, -10938
sw $1, 28($0)
addiu $1, $0, -11774
sw $1, 32($0)
addiu $1, $0, -12792
sw $1, 36($0)
addiu $1, $0, 455
sw $1, 40($0)
addiu $1, $0, -687
sw $1, 44($0)
addiu $1, $0, 7560
sw $1, 48($0)
addiu $1, $0, -29084
sw $1, 52($0)
addiu $1, $0, 20726
sw $1, 56($0)
addiu $1, $0, -9749
sw $1, 60($0)
addiu $1, $0, -7127
sw $1, 64($0)
addiu $1, $0, 11394
sw $1, 68($0)
addiu $1, $0, -15653
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, 30280
mthi $1
addiu $1, $0, -48
mtlo $1

# ---> init register <---
addiu $1, $0, 29758
addiu $2, $0, -13207
addiu $3, $0, -25955
addiu $4, $0, 31183
addiu $5, $0, -8447
addiu $6, $0, 12604
addiu $7, $0, -10938
addiu $8, $0, -5710
addiu $9, $0, -6097
addiu $10, $0, 4554
addiu $11, $0, 19171
addiu $12, $0, 8635
addiu $13, $0, -1576
addiu $14, $0, -19881
addiu $15, $0, -12480
addiu $16, $0, -1362
addiu $17, $0, -25289
addiu $18, $0, 11873
addiu $19, $0, 22266
addiu $20, $0, 3384
addiu $21, $0, 9174
addiu $22, $0, -15212
addiu $23, $0, -3828
addiu $24, $0, -20768
addiu $25, $0, 7690
addiu $26, $0, 22778
addiu $27, $0, -30965
addiu $28, $0, -22107
addiu $29, $0, 15075
addiu $30, $0, -28871
addiu $31, $0, -18852

# ---> start at 3120 <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 80($0)
lui $4, 43707
ori $4, $4, 52445
sw $4, 88($0)
# ---> block body <---
lui $0, 5976
mfhi $0
ori $0, $0, 0
sb $20, 81($0)
sb $0, -3294($20)
# ---> block tail <---
addiu $3, $0, -9595
addiu $4, $0, 21448
# ---> endpc 3154 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 124($0)
lui $18, 43707
ori $18, $18, 52445
sw $18, 104($0)
# ---> block body <---
lui $0, 45049
mflo $0
ori $0, $0, 0
sh $21, 126($0)
sh $0, -9068($21)
# ---> block tail <---
addiu $17, $0, -3235
addiu $18, $0, -26574
# ---> endpc 3188 <---

# ---> block head <---
# ---> block body <---
lui $3, 35791
mfhi $3
ori $0, $0, 0
srlv $3, $19, $3
# ---> block tail <---
# ---> endpc 3198 <---

# ---> block head <---
# ---> block body <---
lui $4, 42522
mflo $4
ori $0, $0, 0
sub $4, $4, $19
# ---> block tail <---
# ---> endpc 31a8 <---

# ---> block head <---
# ---> block body <---
lui $5, 50726
mfhi $5
ori $0, $0, 0
subu $5, $19, $5
# ---> block tail <---
# ---> endpc 31b8 <---

# ---> block head <---
# ---> block body <---
lui $7, 53454
mflo $6
ori $0, $0, 0
xor $6, $6, $7
# ---> block tail <---
addiu $6, $0, 25603
addiu $7, $0, -15262
# ---> endpc 31d0 <---

# ---> block head <---
# ---> block body <---
lui $8, 30851
mfhi $8
ori $0, $0, 0
add $9, $9, $8
# ---> block tail <---
# ---> endpc 31e0 <---

# ---> block head <---
# ---> block body <---
lui $11, 41753
mflo $10
ori $0, $0, 0
addu $10, $11, $10
# ---> block tail <---
addiu $10, $0, -3348
addiu $11, $0, 5059
# ---> endpc 31f8 <---

# ---> block head <---
# ---> block body <---
lui $0, 37520
mfhi $0
ori $0, $0, 0
and $12, $0, $12
# ---> block tail <---
# ---> endpc 3208 <---

# ---> block head <---
# ---> block body <---
lui $0, 779
mflo $0
ori $0, $0, 0
nor $13, $13, $0
# ---> block tail <---
# ---> endpc 3218 <---

# ---> block head <---
# ---> block body <---
lui $14, 55771
mfhi $14
ori $0, $0, 0
div $19, $14
mfhi $14
mflo $14
# ---> block tail <---
# ---> endpc 3230 <---

# ---> block head <---
mtlo $1
# ---> block body <---
lui $15, 6449
mflo $15
ori $0, $0, 0
divu $19, $15
mfhi $15
mflo $15
# ---> block tail <---
# ---> endpc 324c <---

# ---> block head <---
# ---> block body <---
lui $16, 51489
mfhi $16
ori $0, $0, 0
mthi $16
mfhi $16
mflo $16
# ---> block tail <---
# ---> endpc 3264 <---

# ---> block head <---
# ---> block body <---
lui $18, 64758
mflo $18
ori $0, $0, 0
mtlo $17
mfhi $17
mflo $17
# ---> block tail <---
# ---> endpc 327c <---

# ---> block head <---
# ---> block body <---
lui $20, 11334
mfhi $19
ori $0, $0, 0
mult $19, $20
mfhi $19
mflo $19
# ---> block tail <---
addiu $19, $0, -21429
addiu $20, $0, -23133
# ---> endpc 329c <---

# ---> block head <---
# ---> block body <---
lui $21, 875
mflo $22
ori $0, $0, 0
multu $22, $21
mfhi $21
mflo $21
# ---> block tail <---
addiu $22, $0, 23384
# ---> endpc 32b8 <---

# ---> block head <---
# ---> block body <---
lui $0, 13269
mfhi $0
ori $0, $0, 0
div $0, $1
mfhi $23
mflo $23
# ---> block tail <---
# ---> endpc 32d0 <---

# ---> block head <---
# ---> block body <---
lui $0, 60290
mflo $0
ori $0, $0, 0
divu $0, $1
mfhi $24
mflo $24
# ---> block tail <---
# ---> endpc 32e8 <---

# ---> block head <---
# ---> block body <---
lui $25, 19990
mfhi $25
ori $0, $0, 0
lb $19, 16($25)
# ---> block tail <---
# ---> endpc 32f8 <---

# ---> block head <---
# ---> block body <---
lui $26, 61112
mflo $26
ori $0, $0, 0
lbu $19, 68($26)
# ---> block tail <---
# ---> endpc 3308 <---

# ---> block head <---
# ---> block body <---
lui $27, 32488
mfhi $27
ori $0, $0, 0
lh $19, 60($27)
# ---> block tail <---
# ---> endpc 3318 <---

# ---> block head <---
# ---> block body <---
lui $28, 12882
mflo $28
ori $0, $0, 0
lhu $29, 64($28)
# ---> block tail <---
addiu $29, $0, 10379
# ---> endpc 332c <---

# ---> block head <---
# ---> block body <---
lui $30, 60473
mfhi $30
ori $0, $0, 0
lw $1, 48($30)
# ---> block tail <---
# ---> endpc 333c <---

# ---> block head <---
# ---> block body <---
lui $2, 26663
mflo $2
ori $0, $0, 0
lb $3, 56($2)
# ---> block tail <---
# ---> endpc 334c <---

# ---> block head <---
# ---> block body <---
lui $0, 42632
mfhi $0
ori $0, $0, 0
lbu $4, 20($0)
# ---> block tail <---
# ---> endpc 335c <---

# ---> block head <---
# ---> block body <---
lui $0, 13364
mflo $0
ori $0, $0, 0
lh $5, 4($0)
# ---> block tail <---
# ---> endpc 336c <---

# ---> block head <---
# ---> block body <---
lui $6, 56088
mfhi $6
ori $0, $0, 0
bltz $6, TAG_BLTZ_0
addiu $19, $0, 1
addiu $19, $0, 1
TAG_BLTZ_0:
# ---> block tail <---
# ---> endpc 3384 <---

# ---> block head <---
# ---> block body <---
lui $7, 35996
mflo $7
ori $0, $0, 0
bne $7, $19, TAG_BNE_0
addiu $20, $0, 1
addiu $20, $0, 1
TAG_BNE_0:
# ---> block tail <---
# ---> endpc 339c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $8, 9856
mfhi $8
ori $0, $0, 0
beq $8, $22, TAG_BEQ_1
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BEQ_1:
# ---> block tail <---
# ---> endpc 33b8 <---

# ---> block head <---
mtlo $3
# ---> block body <---
lui $10, 28185
mflo $9
ori $0, $0, 0
bgez $9, TAG_BGEZ_1
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BGEZ_1:
# ---> block tail <---
addiu $10, $0, -12342
# ---> endpc 33d8 <---

# ---> block head <---
mthi $3
# ---> block body <---
lui $12, 12601
mfhi $11
ori $0, $0, 0
bgtz $11, TAG_BGTZ_1
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
addiu $12, $0, 9389
# ---> endpc 33f8 <---

# ---> block head <---
# ---> block body <---
lui $13, 21908
mflo $13
ori $0, $0, 0
blez $13, TAG_BLEZ_0
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BLEZ_0:
# ---> block tail <---
# ---> endpc 3410 <---

# ---> block head <---
# ---> block body <---
lui $0, 36720
mfhi $0
ori $0, $0, 0
bltz $0, TAG_BLTZ_1
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BLTZ_1:
# ---> block tail <---
# ---> endpc 3428 <---

# ---> block head <---
# ---> block body <---
lui $0, 30839
mflo $0
ori $0, $0, 0
bne $0, $16, TAG_BNE_1
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BNE_1:
# ---> block tail <---
# ---> endpc 3440 <---

# ---> block head <---
# ---> block body <---
lui $17, 33961
mfhi $17
ori $0, $0, 0
addi $23, $17, -14032
# ---> block tail <---
# ---> endpc 3450 <---

# ---> block head <---
# ---> block body <---
lui $18, 48175
mflo $18
ori $0, $0, 0
addiu $23, $18, -8385
# ---> block tail <---
# ---> endpc 3460 <---

# ---> block head <---
# ---> block body <---
lui $19, 34095
mfhi $19
ori $0, $0, 0
andi $23, $19, 65479
# ---> block tail <---
addiu $23, $0, 5055
# ---> endpc 3474 <---

# ---> block head <---
# ---> block body <---
lui $21, 33481
mflo $21
ori $0, $0, 0
ori $21, $20, 9441
# ---> block tail <---
# ---> endpc 3484 <---

# ---> block head <---
# ---> block body <---
lui $22, 15641
mfhi $22
ori $0, $0, 0
sll $22, $23, 1
# ---> block tail <---
# ---> endpc 3494 <---

# ---> block head <---
# ---> block body <---
lui $25, 27100
mflo $25
ori $0, $0, 0
slti $24, $25, 14390
# ---> block tail <---
# ---> endpc 34a4 <---

# ---> block head <---
# ---> block body <---
lui $0, 5363
mfhi $0
ori $0, $0, 0
sltiu $26, $0, 32142
# ---> block tail <---
# ---> endpc 34b4 <---

# ---> block head <---
# ---> block body <---
lui $0, 8009
mflo $0
ori $0, $0, 0
sra $27, $0, 2
# ---> block tail <---
# ---> endpc 34c4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $18, 43707
ori $18, $18, 52445
sw $18, 124($0)
# ---> block body <---
lui $28, 46621
mfhi $28
addu $28, $28, $17
sw $1, 100($28)
sw $28, -7436($1)
# ---> block tail <---
addiu $18, $0, -11090
# ---> endpc 34f4 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $11, 43707
ori $11, $11, 52445
sw $11, 92($0)
# ---> block body <---
lui $29, 57911
mflo $29
and $29, $29, $9
sb $29, 12437($10)
sb $10, 134($29)
# ---> block tail <---
addiu $11, $0, -28740
# ---> endpc 3520 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 80($0)
# ---> block body <---
lui $30, 21353
mfhi $30
nor $30, $30, $22
sh $30, -7478($1)
sh $1, 125($30)
# ---> block tail <---
addiu $23, $0, 26894
# ---> endpc 3544 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $12, 43707
ori $12, $12, 52445
sw $12, 88($0)
# ---> block body <---
lui $2, 20674
mflo $1
or $1, $1, $2
sw $2, 98($1)
# ---> block tail <---
addiu $2, $0, -5289
addiu $12, $0, -19979
# ---> endpc 3570 <---

# ---> block head <---
lui $22, 43707
ori $22, $22, 52445
sw $22, 136($0)
# ---> block body <---
lui $3, 54032
mfhi $3
sllv $4, $4, $3
sb $4, -9305($21)
# ---> block tail <---
addiu $4, $0, 14658
addiu $22, $0, 23320
# ---> endpc 3594 <---

# ---> block head <---
lui $12, 43707
ori $12, $12, 52445
sw $12, 84($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 88($0)
# ---> block body <---
lui $5, 10341
mflo $6
slt $5, $6, $5
sh $5, 28826($11)
sh $11, 87($5)
# ---> block tail <---
addiu $12, $0, -13344
addiu $13, $0, 5779
# ---> endpc 35c8 <---

# ---> block head <---
lui $18, 43707
ori $18, $18, 52445
sw $18, 124($0)
# ---> block body <---
lui $0, 36461
mfhi $0
sltu $0, $7, $0
sw $0, 92($7)
sw $7, 124($0)
# ---> block tail <---
addiu $18, $0, 28026
# ---> endpc 35ec <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 116($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 104($0)
# ---> block body <---
lui $0, 8850
mflo $0
srav $0, $8, $8
sb $0, 117($8)
sb $8, 104($0)
# ---> block tail <---
addiu $2, $0, 7269
addiu $3, $0, -13840
# ---> endpc 3620 <---

# ---> block head <---
# ---> block body <---
lui $20, 2338
mfhi $20
srlv $20, $4, $20
or $20, $20, $5
# ---> block tail <---
# ---> endpc 3630 <---

# ---> block head <---
# ---> block body <---
lui $21, 50470
mflo $21
sub $21, $5, $21
sllv $21, $21, $6
# ---> block tail <---
addiu $21, $0, -22093
# ---> endpc 3644 <---

# ---> block head <---
# ---> block body <---
lui $22, 60139
mfhi $22
subu $22, $6, $22
slt $22, $7, $22
# ---> block tail <---
# ---> endpc 3654 <---

# ---> block head <---
# ---> block body <---
lui $23, 37863
mflo $24
xor $23, $24, $23
sltu $23, $23, $24
# ---> block tail <---
# ---> endpc 3664 <---

# ---> block head <---
# ---> block body <---
lui $26, 54321
mfhi $26
add $26, $25, $26
srav $25, $25, $26
# ---> block tail <---
# ---> endpc 3674 <---

# ---> block head <---
# ---> block body <---
lui $27, 1258
mflo $27
addu $28, $27, $28
srlv $28, $28, $27
# ---> block tail <---
# ---> endpc 3684 <---

# ---> block head <---
# ---> block body <---
lui $0, 29543
mfhi $0
and $0, $29, $29
sub $29, $0, $29
# ---> block tail <---
# ---> endpc 3694 <---

# ---> block head <---
# ---> block body <---
lui $0, 65098
mflo $0
nor $0, $0, $30
subu $30, $0, $30
# ---> block tail <---
# ---> endpc 36a4 <---

# ---> block head <---
# ---> block body <---
lui $1, 56434
mfhi $1
or $1, $1, $7
mthi $1
mfhi $1
mflo $1
# ---> block tail <---
# ---> endpc 36bc <---

# ---> block head <---
# ---> block body <---
lui $2, 21581
mflo $2
sllv $2, $8, $2
mtlo $2
mfhi $2
mflo $2
# ---> block tail <---
# ---> endpc 36d4 <---

# ---> block head <---
# ---> block body <---
lui $3, 61200
mfhi $3
slt $3, $3, $9
mult $3, $10
mfhi $3
mflo $3
# ---> block tail <---
# ---> endpc 36ec <---

# ---> block head <---
# ---> block body <---
lui $4, 14724
mflo $5
sltu $5, $4, $5
multu $4, $5
mfhi $4
mflo $4
# ---> block tail <---
# ---> endpc 3704 <---

# ---> block head <---
# ---> block body <---
lui $7, 37365
mfhi $7
srav $6, $6, $7
div $7, $6
mfhi $6
mflo $6
# ---> block tail <---
# ---> endpc 371c <---

# ---> block head <---
# ---> block body <---
lui $9, 58230
mflo $8
sub $8, $9, $8
divu $9, $8
mfhi $8
mflo $8
# ---> block tail <---
addiu $9, $0, 18291
# ---> endpc 3738 <---

# ---> block head <---
# ---> block body <---
lui $0, 27468
mfhi $0
srlv $0, $10, $10
mthi $0
mfhi $10
mflo $10
# ---> block tail <---
# ---> endpc 3750 <---

# ---> block head <---
# ---> block body <---
lui $0, 64472
mflo $0
subu $0, $11, $0
mtlo $0
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 3768 <---

# ---> block head <---
# ---> block body <---
lui $12, 43084
mfhi $12
xor $12, $12, $10
lhu $11, 67($12)
# ---> block tail <---
# ---> endpc 3778 <---

# ---> block head <---
# ---> block body <---
lui $13, 29987
mflo $13
add $13, $13, $11
lw $12, -11334($13)
# ---> block tail <---
# ---> endpc 3788 <---

# ---> block head <---
# ---> block body <---
lui $14, 63226
mfhi $14
addu $14, $14, $12
lb $13, 9805($14)
# ---> block tail <---
# ---> endpc 3798 <---

# ---> block head <---
# ---> block body <---
lui $15, 1642
mflo $15
and $15, $16, $15
lbu $16, 20($15)
# ---> block tail <---
# ---> endpc 37a8 <---

# ---> block head <---
# ---> block body <---
lui $17, 32336
mfhi $17
nor $17, $18, $17
lh $18, 28027($17)
# ---> block tail <---
# ---> endpc 37b8 <---

# ---> block head <---
addiu $14, $0, -1689
# ---> block body <---
lui $20, 38036
mflo $19
or $19, $19, $14
lhu $20, 1689($19)
# ---> block tail <---
# ---> endpc 37cc <---

# ---> block head <---
# ---> block body <---
lui $0, 3869
mfhi $0
sllv $0, $21, $21
lw $21, 52($0)
# ---> block tail <---
# ---> endpc 37dc <---

# ---> block head <---
# ---> block body <---
lui $0, 2296
mflo $0
slt $0, $0, $22
lb $22, 40($0)
# ---> block tail <---
# ---> endpc 37ec <---

# ---> block head <---
addiu $20, $0, 1
# ---> block body <---
lui $23, 56305
mfhi $23
sltu $23, $23, $18
beq $23, $20, TAG_BEQ_3
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BEQ_3:
# ---> block tail <---
# ---> endpc 3808 <---

# ---> block head <---
# ---> block body <---
lui $24, 18504
mflo $24
sub $24, $24, $21
bgez $24, TAG_BGEZ_2
addiu $22, $0, 1
addiu $22, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
# ---> endpc 3820 <---

# ---> block head <---
# ---> block body <---
lui $25, 52399
mfhi $25
subu $25, $25, $22
bgtz $25, TAG_BGTZ_2
addiu $23, $0, 1
addiu $23, $0, 1
TAG_BGTZ_2:
# ---> block tail <---
# ---> endpc 3838 <---

# ---> block head <---
addiu $24, $0, -29647
# ---> block body <---
lui $27, 20026
mflo $27
xor $26, $24, $26
blez $26, TAG_BLEZ_2
addiu $25, $0, 1
addiu $25, $0, 1
TAG_BLEZ_2:
# ---> block tail <---
# ---> endpc 3854 <---

# ---> block head <---
addiu $26, $0, -18503
# ---> block body <---
lui $28, 61035
mfhi $28
add $28, $26, $29
bltz $28, TAG_BLTZ_3
addiu $27, $0, 1
addiu $27, $0, 1
TAG_BLTZ_3:
# ---> block tail <---
# ---> endpc 3870 <---

# ---> block head <---
addiu $28, $0, 0
# ---> block body <---
lui $1, 6673
mflo $30
srav $30, $30, $1
bne $30, $28, TAG_BNE_3
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BNE_3:
# ---> block tail <---
addiu $1, $0, -16499
# ---> endpc 3890 <---

# ---> block head <---
# ---> block body <---
lui $0, 55962
mfhi $0
srlv $0, $2, $2
beq $2, $0, TAG_BEQ_4
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BEQ_4:
# ---> block tail <---
# ---> endpc 38a8 <---

# ---> block head <---
# ---> block body <---
lui $0, 31911
mflo $0
addu $0, $3, $0
bgez $0, TAG_BGEZ_3
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BGEZ_3:
# ---> block tail <---
# ---> endpc 38c0 <---

# ---> block head <---
# ---> block body <---
lui $4, 56241
mfhi $4
and $4, $4, $29
srl $30, $4, 1
# ---> block tail <---
# ---> endpc 38d0 <---

# ---> block head <---
# ---> block body <---
lui $5, 60366
mflo $5
nor $5, $5, $30
xori $2, $5, 17964
# ---> block tail <---
# ---> endpc 38e0 <---

# ---> block head <---
# ---> block body <---
lui $6, 3760
mfhi $6
or $6, $2, $6
addi $3, $6, -14561
# ---> block tail <---
# ---> endpc 38f0 <---

# ---> block head <---
# ---> block body <---
lui $8, 6393
mflo $8
sllv $8, $8, $7
addiu $7, $8, -17819
# ---> block tail <---
# ---> endpc 3900 <---

# ---> block head <---
# ---> block body <---
lui $9, 65471
mfhi $10
slt $9, $10, $9
andi $10, $9, 62293
# ---> block tail <---
# ---> endpc 3910 <---

# ---> block head <---
# ---> block body <---
lui $11, 23756
mflo $12
sltu $11, $12, $11
ori $12, $11, 33341
# ---> block tail <---
addiu $12, $0, -5561
# ---> endpc 3924 <---

# ---> block head <---
# ---> block body <---
lui $0, 56799
mfhi $0
srav $0, $13, $13
sll $13, $0, 1
# ---> block tail <---
# ---> endpc 3934 <---

# ---> block head <---
# ---> block body <---
lui $0, 61757
mflo $0
srlv $0, $14, $14
slti $14, $0, 15821
# ---> block tail <---
# ---> endpc 3944 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $19, 43707
ori $19, $19, 52445
sw $19, 140($0)
# ---> block body <---
lui $15, 64199
mfhi $15
lhu $15, 36($15)
sh $15, 16639($1)
# ---> block tail <---
addiu $15, $0, 31775
addiu $19, $0, -6972
# ---> endpc 3974 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $4, 43707
ori $4, $4, 52445
sw $4, 128($0)
# ---> block body <---
lui $16, 9490
mflo $16
lw $16, 28($16)
sw $16, 16639($1)
sw $1, 11066($16)
# ---> block tail <---
addiu $4, $0, -28807
# ---> endpc 39a4 <---

# ---> block head <---
lui $9, 43707
ori $9, $9, 52445
sw $9, 104($0)
# ---> block body <---
lui $17, 21425
mfhi $17
lb $17, 32($17)
sb $17, 16628($1)
sb $1, 104($17)
# ---> block tail <---
addiu $9, $0, 1256
# ---> endpc 39c8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $18, 45845
mflo $18
lbu $19, 76($18)
sh $19, -31633($15)
sh $15, 90($19)
# ---> block tail <---
# ---> endpc 39e4 <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 88($0)
lui $4, 43707
ori $4, $4, 52445
sw $4, 132($0)
# ---> block body <---
lui $21, 63803
mfhi $21
lh $20, 4($21)
sw $20, 18053($2)
sw $2, -29407($20)
# ---> block tail <---
addiu $3, $0, -12855
addiu $4, $0, 12246
# ---> endpc 3a18 <---

# ---> block head <---
lui $12, 43707
ori $12, $12, 52445
sw $12, 140($0)
# ---> block body <---
lui $23, 64992
mflo $22
lhu $23, 72($22)
sb $23, 141($11)
# ---> block tail <---
addiu $12, $0, 20686
addiu $23, $0, -3843
# ---> endpc 3a3c <---

# ---> block head <---
lui $26, 43707
ori $26, $26, 52445
sw $26, 92($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 144($0)
# ---> block body <---
lui $0, 7223
mfhi $0
lw $0, 76($0)
sh $24, 94($0)
sh $0, 29791($24)
# ---> block tail <---
addiu $26, $0, -20551
addiu $27, $0, -12519
# ---> endpc 3a70 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 144($0)
# ---> block body <---
lui $0, 19716
mflo $0
lb $0, 68($0)
sw $25, 144($0)
sw $0, 131($25)
# ---> block tail <---
addiu $2, $0, -20717
# ---> endpc 3a94 <---

# ---> block head <---
# ---> block body <---
lui $7, 18622
mfhi $7
lbu $7, 44($7)
xor $7, $7, $3
# ---> block tail <---
# ---> endpc 3aa4 <---

# ---> block head <---
# ---> block body <---
lui $8, 55179
mflo $8
lh $8, 44($8)
add $8, $3, $8
# ---> block tail <---
# ---> endpc 3ab4 <---

# ---> block head <---
# ---> block body <---
lui $9, 32947
mfhi $9
lhu $9, 36($9)
addu $9, $3, $9
# ---> block tail <---
addiu $9, $0, 16943
# ---> endpc 3ac8 <---

# ---> block head <---
# ---> block body <---
lui $11, 16891
mflo $11
lw $10, 32($11)
and $10, $10, $11
# ---> block tail <---
# ---> endpc 3ad8 <---

# ---> block head <---
# ---> block body <---
lui $13, 10156
mfhi $13
lb $12, 28($13)
nor $12, $13, $12
# ---> block tail <---
# ---> endpc 3ae8 <---

# ---> block head <---
# ---> block body <---
lui $14, 18419
mflo $15
lbu $14, 8($15)
or $15, $14, $15
# ---> block tail <---
# ---> endpc 3af8 <---

# ---> block head <---
# ---> block body <---
lui $0, 28273
mfhi $0
lh $0, 28($0)
sllv $16, $16, $0
# ---> block tail <---
# ---> endpc 3b08 <---

# ---> block head <---
# ---> block body <---
lui $0, 32933
mflo $0
lhu $0, 32($0)
slt $17, $17, $0
# ---> block tail <---
# ---> endpc 3b18 <---

# ---> block head <---
# ---> block body <---
lui $18, 35750
mfhi $18
lw $18, 52($18)
mult $3, $18
mfhi $18
mflo $18
# ---> block tail <---
addiu $18, $0, -25676
# ---> endpc 3b34 <---

# ---> block head <---
mtlo $1
# ---> block body <---
lui $19, 34430
mflo $19
lb $19, 16559($19)
multu $3, $19
mfhi $19
mflo $19
# ---> block tail <---
addiu $19, $0, 2756
# ---> endpc 3b54 <---

# ---> block head <---
# ---> block body <---
lui $20, 900
mfhi $20
lbu $20, 12951($20)
div $3, $20
mfhi $20
mflo $20
# ---> block tail <---
# ---> endpc 3b6c <---

# ---> block head <---
# ---> block body <---
lui $21, 1305
mflo $21
lh $22, 124($21)
divu $21, $22
mfhi $21
mflo $21
# ---> block tail <---
# ---> endpc 3b84 <---

# ---> block head <---
# ---> block body <---
lui $23, 38894
mfhi $23
lhu $24, 82($23)
mthi $24
mfhi $23
mflo $23
# ---> block tail <---
addiu $24, $0, 16836
# ---> endpc 3ba0 <---

# ---> block head <---
# ---> block body <---
lui $26, 15855
mflo $26
lw $25, 36($26)
mtlo $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 3bb8 <---

# ---> block head <---
# ---> block body <---
lui $0, 48959
mfhi $0
lb $0, 12($0)
mult $27, $0
mfhi $27
mflo $27
# ---> block tail <---
# ---> endpc 3bd0 <---

# ---> block head <---
# ---> block body <---
lui $0, 24493
mflo $0
lbu $0, 24($0)
multu $0, $28
mfhi $28
mflo $28
# ---> block tail <---
# ---> endpc 3be8 <---

# ---> block head <---
# ---> block body <---
lui $29, 14264
mfhi $29
lh $29, 74($29)
lbu $3, 77($29)
# ---> block tail <---
# ---> endpc 3bf8 <---

# ---> block head <---
# ---> block body <---
lui $30, 47268
mflo $30
lhu $30, 70($30)
lh $3, 0($30)
# ---> block tail <---
# ---> endpc 3c08 <---

# ---> block head <---
# ---> block body <---
lui $1, 26564
mfhi $1
lw $1, 72($1)
lhu $3, 15713($1)
# ---> block tail <---
addiu $3, $0, -5992
# ---> endpc 3c1c <---

# ---> block head <---
# ---> block body <---
lui $2, 38630
mflo $3
lb $2, 75($3)
lw $3, 21($2)
# ---> block tail <---
# ---> endpc 3c2c <---

# ---> block head <---
# ---> block body <---
lui $4, 30405
mfhi $5
lbu $4, 71($5)
lb $5, 32($4)
# ---> block tail <---
# ---> endpc 3c3c <---

# ---> block head <---
# ---> block body <---
lui $6, 16156
mflo $7
lh $6, 74($7)
lbu $7, 13($6)
# ---> block tail <---
# ---> endpc 3c4c <---

# ---> block head <---
# ---> block body <---
lui $0, 23678
mfhi $0
lhu $0, 28($0)
lh $8, 40($0)
# ---> block tail <---
# ---> endpc 3c5c <---

# ---> block head <---
# ---> block body <---
lui $0, 15076
mflo $0
lw $0, 16($0)
lhu $9, 8($0)
# ---> block tail <---
addiu $9, $0, -12137
# ---> endpc 3c70 <---

# ---> block head <---
# ---> block body <---
lui $10, 10770
mfhi $10
lb $10, 72($10)
bgtz $10, TAG_BGTZ_3
addiu $3, $0, 1
addiu $3, $0, 1
TAG_BGTZ_3:
# ---> block tail <---
# ---> endpc 3c88 <---

# ---> block head <---
# ---> block body <---
lui $11, 26440
mflo $11
lh $11, 74($11)
blez $11, TAG_BLEZ_3
addiu $3, $0, 1
addiu $3, $0, 1
TAG_BLEZ_3:
# ---> block tail <---
# ---> endpc 3ca0 <---

# ---> block head <---
# ---> block body <---
lui $12, 47589
mfhi $12
lw $12, 72($12)
bltz $12, TAG_BLTZ_4
addiu $3, $0, 1
addiu $3, $0, 1
TAG_BLTZ_4:
# ---> block tail <---
# ---> endpc 3cb8 <---

# ---> block head <---
addiu $4, $0, 246
# ---> block body <---
lui $13, 56201
mflo $13
lbu $14, 56($13)
bne $4, $14, TAG_BNE_5
addiu $5, $0, 1
addiu $5, $0, 1
TAG_BNE_5:
# ---> block tail <---
# ---> endpc 3cd4 <---

# ---> block head <---
ori $6, $0, 52744
# ---> block body <---
lui $16, 38898
mfhi $15
lhu $16, 36($15)
beq $6, $16, TAG_BEQ_6
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BEQ_6:
# ---> block tail <---
addiu $6, $0, -7384
addiu $16, $0, -11343
# ---> endpc 3cf8 <---

# ---> block head <---
# ---> block body <---
lui $18, 17524
mflo $18
lb $17, 72($18)
bgez $17, TAG_BGEZ_4
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BGEZ_4:
# ---> block tail <---
# ---> endpc 3d10 <---

# ---> block head <---
# ---> block body <---
lui $0, 56776
mfhi $0
lbu $0, 32($0)
bgtz $0, TAG_BGTZ_4
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BGTZ_4:
# ---> block tail <---
# ---> endpc 3d28 <---

# ---> block head <---
# ---> block body <---
lui $0, 58316
mflo $0
lh $0, 40($0)
blez $0, TAG_BLEZ_4
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BLEZ_4:
# ---> block tail <---
# ---> endpc 3d40 <---

# ---> block head <---
# ---> block body <---
lui $21, 51361
mfhi $21
lhu $21, 24($21)
sltiu $7, $21, 18665
# ---> block tail <---
# ---> endpc 3d50 <---

# ---> block head <---
# ---> block body <---
lui $22, 64531
mflo $22
lw $22, 68($22)
sra $7, $22, 2
# ---> block tail <---
# ---> endpc 3d60 <---

# ---> block head <---
# ---> block body <---
lui $23, 7060
mfhi $23
lb $23, 20($23)
srl $7, $23, 3
# ---> block tail <---
# ---> endpc 3d70 <---

# ---> block head <---
# ---> block body <---
lui $24, 20947
mflo $24
lbu $25, 68($24)
xori $24, $25, 19614
# ---> block tail <---
# ---> endpc 3d80 <---

# ---> block head <---
# ---> block body <---
lui $27, 29164
mfhi $27
lh $26, 48($27)
addi $27, $26, 2782
# ---> block tail <---
# ---> endpc 3d90 <---

# ---> block head <---
# ---> block body <---
lui $29, 41723
mflo $28
lhu $29, 12($28)
addiu $28, $29, 25064
# ---> block tail <---
addiu $28, $0, 3952
# ---> endpc 3da4 <---

# ---> block head <---
# ---> block body <---
lui $0, 22883
mfhi $0
lw $0, 72($0)
andi $30, $0, 10411
# ---> block tail <---
# ---> endpc 3db4 <---

# ---> block head <---
# ---> block body <---
lui $0, 12827
mflo $0
lb $0, 76($0)
ori $1, $0, 42775
# ---> block tail <---
addiu $1, $0, 14220
# ---> endpc 3dc8 <---

# ---> block head <---
lui $10, 43707
ori $10, $10, 52445
sw $10, 124($0)
# ---> block body <---
lui $2, 47073
mfhi $2
lui $2, 34042
sb $2, -14094($1)
# ---> block tail <---
addiu $2, $0, -17510
addiu $10, $0, 11488
# ---> endpc 3dec <---

# ---> block head <---
lui $14, 43707
ori $14, $14, 52445
sw $14, 132($0)
# ---> block body <---
lui $3, 43729
mflo $3
lui $3, 63960
sh $3, -14088($1)
# ---> block tail <---
addiu $3, $0, 8298
addiu $14, $0, -2472
# ---> endpc 3e10 <---

# ---> block head <---
# ---> block body <---
lui $4, 57769
mfhi $4
lui $4, 56634
sw $4, -14128($1)
# ---> block tail <---
addiu $4, $0, -1849
# ---> endpc 3e24 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $6, 56487
mflo $5
lui $6, 5436
sb $6, 108($23)
# ---> block tail <---
addiu $6, $0, 3845
# ---> endpc 3e44 <---

# ---> block head <---
ori $0, $0, 0
lui $9, 43707
ori $9, $9, 52445
sw $9, 152($0)
# ---> block body <---
lui $8, 32714
mfhi $7
lui $7, 56433
sh $7, -3691($6)
# ---> block tail <---
addiu $7, $0, -8428
addiu $8, $0, -7498
addiu $9, $0, -16933
# ---> endpc 3e70 <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 108($0)
# ---> block body <---
lui $10, 46408
mflo $10
lui $10, 55287
sw $10, 11451($16)
# ---> block tail <---
addiu $10, $0, -18416
addiu $17, $0, 15875
# ---> endpc 3e94 <---

# ---> block head <---
lui $22, 43707
ori $22, $22, 52445
sw $22, 136($0)
# ---> block body <---
lui $0, 42682
mfhi $0
lui $0, 60663
sb $0, 139($0)
sb $0, 104($0)
# ---> block tail <---
addiu $22, $0, 8615
# ---> endpc 3eb8 <---

# ---> block head <---
lui $6, 43707
ori $6, $6, 52445
sw $6, 108($0)
lui $7, 43707
ori $7, $7, 52445
sw $7, 112($0)
# ---> block body <---
lui $0, 48011
mflo $0
lui $0, 63992
sh $0, 108($0)
sh $0, 112($0)
# ---> block tail <---
addiu $6, $0, 24670
addiu $7, $0, -15568
# ---> endpc 3eec <---

# ---> block head <---
# ---> block body <---
lui $13, 6405
mfhi $13
lui $13, 57492
sltu $13, $8, $13
# ---> block tail <---
# ---> endpc 3efc <---

# ---> block head <---
# ---> block body <---
lui $14, 36205
mflo $14
lui $14, 22604
srav $14, $8, $14
# ---> block tail <---
# ---> endpc 3f0c <---

# ---> block head <---
# ---> block body <---
lui $15, 21776
mfhi $15
lui $15, 36435
srlv $15, $8, $15
# ---> block tail <---
# ---> endpc 3f1c <---

# ---> block head <---
# ---> block body <---
lui $17, 63575
mflo $16
lui $17, 28892
sub $17, $16, $17
# ---> block tail <---
addiu $17, $0, 9465
# ---> endpc 3f30 <---

# ---> block head <---
# ---> block body <---
lui $18, 62606
mfhi $19
lui $18, 47451
subu $19, $18, $19
# ---> block tail <---
addiu $18, $0, -22885
addiu $19, $0, -17690
# ---> endpc 3f48 <---

# ---> block head <---
# ---> block body <---
lui $21, 34582
mflo $21
lui $21, 51521
xor $21, $20, $21
# ---> block tail <---
addiu $21, $0, -2875
# ---> endpc 3f5c <---

# ---> block head <---
# ---> block body <---
lui $0, 47427
mfhi $0
lui $0, 59192
add $22, $0, $22
# ---> block tail <---
# ---> endpc 3f6c <---

# ---> block head <---
# ---> block body <---
lui $0, 44839
mflo $0
lui $0, 31571
addu $23, $23, $0
# ---> block tail <---
# ---> endpc 3f7c <---

# ---> block head <---
# ---> block body <---
lui $24, 2682
mfhi $24
lui $24, 27742
div $8, $24
mfhi $24
mflo $24
# ---> block tail <---
# ---> endpc 3f94 <---

# ---> block head <---
# ---> block body <---
lui $25, 4745
mflo $25
lui $25, 28363
divu $8, $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 3fac <---

ori $v0, $zero, 10
syscall
