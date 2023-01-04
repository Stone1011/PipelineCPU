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
lui $1, 34947
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 25955
sw $1, 44($0)
lui $1, 14254
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 41496
sw $1, 48($0)
lui $1, 32036
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 54272
sw $1, 52($0)
lui $1, 21033
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 47553
sw $1, 56($0)

lui $1, 25137
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 45668
mthi $1
lui $1, 24501
ori $0, $0, 0
ori $0, $0, 0
ori $1, $1, 11664
mtlo $1
lui $2, 52311
ori $0, $0, 0

addiu $14, $0, 60
addiu $8, $0, 0
TAG_BEQ_LOOP_0:
addiu $9, $0, 0
TAG_BEQ_LOOP_1:
lw $10, 0($8)
lw $11, 0($9)

xor $1, $10, $11
bltz $1, TAG_ADD_FIX_JUMP_0
ori $0, $0, 0
addu $1, $10, $11
xor $1, $10, $1
bgez $1, TAG_ADD_FIX_JUMP_0
ori $0, $0, 0
beq $0, $0, TAG_ADD_FIX_END_0
ori $0, $0, 0
TAG_ADD_FIX_JUMP_0:
add $12, $10, $11
TAG_ADD_FIX_END_0:
addu $12, $12, $13
xor $1, $10, $11
bltz $1, TAG_ADD_FIX_JUMP_1
ori $0, $0, 0
addu $1, $10, $11
xor $1, $10, $1
bgez $1, TAG_ADD_FIX_JUMP_1
ori $0, $0, 0
beq $0, $0, TAG_ADD_FIX_END_1
ori $0, $0, 0
TAG_ADD_FIX_JUMP_1:
add $0, $10, $11
TAG_ADD_FIX_END_1:
addu $12, $0, $13

addu $12, $10, $11
addu $12, $12, $13
addu $0, $10, $11
addu $12, $0, $13

and $12, $10, $11
addu $12, $12, $13
and $0, $10, $11
addu $12, $0, $13

nor $12, $10, $11
addu $12, $12, $13
nor $0, $10, $11
addu $12, $0, $13

or $12, $10, $11
addu $12, $12, $13
or $0, $10, $11
addu $12, $0, $13

sllv $12, $10, $11
addu $12, $12, $13
sllv $0, $10, $11
addu $12, $0, $13

slt $12, $10, $11
addu $12, $12, $13
slt $0, $10, $11
addu $12, $0, $13

sltu $12, $10, $11
addu $12, $12, $13
sltu $0, $10, $11
addu $12, $0, $13

srav $12, $10, $11
addu $12, $12, $13
srav $0, $10, $11
addu $12, $0, $13

srlv $12, $10, $11
addu $12, $12, $13
srlv $0, $10, $11
addu $12, $0, $13

xor $1, $10, $11
bgez $1, TAG_SUB_FIX_JUMP_0
ori $0, $0, 0
subu $1, $10, $11
xor $1, $10, $1
bgez $1, TAG_SUB_FIX_JUMP_0
ori $0, $0, 0
beq $0, $0, TAG_SUB_FIX_END_0
ori $0, $0, 0
TAG_SUB_FIX_JUMP_0:
sub $12, $10, $11
TAG_SUB_FIX_END_0:
addu $12, $12, $13
xor $1, $10, $11
bgez $1, TAG_SUB_FIX_JUMP_1
ori $0, $0, 0
subu $1, $10, $11
xor $1, $10, $1
bgez $1, TAG_SUB_FIX_JUMP_1
ori $0, $0, 0
beq $0, $0, TAG_SUB_FIX_END_1
ori $0, $0, 0
TAG_SUB_FIX_JUMP_1:
sub $0, $10, $11
TAG_SUB_FIX_END_1:
addu $12, $0, $13

subu $12, $10, $11
addu $12, $12, $13
subu $0, $10, $11
addu $12, $0, $13

xor $12, $10, $11
addu $12, $12, $13
xor $0, $10, $11
addu $12, $0, $13

