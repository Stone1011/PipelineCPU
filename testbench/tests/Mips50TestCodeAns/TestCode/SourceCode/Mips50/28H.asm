# ---> init memory <---
addiu $1, $0, -23243
sw $1, 0($0)
addiu $1, $0, -27122
sw $1, 4($0)
addiu $1, $0, -25053
sw $1, 8($0)
addiu $1, $0, 11806
sw $1, 12($0)
addiu $1, $0, 24428
sw $1, 16($0)
addiu $1, $0, 32260
sw $1, 20($0)
addiu $1, $0, 7895
sw $1, 24($0)
addiu $1, $0, -3467
sw $1, 28($0)
addiu $1, $0, 4842
sw $1, 32($0)
addiu $1, $0, 12652
sw $1, 36($0)
addiu $1, $0, -24077
sw $1, 40($0)
addiu $1, $0, -13826
sw $1, 44($0)
addiu $1, $0, 25894
sw $1, 48($0)
addiu $1, $0, -5961
sw $1, 52($0)
addiu $1, $0, 20990
sw $1, 56($0)
addiu $1, $0, -9283
sw $1, 60($0)
addiu $1, $0, 22901
sw $1, 64($0)
addiu $1, $0, -7998
sw $1, 68($0)
addiu $1, $0, 25456
sw $1, 72($0)

# ---> init hi lo <---
addiu $1, $0, -13136
mthi $1
addiu $1, $0, -21150
mtlo $1

# ---> init register <---
addiu $1, $0, 14094
addiu $2, $0, 10692
addiu $3, $0, -20590
addiu $4, $0, -27404
addiu $5, $0, 6914
addiu $6, $0, 20600
addiu $7, $0, -6953
addiu $8, $0, 24987
addiu $9, $0, 1216
addiu $10, $0, 26311
addiu $11, $0, -19568
addiu $12, $0, 6304
addiu $13, $0, -25600
addiu $14, $0, 32509
addiu $15, $0, -1300
addiu $16, $0, 13817
addiu $17, $0, 2631
addiu $18, $0, 25748
addiu $19, $0, -26622
addiu $20, $0, -31734
addiu $21, $0, -19260
addiu $22, $0, 7942
addiu $23, $0, -10317
addiu $24, $0, -5426
addiu $25, $0, 14391
addiu $26, $0, 7924
addiu $27, $0, -10210
addiu $28, $0, -24760
addiu $29, $0, -443
addiu $30, $0, -26699
addiu $31, $0, 7019

# ---> start at 3120 <---

# ---> block head <---
# ---> block body <---
lui $0, 37098
ori $0, $0, 0
mfhi $0
div $0, $1
mfhi $29
mflo $29
# ---> block tail <---
# ---> endpc 3138 <---

# ---> block head <---
# ---> block body <---
lui $0, 13329
ori $0, $0, 0
mflo $0
divu $0, $1
mfhi $30
mflo $30
# ---> block tail <---
# ---> endpc 3150 <---

# ---> block head <---
# ---> block body <---
lui $1, 13820
ori $0, $0, 0
mfhi $1
lb $21, 68($1)
# ---> block tail <---
# ---> endpc 3160 <---

# ---> block head <---
# ---> block body <---
lui $2, 26270
ori $0, $0, 0
mflo $2
lbu $21, 20($2)
# ---> block tail <---
# ---> endpc 3170 <---

# ---> block head <---
# ---> block body <---
lui $3, 64361
ori $0, $0, 0
mfhi $3
lh $21, 52($3)
# ---> block tail <---
# ---> endpc 3180 <---

# ---> block head <---
# ---> block body <---
lui $4, 44077
ori $0, $0, 0
mflo $4
lhu $5, 16($4)
# ---> block tail <---
# ---> endpc 3190 <---

# ---> block head <---
# ---> block body <---
lui $6, 19552
ori $0, $0, 0
mfhi $6
lw $7, 24($6)
# ---> block tail <---
# ---> endpc 31a0 <---

# ---> block head <---
# ---> block body <---
lui $9, 56110
ori $0, $0, 0
mflo $8
lb $9, 68($8)
# ---> block tail <---
# ---> endpc 31b0 <---

# ---> block head <---
# ---> block body <---
lui $0, 61436
ori $0, $0, 0
mfhi $0
lbu $10, 16($0)
# ---> block tail <---
# ---> endpc 31c0 <---

# ---> block head <---
# ---> block body <---
lui $0, 50819
ori $0, $0, 0
mflo $0
lh $11, 56($0)
# ---> block tail <---
# ---> endpc 31d0 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $12, 39478
ori $0, $0, 0
mfhi $12
bgtz $12, TAG_BGTZ_1
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BGTZ_1:
# ---> block tail <---
# ---> endpc 31ec <---

# ---> block head <---
# ---> block body <---
lui $13, 34051
ori $0, $0, 0
mflo $13
blez $13, TAG_BLEZ_0
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BLEZ_0:
# ---> block tail <---
# ---> endpc 3204 <---

# ---> block head <---
# ---> block body <---
lui $14, 58998
ori $0, $0, 0
mfhi $14
bltz $14, TAG_BLTZ_0
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BLTZ_0:
# ---> block tail <---
# ---> endpc 321c <---

