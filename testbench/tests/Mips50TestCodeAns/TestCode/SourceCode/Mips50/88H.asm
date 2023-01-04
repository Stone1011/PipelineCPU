# ---> init memory <---
addiu $1, $0, 21813
sw $1, 0($0)
addiu $1, $0, -3008
sw $1, 4($0)
addiu $1, $0, 20330
sw $1, 8($0)
addiu $1, $0, 12471
sw $1, 12($0)
addiu $1, $0, 31378
sw $1, 16($0)
addiu $1, $0, 31494
sw $1, 20($0)
addiu $1, $0, 19881
sw $1, 24($0)
addiu $1, $0, 8214
sw $1, 28($0)
addiu $1, $0, 9326
sw $1, 32($0)
addiu $1, $0, -8044
sw $1, 36($0)
addiu $1, $0, 32203
sw $1, 40($0)
addiu $1, $0, -23003
sw $1, 44($0)
addiu $1, $0, -1953
sw $1, 48($0)
addiu $1, $0, -26167
sw $1, 52($0)
addiu $1, $0, -920
sw $1, 56($0)
addiu $1, $0, 15925
sw $1, 60($0)
addiu $1, $0, -8938
sw $1, 64($0)
addiu $1, $0, -2901
sw $1, 68($0)
addiu $1, $0, -5164
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, 20092
mthi $1
addiu $1, $0, -11728
mtlo $1

# ---> init register <---
addiu $1, $0, -31511
addiu $2, $0, -7580
addiu $3, $0, -32739
addiu $4, $0, -2811
addiu $5, $0, -28594
addiu $6, $0, 3215
addiu $7, $0, 11280
addiu $8, $0, 12310
addiu $9, $0, -30570
addiu $10, $0, 5889
addiu $11, $0, -9444
addiu $12, $0, -20814
addiu $13, $0, -8301
addiu $14, $0, -31498
addiu $15, $0, -27080
addiu $16, $0, -10939
addiu $17, $0, -24057
addiu $18, $0, 27872
addiu $19, $0, -26195
addiu $20, $0, -18901
addiu $21, $0, -4607
addiu $22, $0, 16507
addiu $23, $0, -11366
addiu $24, $0, 28104
addiu $25, $0, -30616
addiu $26, $0, -26040
addiu $27, $0, -13043
addiu $28, $0, -29535
addiu $29, $0, 7094
addiu $30, $0, 24931
addiu $31, $0, 18279

# ---> start at 3120 <---

# ---> block head <---
ori $0, $0, 0
ori $28, $0, 12624
addiu $29, $0, 16
lui $30, 43707
ori $30, $30, 52445
sw $30, 104($0)
# ---> block body <---
lui $20, 9098
addiu $31, $20, 4331
jalr $31, $28
sh $20, -12516($31)
addu $31, $31, $29
TAG_JALR_6:
# ---> block tail <---
addiu $20, $0, 18246
addiu $30, $0, -8245
# ---> endpc 3154 <---

# ---> block head <---
ori $20, $0, 12672
addiu $23, $0, 16
lui $24, 43707
ori $24, $24, 52445
sw $24, 108($0)
# ---> block body <---
lui $22, 60279
andi $21, $22, 5
jalr $21, $20
sw $22, -12560($21)
addu $21, $21, $23
TAG_JALR_12:
# ---> block tail <---
addiu $22, $0, 9347
addiu $24, $0, -21855
# ---> endpc 3184 <---

# ---> block head <---
addiu $16, $0, 16
lui $17, 43707
ori $17, $17, 52445
sw $17, 104($0)
lui $18, 43707
ori $18, $18, 52445
sw $18, 84($0)
# ---> block body <---
lui $0, 18245
ori $0, $0, 16
jal TAG_JAL_7
sb $0, -12617($31)
addu $31, $31, $16
TAG_JAL_7:
sb $31, 87($0)
# ---> block tail <---
addiu $17, $0, 4095
addiu $18, $0, -7711
# ---> endpc 31c0 <---

# ---> block head <---
addiu $11, $0, 16
lui $12, 43707
ori $12, $12, 52445
sw $12, 148($0)
lui $13, 43707
ori $13, $13, 52445
sw $13, 112($0)
# ---> block body <---
lui $0, 38226
sll $0, $31, 2
jal TAG_JAL_15
sh $0, 148($0)
addu $31, $31, $11
TAG_JAL_15:
sh $0, 112($0)
# ---> block tail <---
addiu $12, $0, -21239
addiu $13, $0, 12961
# ---> endpc 31fc <---

# ---> block head <---
ori $18, $0, 12828
addiu $19, $0, 16
# ---> block body <---
lui $31, 46255
slti $31, $31, 17185
jalr $31, $18
add $31, $20, $31
addu $31, $31, $19
TAG_JALR_15:
# ---> block tail <---
# ---> endpc 3218 <---

# ---> block head <---
addiu $21, $0, 16
# ---> block body <---
lui $31, 53180
sltiu $31, $31, -30312
jal TAG_JAL_17
addu $31, $22, $31
addu $31, $31, $21
TAG_JAL_17:
# ---> block tail <---
# ---> endpc 3230 <---