addiu $1, $0, 4
addu $9, $9, $1
ori $0, $0, 0
ori $0, $0, 0
beq $9, $14, TAG_BEQ_OUT_0
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_1
ori $0, $0, 0
TAG_BEQ_OUT_0:

bltz $10, TAG_ADDI_FIX_JUMP_0
ori $0, $0, 0
addiu $1, $10, 32767
bgez $1, TAG_ADDI_FIX_JUMP_0
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_0
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_0:
addi $11, $10, 32767
TAG_ADDI_FIX_END_0:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_1
ori $0, $0, 0
addiu $1, $10, 32767
bgez $1, TAG_ADDI_FIX_JUMP_1
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_1
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_1:
addi $0, $10, 32767
TAG_ADDI_FIX_END_1:
addu $11, $0, $13

bgez $10, TAG_ADDI_FIX_JUMP_2
ori $0, $0, 0
addiu $1, $10, -32768
bltz $1, TAG_ADDI_FIX_JUMP_2
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_2
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_2:
addi $11, $10, -32768
TAG_ADDI_FIX_END_2:
addu $11, $11, $13
bgez $10, TAG_ADDI_FIX_JUMP_3
ori $0, $0, 0
addiu $1, $10, -32768
bltz $1, TAG_ADDI_FIX_JUMP_3
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_3
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_3:
addi $0, $10, -32768
TAG_ADDI_FIX_END_3:
addu $11, $0, $13

bgez $10, TAG_ADDI_FIX_JUMP_4
ori $0, $0, 0
addiu $1, $10, -4
bltz $1, TAG_ADDI_FIX_JUMP_4
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_4
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_4:
addi $11, $10, -4
TAG_ADDI_FIX_END_4:
addu $11, $11, $13
bgez $10, TAG_ADDI_FIX_JUMP_5
ori $0, $0, 0
addiu $1, $10, -4
bltz $1, TAG_ADDI_FIX_JUMP_5
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_5
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_5:
addi $0, $10, -4
TAG_ADDI_FIX_END_5:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_12
ori $0, $0, 0
addiu $1, $10, 0
bgez $1, TAG_ADDI_FIX_JUMP_12
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_12
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_12:
addi $11, $10, 0
TAG_ADDI_FIX_END_12:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_13
ori $0, $0, 0
addiu $1, $10, 0
bgez $1, TAG_ADDI_FIX_JUMP_13
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_13
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_13:
addi $0, $10, 0
TAG_ADDI_FIX_END_13:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_14
ori $0, $0, 0
addiu $1, $10, 1
bgez $1, TAG_ADDI_FIX_JUMP_14
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_14
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_14:
addi $11, $10, 1
TAG_ADDI_FIX_END_14:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_15
ori $0, $0, 0
addiu $1, $10, 1
bgez $1, TAG_ADDI_FIX_JUMP_15
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_15
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_15:
addi $0, $10, 1
TAG_ADDI_FIX_END_15:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_16
ori $0, $0, 0
addiu $1, $10, 2
bgez $1, TAG_ADDI_FIX_JUMP_16
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_16
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_16:
addi $11, $10, 2
TAG_ADDI_FIX_END_16:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_17
ori $0, $0, 0
addiu $1, $10, 2
bgez $1, TAG_ADDI_FIX_JUMP_17
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_17
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_17:
addi $0, $10, 2
TAG_ADDI_FIX_END_17:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_18
ori $0, $0, 0
addiu $1, $10, 3
bgez $1, TAG_ADDI_FIX_JUMP_18
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_18
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_18:
addi $11, $10, 3
TAG_ADDI_FIX_END_18:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_19
ori $0, $0, 0
addiu $1, $10, 3
bgez $1, TAG_ADDI_FIX_JUMP_19
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_19
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_19:
addi $0, $10, 3
TAG_ADDI_FIX_END_19:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_20
ori $0, $0, 0
addiu $1, $10, 4
bgez $1, TAG_ADDI_FIX_JUMP_20
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_20
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_20:
addi $11, $10, 4
TAG_ADDI_FIX_END_20:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_21
ori $0, $0, 0
addiu $1, $10, 4
bgez $1, TAG_ADDI_FIX_JUMP_21
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_21
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_21:
addi $0, $10, 4
TAG_ADDI_FIX_END_21:
addu $11, $0, $13