# ---> block head <---
# ---> block body <---
lui $16, 52386
ori $0, $0, 0
mflo $16
bne $16, $0, TAG_BNE_0
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BNE_0:
# ---> block tail <---
# ---> endpc 3234 <---

# ---> block head <---
# ---> block body <---
lui $17, 18744
ori $0, $0, 0
mfhi $18
beq $0, $18, TAG_BEQ_0
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BEQ_0:
# ---> block tail <---
addiu $17, $0, -24392
# ---> endpc 3250 <---

# ---> block head <---
# ---> block body <---
lui $19, 63647
ori $0, $0, 0
mflo $19
bgez $19, TAG_BGEZ_0
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BGEZ_0:
# ---> block tail <---
# ---> endpc 3268 <---

# ---> block head <---
# ---> block body <---
lui $0, 58686
ori $0, $0, 0
mfhi $0
bgtz $0, TAG_BGTZ_2
addiu $22, $0, 1
addiu $22, $0, 1
TAG_BGTZ_2:
# ---> block tail <---
# ---> endpc 3280 <---

# ---> block head <---
# ---> block body <---
lui $0, 15928
ori $0, $0, 0
mflo $0
blez $0, TAG_BLEZ_1
addiu $21, $0, 1
addiu $21, $0, 1
TAG_BLEZ_1:
# ---> block tail <---
# ---> endpc 3298 <---

# ---> block head <---
# ---> block body <---
lui $23, 47352
ori $0, $0, 0
mfhi $23
srl $21, $23, 4
# ---> block tail <---
# ---> endpc 32a8 <---

# ---> block head <---
# ---> block body <---
lui $24, 26955
ori $0, $0, 0
mflo $24
xori $21, $24, 28087
# ---> block tail <---
# ---> endpc 32b8 <---

# ---> block head <---
# ---> block body <---
lui $25, 37353
ori $0, $0, 0
mfhi $25
addi $21, $25, 8813
# ---> block tail <---
# ---> endpc 32c8 <---

# ---> block head <---
# ---> block body <---
lui $26, 1102
ori $0, $0, 0
mflo $27
addiu $26, $27, -10764
# ---> block tail <---
# ---> endpc 32d8 <---

# ---> block head <---
# ---> block body <---
lui $28, 24060
ori $0, $0, 0
mfhi $29
andi $28, $29, 38265
# ---> block tail <---
# ---> endpc 32e8 <---

# ---> block head <---
# ---> block body <---
lui $30, 6049
ori $0, $0, 0
mflo $30
ori $1, $30, 65429
# ---> block tail <---
addiu $1, $0, -11610
# ---> endpc 32fc <---

# ---> block head <---
# ---> block body <---
lui $0, 57564
ori $0, $0, 0
mfhi $0
sll $2, $0, 4
# ---> block tail <---
# ---> endpc 330c <---

# ---> block head <---
# ---> block body <---
lui $0, 2228
ori $0, $0, 0
mflo $0
slti $3, $0, 20533
# ---> block tail <---
# ---> endpc 331c <---

# ---> block head <---
lui $24, 43707
ori $24, $24, 52445
sw $24, 136($0)
# ---> block body <---
lui $4, 52880
ori $0, $0, 0
ori $0, $0, 0
sw $4, 11746($1)
# ---> block tail <---
addiu $4, $0, -8937
addiu $24, $0, 16458
# ---> endpc 3340 <---

# ---> block head <---
lui $28, 43707
ori $28, $28, 52445
sw $28, 152($0)
# ---> block body <---
lui $5, 16608
ori $0, $0, 0
ori $0, $0, 0
sb $5, 11762($1)
# ---> block tail <---
addiu $5, $0, 2604
addiu $28, $0, -9943
# ---> endpc 3364 <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 112($0)
# ---> block body <---
lui $6, 22711
ori $0, $0, 0
ori $0, $0, 0
sh $6, 11724($1)
# ---> block tail <---
addiu $3, $0, -8450
addiu $6, $0, -25857
# ---> endpc 3388 <---

# ---> block head <---
lui $14, 43707
ori $14, $14, 52445
sw $14, 148($0)
# ---> block body <---
lui $8, 32849
ori $0, $0, 0
ori $0, $0, 0
sw $8, 148($13)
# ---> block tail <---
addiu $8, $0, -14488
addiu $14, $0, -26563
# ---> endpc 33ac <---

# ---> block head <---
lui $22, 43707
ori $22, $22, 52445
sw $22, 108($0)
# ---> block body <---
lui $10, 46593
ori $0, $0, 0
ori $0, $0, 0
sb $10, 111($0)
# ---> block tail <---
addiu $10, $0, -24546
addiu $22, $0, 21244
# ---> endpc 33d0 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $12, 38122
ori $0, $0, 0
ori $0, $0, 0
sh $12, 10051($28)
# ---> block tail <---
addiu $12, $0, -31138
# ---> endpc 33ec <---

# ---> block head <---
lui $11, 43707
ori $11, $11, 52445
sw $11, 128($0)
lui $12, 43707
ori $12, $12, 52445
sw $12, 100($0)
# ---> block body <---
lui $0, 18670
ori $0, $0, 0
ori $0, $0, 0
sw $0, 128($0)
sw $0, 100($0)
# ---> block tail <---
addiu $11, $0, -13681
addiu $12, $0, -28162
# ---> endpc 3420 <---