# ---> block head <---
ori $27, $0, 12880
addiu $28, $0, 16
# ---> block body <---
lui $23, 31130
sra $23, $23, 4
jalr $23, $27
and $23, $29, $23
addu $23, $23, $28
TAG_JALR_18:
# ---> block tail <---
# ---> endpc 324c <---

# ---> block head <---
ori $3, $0, 12908
addiu $4, $0, 16
# ---> block body <---
lui $24, 49690
srl $25, $24, 4
jalr $25, $3
nor $25, $25, $24
addu $25, $25, $4
TAG_JALR_21:
# ---> block tail <---
addiu $24, $0, -7876
addiu $25, $0, 3629
# ---> endpc 3270 <---

# ---> block head <---
ori $0, $0, 0
addiu $8, $0, 16
# ---> block body <---
lui $31, 26835
xori $31, $26, 10133
jal TAG_JAL_19
or $26, $31, $26
addu $31, $31, $8
TAG_JAL_19:
# ---> block tail <---
# ---> endpc 328c <---

# ---> block head <---
ori $13, $0, 12972
addiu $14, $0, 16
# ---> block body <---
lui $28, 24519
addi $28, $27, -3784
jalr $28, $13
sllv $27, $28, $27
addu $28, $28, $14
TAG_JALR_25:
# ---> block tail <---
addiu $27, $0, 27387
# ---> endpc 32ac <---

# ---> block head <---
addiu $16, $0, 16
# ---> block body <---
lui $0, 4449
addiu $0, $0, 329
jal TAG_JAL_21
slt $31, $0, $31
addu $31, $31, $16
TAG_JAL_21:
# ---> block tail <---
# ---> endpc 32c4 <---

# ---> block head <---
ori $21, $0, 13028
addiu $22, $0, 16
# ---> block body <---
lui $0, 23107
andi $0, $29, 11
jalr $0, $21
sltu $29, $29, $0
addu $29, $29, $22
TAG_JALR_28:
# ---> block tail <---
# ---> endpc 32e0 <---

# ---> block head <---
addiu $24, $0, 16
# ---> block body <---
lui $31, 17654
ori $31, $31, 1
jal TAG_JAL_23
div $0, $31
addu $31, $31, $24
TAG_JAL_23:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 3300 <---

# ---> block head <---
ori $29, $0, 13088
addiu $2, $0, 16
# ---> block body <---
lui $30, 62846
sll $30, $30, 2
jalr $30, $29
divu $3, $30
addu $30, $30, $2
TAG_JALR_31:
mfhi $30
mflo $30
# ---> block tail <---
# ---> endpc 3324 <---

# ---> block head <---
ori $6, $0, 13124
addiu $7, $0, 16
# ---> block body <---
lui $1, 35804
slti $1, $1, -29807
jalr $1, $6
mthi $1
addu $1, $1, $7
TAG_JALR_34:
mfhi $1
mflo $1
# ---> block tail <---
# ---> endpc 3348 <---

# ---> block head <---
ori $11, $0, 13160
addiu $12, $0, 16
# ---> block body <---
lui $31, 21034
sltiu $2, $31, -32537
jalr $2, $11
mtlo $2
addu $2, $2, $12
TAG_JALR_36:
mfhi $31
mflo $31
# ---> block tail <---
# ---> endpc 336c <---

# ---> block head <---
addiu $15, $0, 16
# ---> block body <---
lui $3, 9004
sra $31, $3, 4
jal TAG_JAL_25
mult $3, $31
addu $31, $31, $15
TAG_JAL_25:
mfhi $31
mflo $31
# ---> block tail <---
addiu $3, $0, 27880
addiu $31, $0, 1031
# ---> endpc 3394 <---

# ---> block head <---
ori $20, $0, 13236
addiu $21, $0, 16
# ---> block body <---
lui $5, 34047
srl $4, $5, 1
jalr $4, $20
multu $5, $4
addu $4, $4, $21
TAG_JALR_40:
mfhi $4
mflo $4
# ---> block tail <---
addiu $4, $0, 24881
addiu $5, $0, 30397
# ---> endpc 33c0 <---

# ---> block head <---
ori $26, $0, 13280
addiu $27, $0, 16
# ---> block body <---
lui $0, 59784
xori $0, $0, 9209
jalr $0, $26
div $0, $2
addu $6, $6, $27
TAG_JALR_43:
mfhi $6
mflo $6
# ---> block tail <---
# ---> endpc 33e4 <---

# ---> block head <---
ori $3, $0, 13316
addiu $4, $0, 16
# ---> block body <---
lui $0, 45475
addi $0, $0, 4720
jalr $0, $3
divu $0, $2
addu $7, $7, $4
TAG_JALR_46:
mfhi $7
mflo $7
# ---> block tail <---
# ---> endpc 3408 <---

# ---> block head <---
addiu $6, $0, 16
# ---> block body <---
lui $31, 16463
addiu $31, $31, 17360
jal TAG_JAL_27
lhu $7, -13344($31)
addu $31, $31, $6
TAG_JAL_27:
# ---> block tail <---
# ---> endpc 3420 <---