bgez $10, TAG_ADDI_FIX_JUMP_22
ori $0, $0, 0
addiu $1, $10, -30125
bltz $1, TAG_ADDI_FIX_JUMP_22
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_22
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_22:
addi $11, $10, -30125
TAG_ADDI_FIX_END_22:
addu $11, $11, $13
bgez $10, TAG_ADDI_FIX_JUMP_23
ori $0, $0, 0
addiu $1, $10, -30125
bltz $1, TAG_ADDI_FIX_JUMP_23
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_23
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_23:
addi $0, $10, -30125
TAG_ADDI_FIX_END_23:
addu $11, $0, $13

bgez $10, TAG_ADDI_FIX_JUMP_24
ori $0, $0, 0
addiu $1, $10, -1530
bltz $1, TAG_ADDI_FIX_JUMP_24
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_24
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_24:
addi $11, $10, -1530
TAG_ADDI_FIX_END_24:
addu $11, $11, $13
bgez $10, TAG_ADDI_FIX_JUMP_25
ori $0, $0, 0
addiu $1, $10, -1530
bltz $1, TAG_ADDI_FIX_JUMP_25
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_25
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_25:
addi $0, $10, -1530
TAG_ADDI_FIX_END_25:
addu $11, $0, $13

bgez $10, TAG_ADDI_FIX_JUMP_26
ori $0, $0, 0
addiu $1, $10, -9751
bltz $1, TAG_ADDI_FIX_JUMP_26
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_26
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_26:
addi $11, $10, -9751
TAG_ADDI_FIX_END_26:
addu $11, $11, $13
bgez $10, TAG_ADDI_FIX_JUMP_27
ori $0, $0, 0
addiu $1, $10, -9751
bltz $1, TAG_ADDI_FIX_JUMP_27
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_27
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_27:
addi $0, $10, -9751
TAG_ADDI_FIX_END_27:
addu $11, $0, $13

bltz $10, TAG_ADDI_FIX_JUMP_28
ori $0, $0, 0
addiu $1, $10, 30566
bgez $1, TAG_ADDI_FIX_JUMP_28
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_28
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_28:
addi $11, $10, 30566
TAG_ADDI_FIX_END_28:
addu $11, $11, $13
bltz $10, TAG_ADDI_FIX_JUMP_29
ori $0, $0, 0
addiu $1, $10, 30566
bgez $1, TAG_ADDI_FIX_JUMP_29
ori $0, $0, 0
beq $0, $0, TAG_ADDI_FIX_END_29
ori $0, $0, 0
TAG_ADDI_FIX_JUMP_29:
addi $0, $10, 30566
TAG_ADDI_FIX_END_29:
addu $11, $0, $13

addiu $11, $10, 32767
addu $11, $11, $13
addiu $0, $10, 32767
addu $11, $0, $13

addiu $11, $10, -32768
addu $11, $11, $13
addiu $0, $10, -32768
addu $11, $0, $13

addiu $11, $10, -4
addu $11, $11, $13
addiu $0, $10, -4
addu $11, $0, $13

addiu $11, $10, -3
addu $11, $11, $13
addiu $0, $10, -3
addu $11, $0, $13

addiu $11, $10, -2
addu $11, $11, $13
addiu $0, $10, -2
addu $11, $0, $13

addiu $11, $10, -1
addu $11, $11, $13
addiu $0, $10, -1
addu $11, $0, $13

addiu $11, $10, 0
addu $11, $11, $13
addiu $0, $10, 0
addu $11, $0, $13

addiu $11, $10, 1
addu $11, $11, $13
addiu $0, $10, 1
addu $11, $0, $13

addiu $11, $10, 2
addu $11, $11, $13
addiu $0, $10, 2
addu $11, $0, $13

addiu $11, $10, 3
addu $11, $11, $13
addiu $0, $10, 3
addu $11, $0, $13