# ---> block head <---
lui $26, 43707
ori $26, $26, 52445
sw $26, 144($0)
lui $27, 43707
ori $27, $27, 52445
sw $27, 92($0)
# ---> block body <---
lui $0, 59922
ori $0, $0, 0
ori $0, $0, 0
sb $0, 26707($14)
sb $14, 95($0)
# ---> block tail <---
addiu $26, $0, 18596
addiu $27, $0, 10581
# ---> endpc 3454 <---

# ---> block head <---
# ---> block body <---
lui $15, 16560
ori $0, $0, 0
ori $0, $0, 0
add $15, $14, $15
# ---> block tail <---
addiu $15, $0, 26126
# ---> endpc 3468 <---

# ---> block head <---
# ---> block body <---
lui $16, 12483
ori $0, $0, 0
ori $0, $0, 0
addu $16, $16, $0
# ---> block tail <---
addiu $16, $0, -10534
# ---> endpc 347c <---

# ---> block head <---
# ---> block body <---
lui $17, 47827
ori $0, $0, 0
ori $0, $0, 0
and $17, $17, $14
# ---> block tail <---
addiu $17, $0, -17553
# ---> endpc 3490 <---

# ---> block head <---
# ---> block body <---
lui $18, 25494
ori $0, $0, 0
ori $0, $0, 0
nor $18, $18, $19
# ---> block tail <---
addiu $18, $0, -18545
# ---> endpc 34a4 <---

# ---> block head <---
# ---> block body <---
lui $21, 1363
ori $0, $0, 0
ori $0, $0, 0
or $21, $21, $20
# ---> block tail <---
# ---> endpc 34b4 <---

# ---> block head <---
# ---> block body <---
lui $22, 8748
ori $0, $0, 0
ori $0, $0, 0
sllv $23, $22, $23
# ---> block tail <---
addiu $22, $0, -4443
addiu $23, $0, -18597
# ---> endpc 34cc <---

# ---> block head <---
# ---> block body <---
lui $0, 8520
ori $0, $0, 0
ori $0, $0, 0
slt $24, $24, $0
# ---> block tail <---
# ---> endpc 34dc <---

# ---> block head <---
# ---> block body <---
lui $0, 33429
ori $0, $0, 0
ori $0, $0, 0
sltu $25, $0, $25
# ---> block tail <---
# ---> endpc 34ec <---

# ---> block head <---
# ---> block body <---
lui $26, 9423
ori $0, $0, 0
ori $0, $0, 0
mthi $26
mfhi $26
mflo $26
# ---> block tail <---
# ---> endpc 3504 <---

# ---> block head <---
# ---> block body <---
lui $27, 63956
ori $0, $0, 0
ori $0, $0, 0
mtlo $27
mfhi $27
mflo $27
# ---> block tail <---
addiu $27, $0, -5179
# ---> endpc 3520 <---

# ---> block head <---
# ---> block body <---
lui $28, 6853
ori $0, $0, 0
ori $0, $0, 0
mult $14, $28
mfhi $28
mflo $28
# ---> block tail <---
addiu $28, $0, 21691
# ---> endpc 353c <---

# ---> block head <---
# ---> block body <---
lui $29, 49900
ori $0, $0, 0
ori $0, $0, 0
multu $29, $30
mfhi $29
mflo $29
# ---> block tail <---
# ---> endpc 3554 <---

# ---> block head <---
# ---> block body <---
lui $2, 53422
ori $0, $0, 0
ori $0, $0, 0
div $1, $2
mfhi $1
mflo $1
# ---> block tail <---
addiu $2, $0, -8031
# ---> endpc 3570 <---

# ---> block head <---
# ---> block body <---
lui $4, 30169
ori $0, $0, 0
ori $0, $0, 0
divu $3, $4
mfhi $3
mflo $3
# ---> block tail <---
addiu $4, $0, 21088
# ---> endpc 358c <---

# ---> block head <---
# ---> block body <---
lui $0, 30487
ori $0, $0, 0
ori $0, $0, 0
mthi $0
mfhi $5
mflo $5
# ---> block tail <---
# ---> endpc 35a4 <---

# ---> block head <---
# ---> block body <---
lui $0, 28688
ori $0, $0, 0
ori $0, $0, 0
mtlo $0
mfhi $6
mflo $6
# ---> block tail <---
# ---> endpc 35bc <---

# ---> block head <---
# ---> block body <---
lui $7, 40131
ori $0, $0, 0
ori $0, $0, 0
bltz $7, TAG_BLTZ_1
addiu $14, $0, 1
addiu $14, $0, 1
TAG_BLTZ_1:
# ---> block tail <---
addiu $7, $0, 27020
# ---> endpc 35d8 <---

# ---> block head <---
lui $3, 16239
ori $3, $3, 0
# ---> block body <---
lui $8, 16239
ori $0, $0, 0
ori $0, $0, 0
bne $8, $3, TAG_BNE_3
addiu $4, $0, 1
addiu $4, $0, 1
TAG_BNE_3:
# ---> block tail <---
addiu $3, $0, -9796
addiu $8, $0, 7662
# ---> endpc 3600 <---

# ---> block head <---
lui $10, 28172
ori $10, $10, 0
# ---> block body <---
lui $9, 28172
ori $0, $0, 0
ori $0, $0, 0
beq $9, $10, TAG_BEQ_3
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BEQ_3:
# ---> block tail <---
addiu $9, $0, 4140
addiu $10, $0, 15294
# ---> endpc 3628 <---