# ---> block head <---
addiu $8, $0, 16
# ---> block body <---
lui $31, 21179
andi $31, $31, 25
jal TAG_JAL_29
lw $9, -13356($31)
addu $31, $31, $8
TAG_JAL_29:
# ---> block tail <---
# ---> endpc 3438 <---

# ---> block head <---
ori $13, $0, 13400
addiu $14, $0, 16
# ---> block body <---
lui $8, 61200
ori $8, $8, 16
jalr $8, $13
lb $15, -13392($8)
addu $8, $8, $14
TAG_JALR_49:
# ---> block tail <---
# ---> endpc 3454 <---

# ---> block head <---
addiu $16, $0, 16
# ---> block body <---
lui $31, 61673
sll $31, $9, 2
jal TAG_JAL_31
lbu $9, -13380($31)
addu $31, $31, $16
TAG_JAL_31:
# ---> block tail <---
# ---> endpc 346c <---

# ---> block head <---
addiu $18, $0, 16
# ---> block body <---
lui $31, 29065
slti $31, $10, -18619
jal TAG_JAL_33
lh $10, -13440($31)
addu $31, $31, $18
TAG_JAL_33:
# ---> block tail <---
# ---> endpc 3484 <---

# ---> block head <---
addiu $20, $0, 16
# ---> block body <---
lui $11, 53269
sltiu $31, $11, -21131
jal TAG_JAL_35
lhu $11, -13408($31)
addu $31, $31, $20
TAG_JAL_35:
# ---> block tail <---
# ---> endpc 349c <---

# ---> block head <---
addiu $22, $0, 16
# ---> block body <---
lui $0, 2707
sra $0, $31, 1
jal TAG_JAL_37
lw $31, 76($0)
addu $31, $31, $22
TAG_JAL_37:
# ---> block tail <---
# ---> endpc 34b4 <---

# ---> block head <---
ori $27, $0, 13524
addiu $28, $0, 16
# ---> block body <---
lui $0, 39693
srl $0, $12, 4
jalr $0, $27
lb $12, 76($0)
addu $12, $12, $28
TAG_JALR_52:
# ---> block tail <---
# ---> endpc 34d0 <---

# ---> block head <---
ori $4, $0, 13552
addiu $5, $0, 16
# ---> block body <---
lui $13, 6460
xori $13, $13, 20723
jalr $13, $4
sll $6, $13, 4
addu $13, $13, $5
TAG_JALR_55:
# ---> block tail <---
addiu $6, $0, -4061
# ---> endpc 34f0 <---

# ---> block head <---
addiu $7, $0, 16
# ---> block body <---
lui $31, 32255
addi $31, $31, -16246
jal TAG_JAL_39
slti $8, $31, 16093
addu $31, $31, $7
TAG_JAL_39:
# ---> block tail <---
# ---> endpc 3508 <---

# ---> block head <---
ori $12, $0, 13608
addiu $13, $0, 16
# ---> block body <---
lui $14, 16595
addiu $14, $14, -12087
jalr $14, $12
sltiu $15, $14, -14612
addu $14, $14, $13
TAG_JALR_58:
# ---> block tail <---
# ---> endpc 3524 <---

# ---> block head <---
ori $20, $0, 13636
addiu $21, $0, 16
# ---> block body <---
lui $16, 1415
andi $15, $16, 30
jalr $15, $20
sra $16, $15, 4
addu $15, $15, $21
TAG_JALR_61:
# ---> block tail <---
# ---> endpc 3540 <---

# ---> block head <---
ori $24, $0, 13664
addiu $25, $0, 16
# ---> block body <---
lui $17, 16411
ori $18, $17, 16
jalr $18, $24
srl $17, $18, 3
addu $18, $18, $25
TAG_JALR_64:
# ---> block tail <---
# ---> endpc 355c <---

# ---> block head <---
ori $30, $0, 13692
addiu $2, $0, 16
# ---> block body <---
lui $19, 56314
sll $19, $31, 3
jalr $19, $30
xori $31, $19, 31516
addu $19, $19, $2
TAG_JALR_67:
# ---> block tail <---
# ---> endpc 3578 <---

# ---> block head <---
addiu $4, $0, 16
# ---> block body <---
lui $0, 48391
slti $0, $0, -7481
jal TAG_JAL_41
addi $31, $0, -32236
addu $31, $31, $4
TAG_JAL_41:
# ---> block tail <---
# ---> endpc 3590 <---

# ---> block head <---
addiu $6, $0, 16
# ---> block body <---
lui $0, 2855
sltiu $0, $0, 27874
jal TAG_JAL_43
addiu $31, $0, -4126
addu $31, $31, $6
TAG_JAL_43:
# ---> block tail <---
# ---> endpc 35a8 <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 148($0)
lui $25, 43707
ori $25, $25, 52445
sw $25, 92($0)
# ---> block body <---
lui $20, 4638
sra $20, $20, 2
mfhi $20
sw $23, 148($20)
sw $20, 92($23)
# ---> block tail <---
addiu $24, $0, 30751
addiu $25, $0, 23496
# ---> endpc 35dc <---

