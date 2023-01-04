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
lui $1, 46621
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 45537
sw $1, 44($0)
lui $1, 2491
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 7081
sw $1, 48($0)
lui $1, 61170
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 1820
sw $1, 52($0)
lui $1, 23769
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 31389
sw $1, 56($0)
lui $1, 5070
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 55106
sw $1, 60($0)
lui $1, 29853
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 65175
sw $1, 64($0)
lui $1, 53824
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 42470
sw $1, 68($0)
lui $1, 40133
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 48033
sw $1, 72($0)
lui $1, 50125
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 56008
sw $1, 76($0)

lui $1, 57809
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 20520
mthi $1
lui $1, 11148
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 48162
mtlo $1
lui $2, 60078
ori $0, $0, 0
ori $0, $0, 0
ori $2, $2, 23586
lui $3, 63354
ori $0, $0, 0
ori $0, $0, 0
ori $3, $3, 4387
lui $4, 53757
ori $0, $0, 0
ori $0, $0, 0
ori $4, $4, 351
lui $5, 51014
ori $0, $0, 0
ori $0, $0, 0
ori $5, $5, 32984
lui $6, 12816
ori $0, $0, 0
ori $0, $0, 0
ori $6, $6, 49074
lui $7, 50195
ori $0, $0, 0
ori $0, $0, 0
ori $7, $7, 53020
lui $8, 46016
ori $0, $0, 0
ori $0, $0, 0
ori $8, $8, 9160
lui $9, 44064
ori $0, $0, 0
ori $0, $0, 0
ori $9, $9, 2118
lui $10, 29092
ori $0, $0, 0
ori $0, $0, 0
ori $10, $10, 7658
lui $11, 33851
ori $0, $0, 0
ori $0, $0, 0
ori $11, $11, 19877
lui $12, 529
ori $0, $0, 0
ori $0, $0, 0
ori $12, $12, 65024
lui $13, 42113
ori $0, $0, 0
ori $0, $0, 0
ori $13, $13, 38932
lui $14, 32120
ori $0, $0, 0
ori $0, $0, 0
ori $14, $14, 5261
lui $15, 59249
ori $0, $0, 0
ori $0, $0, 0
ori $15, $15, 15146
lui $16, 12801
ori $0, $0, 0
ori $0, $0, 0
ori $16, $16, 25722
lui $17, 12146
ori $0, $0, 0
ori $0, $0, 0
ori $17, $17, 35532
lui $18, 5479
ori $0, $0, 0
ori $0, $0, 0
ori $18, $18, 47085
lui $19, 46590
ori $0, $0, 0
ori $0, $0, 0
ori $19, $19, 36397
lui $20, 56330
ori $0, $0, 0
ori $0, $0, 0
ori $20, $20, 23167
lui $21, 61544
ori $0, $0, 0
ori $0, $0, 0
ori $21, $21, 30344
lui $22, 25346
ori $0, $0, 0
ori $0, $0, 0
ori $22, $22, 50573
lui $23, 55278
ori $0, $0, 0
ori $0, $0, 0
ori $23, $23, 27921
lui $24, 51766
ori $0, $0, 0
ori $0, $0, 0
ori $24, $24, 16246
lui $25, 20053
ori $0, $0, 0
ori $0, $0, 0
ori $25, $25, 35564
lui $26, 53252
ori $0, $0, 0
ori $0, $0, 0
ori $26, $26, 56583
lui $27, 60702
ori $0, $0, 0
ori $0, $0, 0
ori $27, $27, 16181
lui $28, 15547
ori $0, $0, 0
ori $0, $0, 0
ori $28, $28, 3173
lui $29, 60010
ori $0, $0, 0
ori $0, $0, 0
ori $29, $29, 23126
lui $30, 17804
ori $0, $0, 0
ori $0, $0, 0
ori $30, $30, 58160
lui $31, 38933
ori $0, $0, 0
ori $0, $0, 0
ori $31, $31, 15172

addiu $13, $0, 80
addiu $8, $0, 0
TAG_BEQ_LOOP_0:
addiu $9, $0, 0
TAG_BEQ_LOOP_1:
lw $10, 0($8)
lw $11, 0($9)

beq $11, $0, TAG_IGNORE_ZERO_0
ori $0, $0, 0
div $10, $11
TAG_IGNORE_ZERO_0:
mfhi $12
mflo $12

beq $11, $0, TAG_IGNORE_ZERO_1
ori $0, $0, 0
divu $10, $11
TAG_IGNORE_ZERO_1:
mfhi $12
mflo $12

mult $10, $11
mfhi $12
mflo $12

multu $10, $11
mfhi $12
mflo $12

addiu $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $13, TAG_BEQ_OUT_0
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_1
ori $0, $0, 0
TAG_BEQ_OUT_0:

mthi $10
mfhi $11
mflo $11

mtlo $10
mfhi $11
mflo $11

addiu $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $13, TAG_BEQ_OUT_1
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_0
ori $0, $0, 0
TAG_BEQ_OUT_1:

ori $v0, $zero, 10
syscall