# ---> block head <---
# ---> block body <---
lui $10, 48811
ori $0, $0, 0
ori $0, $0, 0
bgez $10, TAG_BGEZ_1
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BGEZ_1:
# ---> block tail <---
addiu $10, $0, -30349
# ---> endpc 3644 <---

# ---> block head <---
# ---> block body <---
lui $12, 19615
ori $0, $0, 0
ori $0, $0, 0
bgtz $12, TAG_BGTZ_3
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BGTZ_3:
# ---> block tail <---
addiu $12, $0, -13457
# ---> endpc 3660 <---

# ---> block head <---
# ---> block body <---
lui $14, 54225
ori $0, $0, 0
ori $0, $0, 0
blez $14, TAG_BLEZ_2
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BLEZ_2:
# ---> block tail <---
addiu $14, $0, 8002
# ---> endpc 367c <---

# ---> block head <---
# ---> block body <---
lui $0, 11815
ori $0, $0, 0
ori $0, $0, 0
bltz $0, TAG_BLTZ_2
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BLTZ_2:
# ---> block tail <---
# ---> endpc 3694 <---

# ---> block head <---
# ---> block body <---
lui $0, 28303
ori $0, $0, 0
ori $0, $0, 0
bne $17, $0, TAG_BNE_4
addiu $9, $0, 1
addiu $9, $0, 1
TAG_BNE_4:
# ---> block tail <---
# ---> endpc 36ac <---

# ---> block head <---
# ---> block body <---
lui $18, 23547
ori $0, $0, 0
ori $0, $0, 0
sltiu $9, $18, 16113
# ---> block tail <---
addiu $18, $0, 20156
# ---> endpc 36c0 <---

# ---> block head <---
# ---> block body <---
lui $19, 45564
ori $0, $0, 0
ori $0, $0, 0
sra $9, $19, 2
# ---> block tail <---
addiu $9, $0, -7194
addiu $19, $0, -20197
# ---> endpc 36d8 <---

# ---> block head <---
# ---> block body <---
lui $20, 62402
ori $0, $0, 0
ori $0, $0, 0
srl $9, $20, 4
# ---> block tail <---
addiu $9, $0, 13218
addiu $20, $0, 7106
# ---> endpc 36f0 <---

# ---> block head <---
# ---> block body <---
lui $21, 32162
ori $0, $0, 0
ori $0, $0, 0
xori $21, $22, 40809
# ---> block tail <---
addiu $21, $0, -19825
# ---> endpc 3704 <---

# ---> block head <---
# ---> block body <---
lui $24, 44987
ori $0, $0, 0
ori $0, $0, 0
addi $23, $24, -21195
# ---> block tail <---
addiu $23, $0, -19763
addiu $24, $0, 30735
# ---> endpc 371c <---

# ---> block head <---
# ---> block body <---
lui $25, 38503
ori $0, $0, 0
ori $0, $0, 0
addiu $25, $26, -8662
# ---> block tail <---
# ---> endpc 372c <---

# ---> block head <---
# ---> block body <---
lui $0, 34806
ori $0, $0, 0
ori $0, $0, 0
andi $27, $0, 45527
# ---> block tail <---
# ---> endpc 373c <---

# ---> block head <---
# ---> block body <---
lui $0, 21813
ori $0, $0, 0
ori $0, $0, 0
ori $28, $0, 12451
# ---> block tail <---
# ---> endpc 374c <---

# ---> block head <---
lui $17, 43707
ori $17, $17, 52445
sw $17, 88($0)
# ---> block body <---
lui $29, 554
ori $0, $0, 0
sub $29, $16, $29
sh $29, 88($1)
# ---> block tail <---
addiu $17, $0, 5568
addiu $29, $0, 19850
# ---> endpc 3770 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $30, 35827
ori $0, $0, 0
subu $30, $26, $30
sw $30, 92($1)
# ---> block tail <---
addiu $30, $0, -16479
# ---> endpc 3790 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $18, 43707
ori $18, $18, 52445
sw $18, 116($0)
# ---> block body <---
lui $1, 54137
ori $0, $0, 0
xor $1, $1, $17
sb $1, 8150($2)
# ---> block tail <---
addiu $1, $0, 1314
addiu $18, $0, 1678
# ---> endpc 37bc <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
lui $4, 43707
ori $4, $4, 52445
sw $4, 128($0)
# ---> block body <---
lui $2, 13844
ori $0, $0, 0
add $2, $2, $3
sh $2, 16609($30)
# ---> block tail <---
addiu $2, $0, 29851
addiu $4, $0, 21622
# ---> endpc 37e8 <---

# ---> block head <---
# ---> block body <---
lui $5, 12526
ori $0, $0, 0
addu $4, $4, $5
sw $4, 9924($3)
# ---> block tail <---
addiu $4, $0, -26188
addiu $5, $0, 3033
# ---> endpc 3800 <---