# ---> block head <---
lui $10, 43707
ori $10, $10, 52445
sw $10, 112($0)
lui $11, 43707
ori $11, $11, 52445
sw $11, 124($0)
# ---> block body <---
lui $21, 21299
srl $21, $21, 3
mflo $21
sb $9, 114($21)
sb $21, -76($9)
# ---> block tail <---
addiu $10, $0, -32322
addiu $11, $0, 26723
# ---> endpc 3610 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 96($0)
lui $3, 43707
ori $3, $3, 52445
sw $3, 92($0)
# ---> block body <---
lui $22, 53374
xori $22, $22, 8717
mfhi $22
sh $22, 98($1)
sh $1, 92($22)
# ---> block tail <---
addiu $2, $0, 32094
addiu $3, $0, 3126
# ---> endpc 3644 <---

# ---> block head <---
lui $9, 43707
ori $9, $9, 52445
sw $9, 84($0)
# ---> block body <---
lui $24, 40976
addi $23, $24, -2741
mflo $23
sw $24, 84($23)
# ---> block tail <---
addiu $9, $0, 19578
addiu $24, $0, -3080
# ---> endpc 3668 <---

# ---> block head <---
lui $23, 43707
ori $23, $23, 52445
sw $23, 84($0)
lui $24, 43707
ori $24, $24, 52445
sw $24, 144($0)
# ---> block body <---
lui $26, 54421
addiu $26, $25, -22198
mfhi $26
sb $26, 87($22)
sb $22, 146($26)
# ---> block tail <---
addiu $23, $0, 20804
addiu $24, $0, 11166
# ---> endpc 369c <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 100($0)
# ---> block body <---
lui $28, 34343
andi $27, $28, 0
mflo $27
sh $28, 102($27)
# ---> block tail <---
addiu $3, $0, 3432
addiu $28, $0, 22151
# ---> endpc 36c0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $13, 43707
ori $13, $13, 52445
sw $13, 144($0)
# ---> block body <---
lui $0, 8844
ori $0, $0, 1
mfhi $0
sw $0, -12944($29)
sw $29, 100($0)
# ---> block tail <---
addiu $13, $0, 10338
# ---> endpc 36f0 <---