addiu $11, $10, 4
addu $11, $11, $13
addiu $0, $10, 4
addu $11, $0, $13

addiu $11, $10, -30125
addu $11, $11, $13
addiu $0, $10, -30125
addu $11, $0, $13

addiu $11, $10, -1530
addu $11, $11, $13
addiu $0, $10, -1530
addu $11, $0, $13

addiu $11, $10, -9751
addu $11, $11, $13
addiu $0, $10, -9751
addu $11, $0, $13

addiu $11, $10, 30566
addu $11, $11, $13
addiu $0, $10, 30566
addu $11, $0, $13

andi $11, $10, 0
addu $11, $11, $13
andi $0, $10, 0
addu $11, $0, $13

andi $11, $10, 1
addu $11, $11, $13
andi $0, $10, 1
addu $11, $0, $13

andi $11, $10, 2
addu $11, $11, $13
andi $0, $10, 2
addu $11, $0, $13

andi $11, $10, 3
addu $11, $11, $13
andi $0, $10, 3
addu $11, $0, $13

andi $11, $10, 4
addu $11, $11, $13
andi $0, $10, 4
addu $11, $0, $13

andi $11, $10, 32766
addu $11, $11, $13
andi $0, $10, 32766
addu $11, $0, $13

andi $11, $10, 4836
addu $11, $11, $13
andi $0, $10, 4836
addu $11, $0, $13

andi $11, $10, 32767
addu $11, $11, $13
andi $0, $10, 32767
addu $11, $0, $13

andi $11, $10, 64748
addu $11, $11, $13
andi $0, $10, 64748
addu $11, $0, $13

andi $11, $10, 32768
addu $11, $11, $13
andi $0, $10, 32768
addu $11, $0, $13

andi $11, $10, 18038
addu $11, $11, $13
andi $0, $10, 18038
addu $11, $0, $13

andi $11, $10, 32769
addu $11, $11, $13
andi $0, $10, 32769
addu $11, $0, $13

andi $11, $10, 25797
addu $11, $11, $13
andi $0, $10, 25797
addu $11, $0, $13

andi $11, $10, 65534
addu $11, $11, $13
andi $0, $10, 65534
addu $11, $0, $13

andi $11, $10, 65535
addu $11, $11, $13
andi $0, $10, 65535
addu $11, $0, $13

ori $11, $10, 0
addu $11, $11, $13
ori $0, $10, 0
addu $11, $0, $13

ori $11, $10, 1
addu $11, $11, $13
ori $0, $10, 1
addu $11, $0, $13

ori $11, $10, 2
addu $11, $11, $13
ori $0, $10, 2
addu $11, $0, $13

ori $11, $10, 3
addu $11, $11, $13
ori $0, $10, 3
addu $11, $0, $13

ori $11, $10, 4
addu $11, $11, $13
ori $0, $10, 4
addu $11, $0, $13

ori $11, $10, 32766
addu $11, $11, $13
ori $0, $10, 32766
addu $11, $0, $13

ori $11, $10, 4836
addu $11, $11, $13
ori $0, $10, 4836
addu $11, $0, $13

ori $11, $10, 32767
addu $11, $11, $13
ori $0, $10, 32767
addu $11, $0, $13

ori $11, $10, 64748
addu $11, $11, $13
ori $0, $10, 64748
addu $11, $0, $13

ori $11, $10, 32768
addu $11, $11, $13
ori $0, $10, 32768
addu $11, $0, $13

ori $11, $10, 18038
addu $11, $11, $13
ori $0, $10, 18038
addu $11, $0, $13

ori $11, $10, 32769
addu $11, $11, $13
ori $0, $10, 32769
addu $11, $0, $13

ori $11, $10, 25797
addu $11, $11, $13
ori $0, $10, 25797
addu $11, $0, $13

ori $11, $10, 65534
addu $11, $11, $13
ori $0, $10, 65534
addu $11, $0, $13

ori $11, $10, 65535
addu $11, $11, $13
ori $0, $10, 65535
addu $11, $0, $13