# ---> block head <---
ori $0, $0, 0
lui $17, 43707
ori $17, $17, 52445
sw $17, 144($0)
# ---> block body <---
lui $7, 59360
ori $0, $0, 0
and $6, $6, $7
sb $7, 145($6)
# ---> block tail <---
addiu $7, $0, -3434
addiu $17, $0, 5923
# ---> endpc 3828 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
ori $0, $0, 0
lui $27, 43707
ori $27, $27, 52445
sw $27, 140($0)
# ---> block body <---
lui $0, 44004
ori $0, $0, 0
nor $0, $0, $8
sh $8, 140($0)
sh $0, -7534($8)
# ---> block tail <---
addiu $27, $0, -14129
# ---> endpc 3858 <---

# ---> block head <---
lui $3, 43707
ori $3, $3, 52445
sw $3, 124($0)
# ---> block body <---
lui $0, 44838
ori $0, $0, 0
or $0, $9, $0
sw $0, 124($0)
sw $0, 88($0)
# ---> block tail <---
addiu $3, $0, 2616
# ---> endpc 387c <---

# ---> block head <---
# ---> block body <---
lui $21, 57357
ori $0, $0, 0
sllv $21, $4, $21
srav $21, $5, $21
# ---> block tail <---
# ---> endpc 388c <---

# ---> block head <---
# ---> block body <---
lui $22, 42052
ori $0, $0, 0
slt $22, $5, $22
srlv $22, $6, $22
# ---> block tail <---
# ---> endpc 389c <---

# ---> block head <---
# ---> block body <---
lui $23, 13993
ori $0, $0, 0
sltu $23, $6, $23
sub $23, $7, $23
# ---> block tail <---
# ---> endpc 38ac <---

# ---> block head <---
# ---> block body <---
lui $25, 52634
ori $0, $0, 0
srav $24, $25, $24
subu $25, $25, $24
# ---> block tail <---
addiu $25, $0, 32053
# ---> endpc 38c0 <---

# ---> block head <---
# ---> block body <---
lui $26, 20495
ori $0, $0, 0
srlv $26, $27, $26
xor $27, $26, $27
# ---> block tail <---
# ---> endpc 38d0 <---

# ---> block head <---
# ---> block body <---
lui $29, 4062
ori $0, $0, 0
sub $28, $29, $28
add $28, $29, $28
# ---> block tail <---
addiu $28, $0, 21762
addiu $29, $0, 5925
# ---> endpc 38e8 <---

# ---> block head <---
# ---> block body <---
lui $0, 47862
ori $0, $0, 0
subu $0, $30, $0
addu $30, $30, $0
# ---> block tail <---
# ---> endpc 38f8 <---

# ---> block head <---
# ---> block body <---
lui $0, 14487
ori $0, $0, 0
xor $0, $1, $0
and $1, $0, $1
# ---> block tail <---
# ---> endpc 3908 <---

# ---> block head <---
# ---> block body <---
lui $2, 43767
ori $0, $0, 0
add $2, $7, $2
mult $2, $8
mfhi $2
mflo $2
# ---> block tail <---
addiu $2, $0, 6079
# ---> endpc 3924 <---

# ---> block head <---
# ---> block body <---
lui $3, 60665
ori $0, $0, 0
addu $3, $3, $8
multu $3, $9
mfhi $3
mflo $3
# ---> block tail <---
addiu $3, $0, -25134
# ---> endpc 3940 <---

# ---> block head <---
# ---> block body <---
lui $4, 15826
ori $0, $0, 0
or $4, $4, $9
div $10, $4
mfhi $4
mflo $4
# ---> block tail <---
# ---> endpc 3958 <---

# ---> block head <---
# ---> block body <---
lui $5, 57360
ori $0, $0, 0
sllv $6, $5, $6
divu $5, $6
mfhi $5
mflo $5
# ---> block tail <---
addiu $6, $0, 30618
# ---> endpc 3974 <---

# ---> block head <---
# ---> block body <---
lui $8, 36669
ori $0, $0, 0
and $8, $7, $8
mthi $8
mfhi $7
mflo $7
# ---> block tail <---
addiu $8, $0, -19670
# ---> endpc 3990 <---

# ---> block head <---
# ---> block body <---
lui $9, 18956
ori $0, $0, 0
nor $9, $10, $9
mtlo $9
mfhi $9
mflo $9
# ---> block tail <---
# ---> endpc 39a8 <---

# ---> block head <---
# ---> block body <---
lui $0, 12893
ori $0, $0, 0
slt $0, $0, $11
mult $11, $0
mfhi $11
mflo $11
# ---> block tail <---
# ---> endpc 39c0 <---

# ---> block head <---
# ---> block body <---
lui $0, 63984
ori $0, $0, 0
sltu $0, $0, $12
multu $0, $12
mfhi $12
mflo $12
# ---> block tail <---
# ---> endpc 39d8 <---

# ---> block head <---
# ---> block body <---
lui $13, 20404
ori $0, $0, 0
srav $13, $13, $10
lhu $11, -2478($13)
# ---> block tail <---
# ---> endpc 39e8 <---

# ---> block head <---
addiu $12, $0, 21
# ---> block body <---
lui $14, 61855
ori $0, $0, 0
srlv $14, $14, $12
lw $13, -1908($14)
# ---> block tail <---
# ---> endpc 39fc <---

# ---> block head <---
lui $16, 57821
ori $16, $16, 34847
# ---> block body <---
lui $15, 57822
ori $0, $0, 0
sub $15, $16, $15
lb $17, 30753($15)
# ---> block tail <---
addiu $16, $0, 21076
# ---> endpc 3a18 <---