# ---> block head <---
lui $26, 43707
ori $26, $26, 52445
sw $26, 100($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 100($0)
# ---> block body <---
lui $0, 5198
sll $0, $30, 2
mflo $0
sb $0, -13590($30)
sb $30, 101($0)
# ---> block tail <---
addiu $26, $0, 14667
addiu $27, $0, 28620
# ---> endpc 3724 <---

# ---> block head <---
# ---> block body <---
lui $12, 27649
slti $12, $12, 624
mfhi $12
srav $12, $12, $28
# ---> block tail <---
# ---> endpc 3734 <---

# ---> block head <---
# ---> block body <---
lui $13, 29198
sltiu $13, $13, 19650
mflo $13
srlv $13, $28, $13
# ---> block tail <---
# ---> endpc 3744 <---

# ---> block head <---
# ---> block body <---
lui $14, 51830
sra $14, $14, 1
mfhi $14
sub $14, $28, $14
# ---> block tail <---
# ---> endpc 3754 <---

# ---> block head <---
# ---> block body <---
lui $16, 43155
srl $15, $16, 1
mflo $15
subu $15, $16, $15
# ---> block tail <---
addiu $15, $0, 30299
addiu $16, $0, 32337
# ---> endpc 376c <---

# ---> block head <---
# ---> block body <---
lui $17, 44980
xori $17, $18, 24236
mfhi $17
xor $17, $17, $18
# ---> block tail <---
# ---> endpc 377c <---

# ---> block head <---
# ---> block body <---
lui $20, 37389
addi $20, $19, 10936
mflo $20
add $20, $20, $19
# ---> block tail <---
# ---> endpc 378c <---

# ---> block head <---
# ---> block body <---
lui $0, 9479
addiu $0, $0, -15603
mfhi $0
addu $21, $21, $0
# ---> block tail <---
# ---> endpc 379c <---

# ---> block head <---
# ---> block body <---
lui $0, 59266
andi $0, $22, 26
mflo $0
and $22, $22, $0
# ---> block tail <---
# ---> endpc 37ac <---

# ---> block head <---
# ---> block body <---
lui $23, 51218
ori $23, $23, 16
mfhi $23
mthi $23
mfhi $23
mflo $23
# ---> block tail <---
# ---> endpc 37c4 <---

# ---> block head <---
# ---> block body <---
lui $24, 29390
sll $24, $24, 3
mflo $24
mtlo $24
mfhi $24
mflo $24
# ---> block tail <---
# ---> endpc 37dc <---

# ---> block head <---
# ---> block body <---
lui $25, 26790
slti $25, $25, 12987
mfhi $25
mult $28, $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 37f4 <---

# ---> block head <---
# ---> block body <---
lui $27, 47850
sltiu $27, $26, 4726
mflo $27
multu $27, $26
mfhi $26
mflo $26
# ---> block tail <---
# ---> endpc 380c <---

# ---> block head <---
mthi $2
# ---> block body <---
lui $28, 36646
sra $29, $28, 3
mfhi $29
div $28, $29
mfhi $28
mflo $28
# ---> block tail <---
addiu $28, $0, -26408
# ---> endpc 382c <---

# ---> block head <---
# ---> block body <---
lui $1, 32677
srl $30, $1, 3
mflo $30
divu $1, $30
mfhi $30
mflo $30
# ---> block tail <---
addiu $1, $0, -22169
# ---> endpc 3848 <---

# ---> block head <---
# ---> block body <---
lui $0, 46660
xori $0, $0, 26221
mfhi $0
mthi $0
mfhi $2
mflo $2
# ---> block tail <---
# ---> endpc 3860 <---

# ---> block head <---
# ---> block body <---
lui $0, 39789
addi $0, $0, 16866
mflo $0
mtlo $0
mfhi $3
mflo $3
# ---> block tail <---
# ---> endpc 3878 <---

# ---> block head <---
# ---> block body <---
lui $4, 30398
addiu $4, $4, 7456
mfhi $4
lbu $28, 56($4)
# ---> block tail <---
# ---> endpc 3888 <---

# ---> block head <---
# ---> block body <---
lui $5, 64906
andi $5, $5, 12
mflo $5
lh $28, 60($5)
# ---> block tail <---
# ---> endpc 3898 <---

# ---> block head <---
# ---> block body <---
lui $6, 20798
ori $6, $6, 8
mfhi $6
lhu $28, 44($6)
# ---> block tail <---
addiu $28, $0, -16200
# ---> endpc 38ac <---

# ---> block head <---
# ---> block body <---
lui $7, 13477
sll $7, $8, 1
mflo $7
lw $8, 64($7)
# ---> block tail <---
# ---> endpc 38bc <---

# ---> block head <---
# ---> block body <---
lui $9, 33859
slti $9, $10, -12070
mfhi $9
lb $10, 12($9)
# ---> block tail <---
# ---> endpc 38cc <---

# ---> block head <---
# ---> block body <---
lui $11, 63332
sltiu $11, $12, 8473
mflo $11
lbu $12, 28($11)
# ---> block tail <---
# ---> endpc 38dc <---

# ---> block head <---
# ---> block body <---
lui $0, 28143
sra $0, $13, 2
mfhi $0
lh $13, 28($0)
# ---> block tail <---
# ---> endpc 38ec <---

# ---> block head <---
# ---> block body <---
lui $0, 3073
srl $0, $14, 3
mflo $0
lhu $14, 20($0)
# ---> block tail <---
# ---> endpc 38fc <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $15, 40299
xori $15, $15, 10675
mfhi $15
bgtz $15, TAG_BGTZ_1
addiu $28, $0, 1
addiu $28, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
# ---> endpc 3918 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $16, 63587
addi $16, $16, 32435
mflo $16
blez $16, TAG_BLEZ_1
addiu $28, $0, 1
addiu $28, $0, 1
TAG_BLEZ_1:
# ---> block tail <---
# ---> endpc 3934 <---

# ---> block head <---
mthi $1
# ---> block body <---
lui $17, 1556
addiu $17, $17, -2973
mfhi $17
bltz $17, TAG_BLTZ_1
addiu $28, $0, 1
addiu $28, $0, 1
TAG_BLTZ_1:
# ---> block tail <---
# ---> endpc 3950 <---

# ---> block head <---
# ---> block body <---
lui $19, 50165
andi $19, $18, 25
mflo $19
bne $19, $0, TAG_BNE_0
addiu $28, $0, 1
addiu $28, $0, 1
TAG_BNE_0:
# ---> block tail <---
# ---> endpc 3968 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $20, 25738
ori $20, $21, 4
mfhi $20
beq $20, $20, TAG_BEQ_1
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BEQ_1:
# ---> block tail <---
# ---> endpc 3984 <---

# ---> block head <---
mtlo $1
# ---> block body <---
lui $23, 42070
sll $22, $23, 4
mflo $22
bgez $22, TAG_BGEZ_1
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BGEZ_1:
# ---> block tail <---
addiu $23, $0, -27462
# ---> endpc 39a4 <---

# ---> block head <---
# ---> block body <---
lui $0, 19086
slti $0, $0, -6852
mfhi $0
bgtz $0, TAG_BGTZ_2
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BGTZ_2:
# ---> block tail <---
# ---> endpc 39bc <---

# ---> block head <---
# ---> block body <---
lui $0, 14720
sltiu $0, $0, 5802
mflo $0
blez $0, TAG_BLEZ_2
addiu $29, $0, 1
addiu $29, $0, 1
TAG_BLEZ_2:
# ---> block tail <---
# ---> endpc 39d4 <---

# ---> block head <---
# ---> block body <---
lui $26, 64359
sra $26, $26, 2
mfhi $26
andi $29, $26, 28716
# ---> block tail <---
# ---> endpc 39e4 <---

# ---> block head <---
# ---> block body <---
lui $27, 29745
srl $27, $27, 3
mflo $27
ori $29, $27, 61489
# ---> block tail <---
# ---> endpc 39f4 <---

# ---> block head <---
# ---> block body <---
lui $28, 43560
xori $28, $28, 60
mfhi $28
sll $29, $28, 2
# ---> block tail <---
addiu $29, $0, 11901
# ---> endpc 3a08 <---

# ---> block head <---
# ---> block body <---
lui $29, 47469
addi $30, $29, 9797
mflo $30
slti $30, $29, -25092
# ---> block tail <---
addiu $29, $0, 23964
# ---> endpc 3a1c <---

# ---> block head <---
# ---> block body <---
lui $2, 43214
addiu $2, $1, -20843
mfhi $2
sltiu $1, $2, -19515
# ---> block tail <---
# ---> endpc 3a2c <---

# ---> block head <---
# ---> block body <---
lui $3, 26837
andi $4, $3, 15
mflo $4
sra $3, $4, 2
# ---> block tail <---
# ---> endpc 3a3c <---

# ---> block head <---
# ---> block body <---
lui $0, 25011
ori $0, $0, 1
mfhi $0
srl $5, $0, 4
# ---> block tail <---
# ---> endpc 3a4c <---

# ---> block head <---
# ---> block body <---
lui $0, 14410
sll $0, $6, 2
mflo $0
xori $6, $0, 42973
# ---> block tail <---
addiu $6, $0, 30756
# ---> endpc 3a60 <---

# ---> block head <---
# ---> block body <---
lui $7, 35278
slti $7, $7, 7812
ori $0, $0, 0
sh $29, 99($7)
sh $7, -23862($29)
# ---> block tail <---
# ---> endpc 3a74 <---

# ---> block head <---
lui $21, 43707
ori $21, $21, 52445
sw $21, 96($0)
lui $22, 43707
ori $22, $22, 52445
sw $22, 108($0)
# ---> block body <---
lui $8, 39902
sltiu $8, $8, -708
ori $0, $0, 0
sw $8, 22265($20)
sw $20, 107($8)
# ---> block tail <---
addiu $21, $0, 21940
addiu $22, $0, 25984
# ---> endpc 3aa8 <---

# ---> block head <---
lui $27, 43707
ori $27, $27, 52445
sw $27, 84($0)
# ---> block body <---
lui $9, 6517
sra $9, $9, 2
ori $0, $0, 0
sb $9, 85($0)
# ---> block tail <---
addiu $9, $0, -5278
addiu $27, $0, 7980
# ---> endpc 3acc <---

# ---> block head <---
lui $8, 43707
ori $8, $8, 52445
sw $8, 128($0)
# ---> block body <---
lui $11, 59751
srl $11, $10, 2
ori $0, $0, 0
sh $11, 129($7)
# ---> block tail <---
addiu $8, $0, -10069
addiu $11, $0, 25620
# ---> endpc 3af0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $28, 43707
ori $28, $28, 52445
sw $28, 140($0)
# ---> block body <---
lui $0, 25523
xori $0, $0, 8461
ori $0, $0, 0
sh $16, 110($0)
sh $0, 142($16)
# ---> block tail <---
addiu $28, $0, 30454
# ---> endpc 3b20 <---

# ---> block head <---
ori $0, $0, 0
lui $7, 43707
ori $7, $7, 52445
sw $7, 104($0)
# ---> block body <---
lui $0, 3851
addi $0, $0, 12580
ori $0, $0, 0
sw $17, 104($0)
sw $0, 22273($17)
# ---> block tail <---
addiu $7, $0, -31802
# ---> endpc 3b48 <---

# ---> block head <---
# ---> block body <---
lui $29, 32554
addiu $29, $29, 17827
ori $0, $0, 0
nor $29, $8, $29
# ---> block tail <---
# ---> endpc 3b58 <---

# ---> block head <---
# ---> block body <---
lui $30, 57899
andi $30, $30, 15
ori $0, $0, 0
or $30, $8, $30
# ---> block tail <---
# ---> endpc 3b68 <---

# ---> block head <---
# ---> block body <---
lui $1, 61305
ori $1, $1, 1
ori $0, $0, 0
sllv $1, $8, $1
# ---> block tail <---
# ---> endpc 3b78 <---

# ---> block head <---
# ---> block body <---
lui $2, 51403
sll $3, $2, 2
ori $0, $0, 0
slt $2, $3, $2
# ---> block tail <---
addiu $3, $0, -1205
# ---> endpc 3b8c <---

# ---> block head <---
# ---> block body <---
lui $4, 19051
slti $5, $4, -16096
ori $0, $0, 0
sltu $4, $4, $5
# ---> block tail <---
# ---> endpc 3b9c <---

# ---> block head <---
# ---> block body <---
lui $7, 36771
sltiu $7, $6, 25932
ori $0, $0, 0
srav $7, $6, $7
# ---> block tail <---
# ---> endpc 3bac <---

# ---> block head <---
# ---> block body <---
lui $0, 41134
sra $0, $8, 1
ori $0, $0, 0
srlv $8, $0, $8
# ---> block tail <---
# ---> endpc 3bbc <---

# ---> block head <---
# ---> block body <---
lui $0, 41134
srl $0, $9, 3
ori $0, $0, 0
sub $9, $0, $9
# ---> block tail <---
# ---> endpc 3bcc <---

# ---> block head <---
# ---> block body <---
lui $10, 48861
xori $10, $10, 4857
ori $0, $0, 0
mult $8, $10
mfhi $10
mflo $10
# ---> block tail <---
# ---> endpc 3be4 <---

# ---> block head <---
# ---> block body <---
lui $11, 25643
addi $11, $11, -6098
ori $0, $0, 0
multu $11, $8
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 3bfc <---

# ---> block head <---
# ---> block body <---
lui $12, 50253
addiu $12, $12, 24909
ori $0, $0, 0
div $8, $12
mfhi $12
mflo $12
# ---> block tail <---
# ---> endpc 3c14 <---

# ---> block head <---
# ---> block body <---
lui $13, 34900
ori $13, $14, 17745
ori $0, $0, 0
divu $14, $13
mfhi $13
mflo $13
# ---> block tail <---
# ---> endpc 3c2c <---

# ---> block head <---
# ---> block body <---
lui $16, 39924
andi $15, $16, 12
ori $0, $0, 0
mthi $15
mfhi $15
mflo $15
# ---> block tail <---
addiu $16, $0, -12959
# ---> endpc 3c48 <---

# ---> block head <---
# ---> block body <---
lui $17, 55924
sll $18, $17, 3
ori $0, $0, 0
mtlo $18
mfhi $17
mflo $17
# ---> block tail <---
addiu $17, $0, -26598
addiu $18, $0, 23608
# ---> endpc 3c68 <---

# ---> block head <---
# ---> block body <---
lui $0, 49627
slti $0, $0, -1405
ori $0, $0, 0
mult $19, $0
mfhi $19
mflo $19
# ---> block tail <---
# ---> endpc 3c80 <---

# ---> block head <---
# ---> block body <---
lui $0, 3622
sltiu $0, $0, -26025
ori $0, $0, 0
multu $20, $0
mfhi $20
mflo $20
# ---> block tail <---
# ---> endpc 3c98 <---

# ---> block head <---
# ---> block body <---
lui $21, 26139
sra $21, $21, 16
ori $0, $0, 0
lw $8, -26111($21)
# ---> block tail <---
# ---> endpc 3ca8 <---

# ---> block head <---
# ---> block body <---
lui $22, 34306
srl $22, $22, 17
ori $0, $0, 0
lb $8, -17153($22)
# ---> block tail <---
# ---> endpc 3cb8 <---

# ---> block head <---
# ---> block body <---
lui $0, 26369
xori $0, $0, 22189
ori $0, $0, 0
lb $30, 8($0)
# ---> block tail <---
# ---> endpc 3cc8 <---

# ---> block head <---
# ---> block body <---
lui $0, 18134
addi $0, $0, -2599
ori $0, $0, 0
lbu $1, 4($0)
# ---> block tail <---
# ---> endpc 3cd8 <---

# ---> block head <---
# ---> block body <---
lui $2, 18500
addiu $2, $2, 4882
ori $0, $0, 0
bltz $2, TAG_BLTZ_2
addiu $8, $0, 1
addiu $8, $0, 1
TAG_BLTZ_2:
# ---> block tail <---
addiu $2, $0, 2855
# ---> endpc 3cf4 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $3, 50544
andi $3, $3, 26
ori $0, $0, 0
bne $3, $10, TAG_BNE_2
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BNE_2:
# ---> block tail <---
# ---> endpc 3d10 <---

# ---> block head <---
lui $16, 6717
ori $16, $16, 16
# ---> block body <---
lui $4, 6717
ori $4, $4, 16
ori $0, $0, 0
beq $16, $4, TAG_BEQ_4
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BEQ_4:
# ---> block tail <---
addiu $4, $0, 24504
addiu $16, $0, 8209
# ---> endpc 3d38 <---

# ---> block head <---
# ---> block body <---
lui $5, 38994
sra $5, $6, 4
ori $0, $0, 0
bgez $5, TAG_BGEZ_2
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
# ---> endpc 3d50 <---

# ---> block head <---
# ---> block body <---
lui $7, 7117
srl $7, $8, 1
ori $0, $0, 0
bgtz $7, TAG_BGTZ_3
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BGTZ_3:
# ---> block tail <---
# ---> endpc 3d68 <---

# ---> block head <---
# ---> block body <---
lui $10, 60816
xori $9, $10, 15130
ori $0, $0, 0
blez $9, TAG_BLEZ_3
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BLEZ_3:
# ---> block tail <---
addiu $9, $0, -5514
addiu $10, $0, 18339
# ---> endpc 3d88 <---

# ---> block head <---
# ---> block body <---
lui $0, 35474
sll $0, $11, 1
ori $0, $0, 0
bltz $0, TAG_BLTZ_3
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BLTZ_3:
# ---> block tail <---
# ---> endpc 3da0 <---

# ---> block head <---
# ---> block body <---
lui $0, 9736
slti $0, $0, -25591
ori $0, $0, 0
bne $0, $12, TAG_BNE_3
addiu $17, $0, 1
addiu $17, $0, 1
TAG_BNE_3:
# ---> block tail <---
# ---> endpc 3db8 <---

# ---> block head <---
# ---> block body <---
lui $13, 46295
sltiu $13, $13, -10937
ori $0, $0, 0
addi $17, $13, -31098
# ---> block tail <---
# ---> endpc 3dc8 <---

# ---> block head <---
# ---> block body <---
lui $14, 30067
addi $14, $14, 11533
ori $0, $0, 0
addiu $17, $14, 1465
# ---> block tail <---
addiu $14, $0, 2440
addiu $17, $0, -12845
# ---> endpc 3de0 <---

# ---> block head <---
# ---> block body <---
lui $15, 62936
addiu $15, $15, -29357
ori $0, $0, 0
andi $17, $15, 52865
# ---> block tail <---
addiu $15, $0, -23230
addiu $17, $0, -32275
# ---> endpc 3df8 <---

# ---> block head <---
# ---> block body <---
lui $16, 59976
andi $17, $16, 14
ori $0, $0, 0
ori $16, $17, 52264
# ---> block tail <---
addiu $16, $0, 18494
# ---> endpc 3e0c <---

# ---> block head <---
# ---> block body <---
lui $19, 16648
ori $18, $19, 8
ori $0, $0, 0
sll $19, $18, 2
# ---> block tail <---
addiu $18, $0, -4931
addiu $19, $0, 8787
# ---> endpc 3e24 <---

# ---> block head <---
# ---> block body <---
lui $21, 8392
sll $20, $21, 3
ori $0, $0, 0
slti $21, $20, 1181
# ---> block tail <---
addiu $20, $0, -23409
# ---> endpc 3e38 <---

# ---> block head <---
# ---> block body <---
lui $0, 30463
slti $0, $0, 16189
ori $0, $0, 0
sltiu $22, $0, 10272
# ---> block tail <---
# ---> endpc 3e48 <---

# ---> block head <---
# ---> block body <---
lui $0, 36781
sltiu $0, $0, 18849
ori $0, $0, 0
sra $23, $0, 1
# ---> block tail <---
# ---> endpc 3e58 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $24, 39318
sra $24, $24, 2
sub $24, $24, $20
sb $24, 130($0)
# ---> block tail <---
addiu $24, $0, -15372
# ---> endpc 3e70 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 144($0)
# ---> block body <---
lui $25, 39248
srl $25, $25, 1
subu $25, $30, $25
sh $25, 80($1)
# ---> block tail <---
addiu $2, $0, -30046
addiu $25, $0, -19811
# ---> endpc 3e94 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $26, 15761
xori $26, $26, 29247
xor $26, $19, $26
sw $26, 84($0)
# ---> block tail <---
addiu $26, $0, 8873
# ---> endpc 3ebc <---

# ---> block head <---
lui $29, 43707
ori $29, $29, 52445
sw $29, 92($0)
# ---> block body <---
lui $28, 19608
addi $27, $28, -17964
addu $27, $28, $27
sb $27, -8780($26)
# ---> block tail <---
addiu $27, $0, 94
addiu $28, $0, 5311
addiu $29, $0, 18885
# ---> endpc 3ee4 <---

# ---> block head <---
lui $7, 43707
ori $7, $7, 52445
sw $7, 120($0)
# ---> block body <---
lui $30, 61891
addiu $29, $30, -26521
addu $29, $30, $29
sh $29, -30636($6)
# ---> block tail <---
addiu $7, $0, -29920
addiu $29, $0, -6893
addiu $30, $0, -1881
# ---> endpc 3f0c <---

# ---> block head <---
lui $15, 43707
ori $15, $15, 52445
sw $15, 116($0)
# ---> block body <---
lui $1, 23378
andi $1, $2, 5
and $1, $1, $2
sw $14, 92($1)
sw $1, -2324($14)
# ---> block tail <---
addiu $15, $0, 11526
# ---> endpc 3f30 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $26, 43707
ori $26, $26, 52445
sw $26, 116($0)
# ---> block body <---
lui $0, 49697
ori $0, $0, 16
nor $0, $3, $0
sb $0, 122($3)
sb $3, 117($0)
# ---> block tail <---
addiu $26, $0, -3060
# ---> endpc 3f5c <---

# ---> block head <---
lui $11, 43707
ori $11, $11, 52445
sw $11, 92($0)
lui $12, 43707
ori $12, $12, 52445
sw $12, 136($0)
# ---> block body <---
lui $0, 44440
sll $0, $4, 3
or $0, $0, $4
sh $4, 92($0)
sh $0, -24366($4)
# ---> block tail <---
addiu $11, $0, 444
addiu $12, $0, 30418
# ---> endpc 3f90 <---

# ---> block head <---
# ---> block body <---
lui $16, 7013
slti $16, $16, -21504
sllv $16, $16, $4
subu $16, $16, $13
# ---> block tail <---
# ---> endpc 3fa0 <---

# ---> block head <---
# ---> block body <---
lui $17, 27371
sltiu $17, $17, 17964
slt $17, $17, $13
xor $17, $14, $17
# ---> block tail <---
# ---> endpc 3fb0 <---

ori $v0, $zero, 10
syscall