sll $11, $10, 0
addu $11, $11, $13
sll $0, $10, 0
addu $11, $0, $13

sll $11, $10, 1
addu $11, $11, $13
sll $0, $10, 1
addu $11, $0, $13

sll $11, $10, 2
addu $11, $11, $13
sll $0, $10, 2
addu $11, $0, $13

sll $11, $10, 3
addu $11, $11, $13
sll $0, $10, 3
addu $11, $0, $13

sll $11, $10, 4
addu $11, $11, $13
sll $0, $10, 4
addu $11, $0, $13

sll $11, $10, 30
addu $11, $11, $13
sll $0, $10, 30
addu $11, $0, $13

sll $11, $10, 4
addu $11, $11, $13
sll $0, $10, 4
addu $11, $0, $13

sll $11, $10, 31
addu $11, $11, $13
sll $0, $10, 31
addu $11, $0, $13

sll $11, $10, 12
addu $11, $11, $13
sll $0, $10, 12
addu $11, $0, $13

sll $11, $10, 0
addu $11, $11, $13
sll $0, $10, 0
addu $11, $0, $13

sll $11, $10, 22
addu $11, $11, $13
sll $0, $10, 22
addu $11, $0, $13

sll $11, $10, 1
addu $11, $11, $13
sll $0, $10, 1
addu $11, $0, $13

sll $11, $10, 5
addu $11, $11, $13
sll $0, $10, 5
addu $11, $0, $13

sll $11, $10, 30
addu $11, $11, $13
sll $0, $10, 30
addu $11, $0, $13

sll $11, $10, 31
addu $11, $11, $13
sll $0, $10, 31
addu $11, $0, $13

slti $11, $10, 32767
addu $11, $11, $13
slti $0, $10, 32767
addu $11, $0, $13

slti $11, $10, -32768
addu $11, $11, $13
slti $0, $10, -32768
addu $11, $0, $13

slti $11, $10, -4
addu $11, $11, $13
slti $0, $10, -4
addu $11, $0, $13

slti $11, $10, -3
addu $11, $11, $13
slti $0, $10, -3
addu $11, $0, $13

slti $11, $10, -2
addu $11, $11, $13
slti $0, $10, -2
addu $11, $0, $13

slti $11, $10, -1
addu $11, $11, $13
slti $0, $10, -1
addu $11, $0, $13

slti $11, $10, 0
addu $11, $11, $13
slti $0, $10, 0
addu $11, $0, $13

slti $11, $10, 1
addu $11, $11, $13
slti $0, $10, 1
addu $11, $0, $13

slti $11, $10, 2
addu $11, $11, $13
slti $0, $10, 2
addu $11, $0, $13

slti $11, $10, 3
addu $11, $11, $13
slti $0, $10, 3
addu $11, $0, $13

slti $11, $10, 4
addu $11, $11, $13
slti $0, $10, 4
addu $11, $0, $13

slti $11, $10, -30125
addu $11, $11, $13
slti $0, $10, -30125
addu $11, $0, $13

slti $11, $10, -1530
addu $11, $11, $13
slti $0, $10, -1530
addu $11, $0, $13

slti $11, $10, -9751
addu $11, $11, $13
slti $0, $10, -9751
addu $11, $0, $13

slti $11, $10, 30566
addu $11, $11, $13
slti $0, $10, 30566
addu $11, $0, $13

sltiu $11, $10, 32767
addu $11, $11, $13
sltiu $0, $10, 32767
addu $11, $0, $13

sltiu $11, $10, -32768
addu $11, $11, $13
sltiu $0, $10, -32768
addu $11, $0, $13

sltiu $11, $10, -4
addu $11, $11, $13
sltiu $0, $10, -4
addu $11, $0, $13

sltiu $11, $10, -3
addu $11, $11, $13
sltiu $0, $10, -3
addu $11, $0, $13

sltiu $11, $10, -2
addu $11, $11, $13
sltiu $0, $10, -2
addu $11, $0, $13