# ---> block head <---
ori $0, $0, 0
ori $19, $0, 39695
# ---> block body <---
lui $17, 45964
ori $0, $0, 0
subu $16, $19, $16
lbu $17, -18607($16)
# ---> block tail <---
addiu $19, $0, -25459
# ---> endpc 3a34 <---

# ---> block head <---
ori $0, $0, 0
addiu $21, $0, -4021
# ---> block body <---
lui $19, 42974
ori $0, $0, 0
xor $18, $21, $18
lh $19, 2391($18)
# ---> block tail <---
# ---> endpc 3a4c <---

# ---> block head <---
lui $24, 54382
ori $24, $24, 10927
# ---> block body <---
lui $21, 11154
ori $0, $0, 0
add $20, $21, $24
lhu $21, -10879($20)
# ---> block tail <---
addiu $24, $0, 6172
# ---> endpc 3a68 <---

# ---> block head <---
# ---> block body <---
lui $0, 13234
ori $0, $0, 0
addu $0, $22, $0
lw $22, 56($0)
# ---> block tail <---
# ---> endpc 3a78 <---

# ---> block head <---
# ---> block body <---
lui $0, 34500
ori $0, $0, 0
and $0, $23, $23
lb $23, 64($0)
# ---> block tail <---
# ---> endpc 3a88 <---

# ---> block head <---
lui $4, 38163
ori $4, $4, 59456
# ---> block body <---
lui $24, 27372
ori $0, $0, 0
nor $24, $24, $2
beq $24, $4, TAG_BEQ_6
addiu $5, $0, 1
addiu $5, $0, 1
TAG_BEQ_6:
# ---> block tail <---
addiu $4, $0, -9075
addiu $24, $0, -4789
# ---> endpc 3ab0 <---

# ---> block head <---
# ---> block body <---
lui $25, 31091
ori $0, $0, 0
sub $25, $5, $25
bgez $25, TAG_BGEZ_2
addiu $6, $0, 1
addiu $6, $0, 1
TAG_BGEZ_2:
# ---> block tail <---
addiu $25, $0, -26472
# ---> endpc 3acc <---

# ---> block head <---
# ---> block body <---
lui $26, 14532
ori $0, $0, 0
subu $26, $6, $26
bgtz $26, TAG_BGTZ_4
addiu $7, $0, 1
addiu $7, $0, 1
TAG_BGTZ_4:
# ---> block tail <---
addiu $26, $0, 17044
# ---> endpc 3ae8 <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $28, 49732
ori $0, $0, 0
xor $27, $28, $27
blez $27, TAG_BLEZ_4
addiu $8, $0, 1
addiu $8, $0, 1
TAG_BLEZ_4:
# ---> block tail <---
addiu $27, $0, -32614
addiu $28, $0, -21429
# ---> endpc 3b0c <---

# ---> block head <---
addiu $9, $0, -19088
# ---> block body <---
lui $29, 29759
ori $0, $0, 0
add $29, $30, $9
bltz $29, TAG_BLTZ_4
addiu $10, $0, 1
addiu $10, $0, 1
TAG_BLTZ_4:
# ---> block tail <---
addiu $29, $0, -30069
# ---> endpc 3b2c <---

# ---> block head <---
ori $0, $0, 0
# ---> block body <---
lui $1, 5624
ori $0, $0, 0
or $2, $1, $2
bne $2, $2, TAG_BNE_6
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BNE_6:
# ---> block tail <---
addiu $1, $0, 27293
addiu $2, $0, -1389
# ---> endpc 3b50 <---

# ---> block head <---
# ---> block body <---
lui $0, 49517
ori $0, $0, 0
sllv $0, $3, $3
beq $3, $0, TAG_BEQ_7
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BEQ_7:
# ---> block tail <---
# ---> endpc 3b68 <---

# ---> block head <---
# ---> block body <---
lui $0, 4177
ori $0, $0, 0
slt $0, $0, $4
bgez $0, TAG_BGEZ_3
addiu $11, $0, 1
addiu $11, $0, 1
TAG_BGEZ_3:
# ---> block tail <---
# ---> endpc 3b80 <---

# ---> block head <---
# ---> block body <---
lui $5, 54979
ori $0, $0, 0
sltu $5, $11, $5
sll $12, $5, 1
# ---> block tail <---
# ---> endpc 3b90 <---

# ---> block head <---
# ---> block body <---
lui $6, 47366
ori $0, $0, 0
srav $6, $6, $12
slti $13, $6, 8006
# ---> block tail <---
addiu $6, $0, -12355
# ---> endpc 3ba4 <---

# ---> block head <---
# ---> block body <---
lui $7, 13580
ori $0, $0, 0
srlv $7, $7, $13
sltiu $14, $7, -12161
# ---> block tail <---
addiu $7, $0, 4107
# ---> endpc 3bb8 <---

# ---> block head <---
# ---> block body <---
lui $9, 48582
ori $0, $0, 0
addu $8, $9, $8
sra $9, $8, 1
# ---> block tail <---
addiu $8, $0, 23410
addiu $9, $0, -20492
# ---> endpc 3bd0 <---

# ---> block head <---
# ---> block body <---
lui $10, 59366
ori $0, $0, 0
and $11, $11, $10
srl $10, $11, 1
# ---> block tail <---
# ---> endpc 3be0 <---