sltiu $11, $10, -1
addu $11, $11, $13
sltiu $0, $10, -1
addu $11, $0, $13

sltiu $11, $10, 0
addu $11, $11, $13
sltiu $0, $10, 0
addu $11, $0, $13

sltiu $11, $10, 1
addu $11, $11, $13
sltiu $0, $10, 1
addu $11, $0, $13

sltiu $11, $10, 2
addu $11, $11, $13
sltiu $0, $10, 2
addu $11, $0, $13

sltiu $11, $10, 3
addu $11, $11, $13
sltiu $0, $10, 3
addu $11, $0, $13

sltiu $11, $10, 4
addu $11, $11, $13
sltiu $0, $10, 4
addu $11, $0, $13

sltiu $11, $10, -30125
addu $11, $11, $13
sltiu $0, $10, -30125
addu $11, $0, $13

sltiu $11, $10, -1530
addu $11, $11, $13
sltiu $0, $10, -1530
addu $11, $0, $13

sltiu $11, $10, -9751
addu $11, $11, $13
sltiu $0, $10, -9751
addu $11, $0, $13

sltiu $11, $10, 30566
addu $11, $11, $13
sltiu $0, $10, 30566
addu $11, $0, $13

sra $11, $10, 0
addu $11, $11, $13
sra $0, $10, 0
addu $11, $0, $13

sra $11, $10, 1
addu $11, $11, $13
sra $0, $10, 1
addu $11, $0, $13

sra $11, $10, 2
addu $11, $11, $13
sra $0, $10, 2
addu $11, $0, $13

sra $11, $10, 3
addu $11, $11, $13
sra $0, $10, 3
addu $11, $0, $13

sra $11, $10, 4
addu $11, $11, $13
sra $0, $10, 4
addu $11, $0, $13

sra $11, $10, 30
addu $11, $11, $13
sra $0, $10, 30
addu $11, $0, $13

sra $11, $10, 4
addu $11, $11, $13
sra $0, $10, 4
addu $11, $0, $13

sra $11, $10, 31
addu $11, $11, $13
sra $0, $10, 31
addu $11, $0, $13

sra $11, $10, 12
addu $11, $11, $13
sra $0, $10, 12
addu $11, $0, $13

sra $11, $10, 0
addu $11, $11, $13
sra $0, $10, 0
addu $11, $0, $13

sra $11, $10, 22
addu $11, $11, $13
sra $0, $10, 22
addu $11, $0, $13

sra $11, $10, 1
addu $11, $11, $13
sra $0, $10, 1
addu $11, $0, $13

sra $11, $10, 5
addu $11, $11, $13
sra $0, $10, 5
addu $11, $0, $13

sra $11, $10, 30
addu $11, $11, $13
sra $0, $10, 30
addu $11, $0, $13

sra $11, $10, 31
addu $11, $11, $13
sra $0, $10, 31
addu $11, $0, $13

srl $11, $10, 0
addu $11, $11, $13
srl $0, $10, 0
addu $11, $0, $13

srl $11, $10, 1
addu $11, $11, $13
srl $0, $10, 1
addu $11, $0, $13

srl $11, $10, 2
addu $11, $11, $13
srl $0, $10, 2
addu $11, $0, $13

srl $11, $10, 3
addu $11, $11, $13
srl $0, $10, 3
addu $11, $0, $13

srl $11, $10, 4
addu $11, $11, $13
srl $0, $10, 4
addu $11, $0, $13

srl $11, $10, 30
addu $11, $11, $13
srl $0, $10, 30
addu $11, $0, $13

srl $11, $10, 4
addu $11, $11, $13
srl $0, $10, 4
addu $11, $0, $13

srl $11, $10, 31
addu $11, $11, $13
srl $0, $10, 31
addu $11, $0, $13

srl $11, $10, 12
addu $11, $11, $13
srl $0, $10, 12
addu $11, $0, $13

srl $11, $10, 0
addu $11, $11, $13
srl $0, $10, 0
addu $11, $0, $13

srl $11, $10, 22
addu $11, $11, $13
srl $0, $10, 22
addu $11, $0, $13