# ---> block head <---
# ---> block body <---
lui $13, 51907
ori $0, $0, 0
nor $12, $13, $12
xori $13, $12, 8941
# ---> block tail <---
addiu $12, $0, -13165
addiu $13, $0, 25789
# ---> endpc 3bf8 <---

# ---> block head <---
# ---> block body <---
lui $0, 36423
ori $0, $0, 0
or $0, $14, $0
addi $14, $0, -1855
# ---> block tail <---
# ---> endpc 3c08 <---

# ---> block head <---
# ---> block body <---
lui $0, 7471
ori $0, $0, 0
sllv $0, $15, $15
addiu $15, $0, 21259
# ---> block tail <---
# ---> endpc 3c18 <---

# ---> block head <---
lui $18, 43707
ori $18, $18, 52445
sw $18, 120($0)
# ---> block body <---
lui $0, 1865
ori $0, $0, 0
lbu $0, 60($0)
sb $25, 120($0)
sb $0, 26614($25)
# ---> block tail <---
addiu $18, $0, 7822
# ---> endpc 3c3c <---

# ---> block head <---
lui $25, 43707
ori $25, $25, 52445
sw $25, 108($0)
# ---> block body <---
lui $0, 27256
ori $0, $0, 0
lh $0, 24($0)
sh $26, 122($0)
sh $0, -16934($26)
# ---> block tail <---
addiu $25, $0, -14217
# ---> endpc 3c60 <---

# ---> block head <---
# ---> block body <---
lui $0, 58101
ori $0, $0, 0
lhu $0, 16($0)
srlv $17, $17, $0
# ---> block tail <---
# ---> endpc 3c70 <---

# ---> block head <---
# ---> block body <---
lui $0, 46901
ori $0, $0, 0
lw $0, 64($0)
sub $18, $18, $0
# ---> block tail <---
# ---> endpc 3c80 <---

# ---> block head <---
# ---> block body <---
lui $0, 13435
ori $0, $0, 0
lb $0, 4($0)
div $0, $1
mfhi $28
mflo $28
# ---> block tail <---
# ---> endpc 3c98 <---

# ---> block head <---
# ---> block body <---
lui $0, 43041
ori $0, $0, 0
lbu $0, 28($0)
divu $0, $1
mfhi $29
mflo $29
# ---> block tail <---
# ---> endpc 3cb0 <---

# ---> block head <---
# ---> block body <---
lui $0, 29154
ori $0, $0, 0
lh $0, 52($0)
lh $9, 40($0)
# ---> block tail <---
# ---> endpc 3cc0 <---

# ---> block head <---
# ---> block body <---
lui $0, 41272
ori $0, $0, 0
lhu $0, 44($0)
lhu $10, 68($0)
# ---> block tail <---
addiu $10, $0, -14458
# ---> endpc 3cd4 <---

# ---> block head <---
# ---> block body <---
lui $0, 56527
ori $0, $0, 0
lw $0, 72($0)
bgtz $0, TAG_BGTZ_5
addiu $26, $0, 1
addiu $26, $0, 1
TAG_BGTZ_5:
# ---> block tail <---
# ---> endpc 3cec <---

# ---> block head <---
# ---> block body <---
lui $0, 21172
ori $0, $0, 0
lb $0, 52($0)
blez $0, TAG_BLEZ_5
addiu $26, $0, 1
addiu $26, $0, 1
TAG_BLEZ_5:
# ---> block tail <---
# ---> endpc 3d04 <---

# ---> block head <---
# ---> block body <---
lui $0, 7537
ori $0, $0, 0
lbu $0, 20($0)
srl $1, $0, 1
# ---> block tail <---
# ---> endpc 3d14 <---

# ---> block head <---
# ---> block body <---
lui $0, 25892
ori $0, $0, 0
lh $0, 36($0)
xori $2, $0, 27514
# ---> block tail <---
# ---> endpc 3d24 <---

# ---> block head <---
# ---> block body <---
lui $3, 28755
ori $0, $0, 0
lui $3, 47802
sw $3, 116($1)
# ---> block tail <---
addiu $3, $0, -6538
# ---> endpc 3d38 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $4, 19266
ori $0, $0, 0
lui $4, 57538
sb $4, 112($1)
# ---> block tail <---
addiu $4, $0, -15570
# ---> endpc 3d54 <---

# ---> block head <---
lui $2, 43707
ori $2, $2, 52445
sw $2, 132($0)
# ---> block body <---
lui $5, 64790
ori $0, $0, 0
lui $5, 7713
sh $5, 134($1)
# ---> block tail <---
addiu $2, $0, -25876
addiu $5, $0, -27796
# ---> endpc 3d78 <---

# ---> block head <---
lui $13, 43707
ori $13, $13, 52445
sw $13, 112($0)
# ---> block body <---
lui $7, 62540
ori $0, $0, 0
lui $7, 47613
sw $7, 13277($12)
# ---> block tail <---
addiu $7, $0, 10794
addiu $13, $0, -32234
# ---> endpc 3d9c <---

# ---> block head <---
ori $0, $0, 0
lui $22, 43707
ori $22, $22, 52445
sw $22, 80($0)
# ---> block body <---
lui $9, 52704
ori $0, $0, 0
lui $9, 11898
sb $8, -25814($21)
sb $21, -23277($8)
# ---> block tail <---
addiu $9, $0, -10790
addiu $22, $0, 3039
# ---> endpc 3dc8 <---

# ---> block head <---
ori $0, $0, 0
ori $0, $0, 0
# ---> block body <---
lui $11, 53949
ori $0, $0, 0
lui $10, 28037
sh $11, 80($28)
# ---> block tail <---
addiu $10, $0, 31998
addiu $11, $0, -13078
# ---> endpc 3de8 <---

# ---> block head <---
ori $0, $0, 0
lui $7, 43707
ori $7, $7, 52445
sw $7, 108($0)
# ---> block body <---
lui $0, 12414
ori $0, $0, 0
lui $0, 63251
sw $12, 108($0)
sw $0, 13273($12)
# ---> block tail <---
addiu $7, $0, 937
# ---> endpc 3e10 <---

# ---> block head <---
lui $20, 43707
ori $20, $20, 52445
sw $20, 140($0)
lui $21, 43707
ori $21, $21, 52445
sw $21, 148($0)
# ---> block body <---
lui $0, 24416
ori $0, $0, 0
lui $0, 2941
sb $0, 140($0)
sb $0, 149($0)
# ---> block tail <---
addiu $20, $0, -12129
addiu $21, $0, -6912
# ---> endpc 3e44 <---

# ---> block head <---
# ---> block body <---
lui $14, 60994
ori $0, $0, 0
lui $14, 57146
subu $14, $14, $13
# ---> block tail <---
addiu $14, $0, 27060
# ---> endpc 3e58 <---

# ---> block head <---
# ---> block body <---
lui $15, 7993
ori $0, $0, 0
lui $15, 55896
xor $15, $13, $15
# ---> block tail <---
addiu $15, $0, 16335
# ---> endpc 3e6c <---

# ---> block head <---
# ---> block body <---
lui $16, 26390
ori $0, $0, 0
lui $16, 52322
add $16, $16, $13
# ---> block tail <---
addiu $16, $0, 18810
# ---> endpc 3e80 <---

# ---> block head <---
# ---> block body <---
lui $17, 39239
ori $0, $0, 0
lui $17, 64651
addu $18, $18, $17
# ---> block tail <---
addiu $17, $0, -6138
addiu $18, $0, 3641
# ---> endpc 3e98 <---

# ---> block head <---
# ---> block body <---
lui $19, 44538
ori $0, $0, 0
lui $20, 8592
and $20, $19, $20
# ---> block tail <---
addiu $19, $0, 26731
addiu $20, $0, -2033
# ---> endpc 3eb0 <---

# ---> block head <---
# ---> block body <---
lui $21, 53001
ori $0, $0, 0
lui $21, 7718
nor $21, $21, $22
# ---> block tail <---
addiu $21, $0, -21067
# ---> endpc 3ec4 <---

# ---> block head <---
# ---> block body <---
lui $0, 34815
ori $0, $0, 0
lui $0, 22222
or $23, $23, $0
# ---> block tail <---
# ---> endpc 3ed4 <---

# ---> block head <---
# ---> block body <---
lui $0, 11733
ori $0, $0, 0
lui $0, 5132
sllv $24, $24, $0
# ---> block tail <---
# ---> endpc 3ee4 <---

# ---> block head <---
# ---> block body <---
lui $25, 40006
ori $0, $0, 0
lui $25, 34468
mthi $25
mfhi $25
mflo $25
# ---> block tail <---
# ---> endpc 3efc <---

# ---> block head <---
# ---> block body <---
lui $26, 33036
ori $0, $0, 0
lui $26, 54850
mtlo $26
mfhi $26
mflo $26
# ---> block tail <---
addiu $26, $0, -25824
# ---> endpc 3f18 <---

# ---> block head <---
# ---> block body <---
lui $27, 4558
ori $0, $0, 0
lui $27, 18909
mult $27, $13
mfhi $27
mflo $27
# ---> block tail <---
addiu $27, $0, -1917
# ---> endpc 3f34 <---

# ---> block head <---
# ---> block body <---
lui $29, 2244
ori $0, $0, 0
lui $29, 1917
multu $29, $28
mfhi $28
mflo $28
# ---> block tail <---
addiu $29, $0, -15961
# ---> endpc 3f50 <---

# ---> block head <---
# ---> block body <---
lui $1, 4687
ori $0, $0, 0
lui $30, 16242
div $1, $30
mfhi $30
mflo $30
# ---> block tail <---
addiu $1, $0, 19976
# ---> endpc 3f6c <---

# ---> block head <---
# ---> block body <---
lui $3, 11653
ori $0, $0, 0
lui $2, 714
divu $3, $2
mfhi $2
mflo $2
# ---> block tail <---
addiu $3, $0, -20935
# ---> endpc 3f88 <---

# ---> block head <---
# ---> block body <---
lui $0, 42624
ori $0, $0, 0
lui $0, 18576
mthi $0
mfhi $4
mflo $4
# ---> block tail <---
# ---> endpc 3fa0 <---

# ---> block head <---
# ---> block body <---
lui $0, 41123
ori $0, $0, 0
lui $0, 23430
mtlo $0
mfhi $5
mflo $5
# ---> block tail <---
# ---> endpc 3fb8 <---

ori $v0, $zero, 10
syscall