srl $11, $10, 1
addu $11, $11, $13
srl $0, $10, 1
addu $11, $0, $13

srl $11, $10, 5
addu $11, $11, $13
srl $0, $10, 5
addu $11, $0, $13

srl $11, $10, 30
addu $11, $11, $13
srl $0, $10, 30
addu $11, $0, $13

srl $11, $10, 31
addu $11, $11, $13
srl $0, $10, 31
addu $11, $0, $13

xori $11, $10, 0
addu $11, $11, $13
xori $0, $10, 0
addu $11, $0, $13

xori $11, $10, 1
addu $11, $11, $13
xori $0, $10, 1
addu $11, $0, $13

xori $11, $10, 2
addu $11, $11, $13
xori $0, $10, 2
addu $11, $0, $13

xori $11, $10, 3
addu $11, $11, $13
xori $0, $10, 3
addu $11, $0, $13

xori $11, $10, 4
addu $11, $11, $13
xori $0, $10, 4
addu $11, $0, $13

xori $11, $10, 32766
addu $11, $11, $13
xori $0, $10, 32766
addu $11, $0, $13

xori $11, $10, 4836
addu $11, $11, $13
xori $0, $10, 4836
addu $11, $0, $13

xori $11, $10, 32767
addu $11, $11, $13
xori $0, $10, 32767
addu $11, $0, $13

xori $11, $10, 64748
addu $11, $11, $13
xori $0, $10, 64748
addu $11, $0, $13

xori $11, $10, 32768
addu $11, $11, $13
xori $0, $10, 32768
addu $11, $0, $13

xori $11, $10, 18038
addu $11, $11, $13
xori $0, $10, 18038
addu $11, $0, $13

xori $11, $10, 32769
addu $11, $11, $13
xori $0, $10, 32769
addu $11, $0, $13

xori $11, $10, 25797
addu $11, $11, $13
xori $0, $10, 25797
addu $11, $0, $13

xori $11, $10, 65534
addu $11, $11, $13
xori $0, $10, 65534
addu $11, $0, $13

xori $11, $10, 65535
addu $11, $11, $13
xori $0, $10, 65535
addu $11, $0, $13

lui $11, 0
addu $11, $11, $13
lui $0, 0
addu $11, $0, $13

lui $11, 1
addu $11, $11, $13
lui $0, 1
addu $11, $0, $13

lui $11, 2
addu $11, $11, $13
lui $0, 2
addu $11, $0, $13

lui $11, 3
addu $11, $11, $13
lui $0, 3
addu $11, $0, $13

lui $11, 4
addu $11, $11, $13
lui $0, 4
addu $11, $0, $13

lui $11, 32766
addu $11, $11, $13
lui $0, 32766
addu $11, $0, $13

lui $11, 4836
addu $11, $11, $13
lui $0, 4836
addu $11, $0, $13

lui $11, 32767
addu $11, $11, $13
lui $0, 32767
addu $11, $0, $13

lui $11, 64748
addu $11, $11, $13
lui $0, 64748
addu $11, $0, $13

lui $11, 32768
addu $11, $11, $13
lui $0, 32768
addu $11, $0, $13

lui $11, 18038
addu $11, $11, $13
lui $0, 18038
addu $11, $0, $13

lui $11, 32769
addu $11, $11, $13
lui $0, 32769
addu $11, $0, $13

lui $11, 25797
addu $11, $11, $13
lui $0, 25797
addu $11, $0, $13

lui $11, 65534
addu $11, $11, $13
lui $0, 65534
addu $11, $0, $13

lui $11, 65535
addu $11, $11, $13
lui $0, 65535
addu $11, $0, $13

addiu $1, $0, 4
addu $8, $8, $1
ori $0, $0, 0
ori $0, $0, 0
beq $8, $14, TAG_BEQ_OUT_1
ori $0, $0, 0
beq $0, $0, TAG_BEQ_LOOP_0
ori $0, $0, 0
TAG_BEQ_OUT_1:

ori $v0, $zero, 10
syscall
