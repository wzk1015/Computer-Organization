li $28, 0
li $29, 0
mtc0 $0, $13
mtc0 $0, $14
li $0, 0x2c89fc15
li $1, 0x50ba346d
li $2, 0xb7306fa
li $3, 0x3efc9d7
li $4, 0x4456d999
li $5, 0x39ffa7f6
mflo $3
sltiu $5, $4, 0x4ebf
li $5, 0x940a8c3f
div $1, $4
add $3, $4, $1
addi $1, $1, 0x7543
multu $5, $3
add $0, $2, $4
sub $0, $1, $3
mthi $0
ori $2, $5, 0x5959
srlv $4, $4, $3
sltu $3, $0, $4
sltu $5, $1, $0
lw $3, 2($0)
lh $0, 2($0)
div $4, $0
sh $0, 32($0)
addiu $3, $1, 0x67f4
sw $5, 2($0)
sub $1, $2, $0
multu $4, $3
xor $4, $2, $1
sllv $4, $0, $5
addi $5, $4, 0x4de6
addi $5, $0, 0x2d22
srlv $3, $3, $1
andi $5, $2, 0x6386
add $5, $3, $0
add $2, $1, $1
sub $2, $1, $5
srav $4, $0, $1
add $0, $4, $5
li $3, 0xf8e051f2
lh $2, 52($0)
srav $2, $2, $1
add $2, $5, $5
mtlo $5
divu $3, $3
multu $2, $3
sw $1, 3($0)
div $1, $3
slti $2, $1, 0x777d
sb $0, 52($0)
sltu $3, $0, $1
sw $2, 46($0)
mflo $2
div $4, $4
lbu $4, 25($0)
addi $4, $4, 0x549e
add $3, $3, $4
slti $0, $3, 0x4a05
sub $2, $1, $1
add $3, $2, $1
lh $4, 7($0)
lbu $4, 42($0)
add $2, $0, $4
lb $0, 5($0)
lbu $4, 8($0)
sb $3, 2($0)
andi $4, $0, 0x2249
xori $1, $2, 0x124
sllv $1, $4, $3
lh $5, 43($0)
lbu $1, 42($0)
ori $5, $2, 0x5e17
ori $1, $3, 0x2081
subu $0, $5, $2
lh $2, 40($0)
lw $1, 5($0)
sw $5, 24($0)
addi $1, $5, 0x1adc
srlv $5, $3, $5
nor $0, $2, $0
mtlo $4
lui $0, 0x40d2
mult $0, $5
ori $1, $1, 0x4221
xori $3, $2, 0x58e7
sw $1, 41($0)
sub $3, $3, $4
srav $0, $4, $3
addi $5, $5, 0x32e1
srav $5, $0, $1
sw $0, 33($0)
ori $5, $0, 0x259e
andi $1, $1, 0x1016
add $3, $4, $2
add $0, $3, $0
slti $1, $5, 0xdac
addi $2, $0, 0x6d03
add $4, $5, $5
li $1, 0x8bc72cdb
addi $4, $0, 0x629c
lui $1, 0x7626
add $3, $4, $3
sh $2, 14($0)
add $0, $4, $2
sltu $4, $0, $2
sub $5, $4, $1
add $1, $3, $1
divu $5, $5
addu $0, $3, $2
lh $5, 1($0)
srav $3, $1, $3
sub $1, $0, $0
sltiu $2, $1, 0x134f
lw $5, 9($0)
ori $0, $3, 0x6fd2
srav $5, $1, $4
lbu $0, 44($0)
slti $0, $1, 0x1f37
sub $3, $5, $2
or $3, $0, $1
sub $2, $2, $4
slt $4, $0, $1
sw $0, 10($0)
addiu $5, $5, 0x73b7
add $4, $0, $3
lb $3, 20($0)
mflo $1
sb $1, 48($0)
addi $3, $5, 0xd91
xori $3, $1, 0x4e54
sltiu $4, $1, 0x7081
sltiu $1, $2, 0x7a3a
sh $3, 16($0)
lhu $1, 52($0)
add $3, $1, $2
andi $4, $2, 0x38bc
lui $0, 0x172a
mult $4, $1
add $3, $5, $4
add $0, $4, $2
sllv $2, $1, $1
sltiu $1, $2, 0x5b41
sw $3, 44($0)
li $4, 0x570d3426
and $4, $0, $5
sub $5, $4, $2
sltiu $5, $0, 0x2d88
addi $5, $1, 0x2cd1
add $2, $0, $1
add $2, $5, $3
add $1, $2, $0
lbu $4, 5($0)
slt $1, $4, $3
and $0, $3, $4
sltiu $2, $4, 0x5caa
sub $3, $5, $5
sh $4, 34($0)
lui $0, 0x7e73
addi $2, $4, 0x6fe
addi $2, $1, 0xa08
sltu $4, $1, $5
add $4, $1, $1
lhu $4, 21($0)
sllv $0, $5, $3
addu $1, $0, $2
or $2, $2, $2
sub $5, $3, $3
sltiu $2, $4, 0x7ba1
divu $2, $0
mflo $2
srav $2, $3, $2
andi $0, $5, 0x60e0
lb $2, 29($0)
mfhi $1
subu $4, $3, $2
addi $0, $2, 0x3d94
addiu $4, $2, 0x46cb
add $5, $3, $5
sub $1, $5, $2
or $2, $0, $3
addiu $0, $2, 0x8a
slt $0, $5, $4
addi $3, $2, 0x33df
subu $0, $2, $2
add $3, $2, $0
srav $5, $1, $0
srav $1, $4, $1
sub $1, $0, $2
addi $4, $3, 0x6d33
addi $3, $5, 0x295c
xor $1, $2, $2
sub $5, $2, $5
mfhi $0
ori $0, $0, 0x581c
or $2, $4, $5
lbu $2, 18($0)
addiu $0, $1, 0x251e
sub $3, $0, $0
and $3, $2, $4
lw $1, 10($0)
sw $5, 51($0)
add $0, $4, $5
divu $1, $2
sltiu $1, $4, 0x73ea
sh $2, 18($0)
addi $1, $1, 0x2483
li $2, 0xb53b5a15
sub $5, $1, $4
div $5, $5
slt $2, $2, $4
sltiu $0, $5, 0x6670
add $4, $5, $3
sub $5, $5, $0
subu $2, $1, $3
and $4, $1, $2
slti $1, $2, 0x5ab8
addi $5, $3, 0x52be
sh $5, 43($0)
add $3, $4, $4
add $5, $0, $0
andi $2, $1, 0x5085
add $0, $4, $1
addu $2, $0, $5
sub $1, $0, $3
subu $1, $3, $3
slt $4, $2, $4
sh $0, 20($0)
slt $5, $1, $5
addi $3, $3, 0x7345
mthi $2
slti $5, $2, 0x6f8e
sub $1, $5, $2
li $5, 0x8271f348
sllv $5, $0, $5
div $0, $5
srav $3, $3, $1
sub $5, $5, $4
xor $2, $3, $4
ori $3, $0, 0x3af2
subu $3, $5, $2
mthi $5
sltu $3, $2, $4
srlv $5, $2, $4
and $5, $3, $1
multu $4, $5
add $4, $5, $3
mult $0, $2
sub $5, $3, $4
slti $5, $4, 0x3a33
addi $1, $3, 0x4add
add $3, $5, $4
sub $0, $4, $1
addi $5, $1, 0x2bb1
lhu $1, 44($0)
xori $1, $4, 0x5e19
add $4, $5, $5
addi $2, $5, 0x2b53
addu $4, $2, $3
add $3, $4, $4
lb $1, 26($0)
addi $1, $3, 0x3c72
sw $4, 24($0)
or $2, $5, $0
addiu $4, $3, 0x5f7c
srav $1, $5, $4
add $4, $4, $1
mult $3, $2
nor $4, $3, $2
add $2, $5, $4
addi $0, $4, 0x21ed
add $4, $1, $0
add $2, $4, $2
add $3, $0, $5
sub $5, $5, $4
or $2, $1, $3
addiu $5, $4, 0x2d85
addi $2, $3, 0x62c6
sub $5, $1, $1
addiu $4, $3, 0x37e1
ori $0, $3, 0x6431
add $3, $2, $2
lbu $3, 8($0)
sub $1, $4, $4
lb $3, 27($0)
sub $1, $1, $0
sw $2, 4($0)
lhu $3, 52($0)
sub $2, $5, $5
lhu $4, 4($0)
lh $4, 34($0)
div $1, $4
addu $4, $4, $3
sub $1, $3, $1
mfhi $5
li $4, 0x750a1c28
sw $0, 17($0)
slti $1, $0, 0x5718
addi $2, $1, 0x6cf7
addi $0, $0, 0x73dd
add $2, $4, $5
xori $0, $5, 0x107c
addi $5, $2, 0x51d1
add $4, $3, $1
lh $2, 43($0)
lhu $4, 50($0)
sub $0, $3, $2
multu $2, $5
mfhi $5
sub $1, $0, $1
add $4, $2, $5
sltiu $5, $0, 0x47e8
li $3, 0x3755a151
srav $3, $4, $0
sub $4, $5, $4
subu $2, $3, $0
sltiu $4, $3, 0x28d9
add $1, $3, $1
addiu $0, $4, 0x7f5f
mtlo $5
add $5, $2, $2
lb $2, 33($0)
div $3, $2
sub $2, $1, $1
sub $3, $2, $5
lw $0, 14($0)
mfhi $5
nor $0, $1, $5
xori $1, $3, 0x3b66
xor $2, $4, $5
addiu $3, $4, 0x4d3b
sllv $0, $4, $0
lhu $1, 31($0)
sub $5, $5, $5
sw $1, 23($0)
slt $5, $4, $2
lbu $3, 49($0)
add $1, $5, $3
sub $2, $1, $4
sub $4, $5, $5
add $2, $1, $4
sub $1, $4, $1
add $5, $0, $3
add $5, $0, $1
addi $0, $1, 0x11a8
sh $1, 23($0)
sub $1, $1, $2
lb $3, 20($0)
lbu $4, 37($0)
addi $3, $5, 0x3e5a
sltu $2, $1, $3
add $5, $4, $1
srlv $2, $4, $0
lh $1, 29($0)
lh $2, 28($0)
sltiu $5, $5, 0x1dde
div $4, $0
nor $2, $4, $5
add $0, $0, $3
addi $3, $1, 0x1628
sub $2, $2, $1
add $5, $1, $4
add $1, $5, $0
lh $1, 10($0)
sw $5, 18($0)
lb $4, 11($0)
andi $1, $0, 0x7119
sub $5, $1, $4
add $4, $4, $5
sb $2, 38($0)
add $2, $5, $3
mflo $2
or $0, $1, $1
div $4, $5
slti $5, $5, 0x12a3
sub $2, $3, $2
sub $2, $1, $5
addi $0, $2, 0x2ac4
addi $0, $4, 0x4780
add $2, $2, $0
addi $5, $4, 0x27c8
sub $1, $1, $0
add $1, $3, $3
addi $4, $1, 0x74d0
addi $1, $0, 0x1e17
sltiu $4, $4, 0x7774
sub $4, $2, $0
mtlo $4
xori $0, $5, 0x43d
multu $3, $0
srav $2, $2, $3
add $3, $4, $3
sub $0, $1, $0
mtlo $5
multu $5, $2
mthi $0
addi $5, $3, 0x29b7
addiu $0, $5, 0x6cec
andi $3, $2, 0x6486
add $0, $5, $4
mtlo $0
lhu $3, 41($0)
li $3, 0x70095d75
mfhi $4
sub $1, $3, $1
mult $5, $2
sw $3, 25($0)
addi $0, $2, 0x3ab2
xor $3, $2, $0
or $2, $0, $1
sllv $3, $5, $2
divu $5, $4
sub $1, $5, $4
slti $2, $2, 0x2c66
mtlo $5
sub $2, $4, $3
subu $0, $4, $3
sub $0, $0, $1
sltiu $3, $5, 0x368b
add $2, $2, $4
addi $1, $2, 0x2fde
add $3, $4, $5
addi $5, $0, 0x214e
sh $0, 48($0)
add $5, $2, $5
lbu $0, 47($0)
mtlo $4
addiu $0, $1, 0x38f5
lb $0, 30($0)
sub $0, $1, $1
slti $0, $4, 0x1520
add $0, $1, $1
mfhi $1
add $1, $3, $3
add $5, $1, $5
add $1, $5, $1
add $5, $4, $1
or $4, $2, $3
sltiu $1, $1, 0x558f
lh $3, 19($0)
slt $3, $4, $1
addi $3, $4, 0x1ef1
sllv $1, $1, $0
lb $1, 18($0)
add $2, $2, $5
addi $1, $0, 0x5ce0
srav $3, $4, $2
srlv $2, $5, $3
add $4, $4, $5
nor $5, $4, $2
addu $1, $4, $0
add $2, $2, $1
addi $5, $4, 0x5756
sub $5, $3, $2
sub $0, $2, $0
addi $4, $1, 0xd5e
add $1, $4, $4
slti $4, $4, 0x26
sb $3, 33($0)
lbu $3, 25($0)
sub $0, $3, $4
addi $5, $0, 0x708b
subu $1, $5, $1
ori $2, $0, 0x225f
slt $3, $5, $0
sw $0, 3($0)
lb $1, 21($0)
lbu $2, 43($0)
lw $2, 50($0)
mfhi $4
mflo $5
divu $1, $1
multu $4, $5
lhu $4, 38($0)
sub $2, $4, $3
addu $5, $4, $3
sub $2, $4, $2
mtlo $4
sb $4, 44($0)
ori $2, $4, 0x338
addu $4, $0, $2
add $2, $3, $4
mflo $3
sb $2, 29($0)
lhu $2, 12($0)
slti $2, $4, 0x21a7
sb $1, 48($0)
addi $2, $2, 0x6782
mflo $1
sllv $5, $5, $1
lh $5, 52($0)
addi $3, $0, 0xccf
xori $3, $1, 0x3e17
sb $2, 37($0)
add $1, $2, $3
mthi $2
xor $4, $1, $2
xor $3, $5, $3
addu $4, $2, $5
xor $2, $4, $2
add $1, $2, $2
subu $5, $4, $4
lhu $3, 19($0)
mfhi $2
add $3, $1, $5
addi $3, $4, 0x684e
lbu $0, 31($0)
sub $2, $3, $5
sub $1, $2, $0
li $0, 0xf6d0f42f
add $4, $5, $3
sub $3, $0, $0
lhu $1, 0($0)
sllv $3, $4, $3
addi $1, $1, 0x408e
lhu $1, 30($0)
addiu $4, $3, 0x72e2
add $5, $0, $1
sub $0, $5, $2
add $5, $5, $5
addi $1, $3, 0x3f40
or $1, $2, $0
addi $4, $0, 0x32e1
sh $2, 19($0)
xor $0, $5, $2
lbu $2, 47($0)
sub $1, $5, $1
divu $1, $0
sub $3, $3, $5
sltu $2, $5, $0
lw $3, 18($0)
add $5, $2, $5
mult $1, $2
lh $2, 9($0)
or $2, $0, $1
sb $5, 5($0)
addi $3, $0, 0x3036
add $0, $5, $3
add $5, $2, $4
or $0, $5, $1
sllv $5, $5, $0
sltiu $3, $3, 0x1ab6
div $4, $0
srav $4, $3, $2
li $5, 0xbb3b898f
sllv $3, $1, $5
sub $4, $2, $5
sh $1, 13($0)
divu $4, $0
addi $4, $2, 0x1fcd
or $3, $5, $1
addi $2, $3, 0x5829
srav $5, $5, $2
addi $4, $3, 0x6812
sltiu $2, $5, 0x1558
addu $0, $1, $0
sub $0, $5, $4
mfhi $4
sh $5, 43($0)
addiu $1, $5, 0x6a97
add $1, $2, $2
or $3, $0, $3
addi $0, $3, 0x5c38
addu $0, $1, $4
and $0, $0, $3
lui $2, 0x38a8
addi $0, $1, 0x4968
sw $5, 14($0)
sub $2, $4, $3
sh $2, 49($0)
lh $4, 10($0)
subu $4, $2, $0
ori $0, $5, 0x7abf
ori $1, $2, 0x3753
sub $5, $1, $5
multu $4, $1
addi $2, $1, 0x5afc
lh $2, 45($0)
sub $4, $3, $4
sub $5, $4, $4
slt $1, $5, $3
addi $3, $0, 0x7f6
sub $0, $2, $4
srav $4, $2, $5
srav $1, $1, $2
addi $0, $5, 0x7683
sltu $2, $1, $2
add $4, $1, $3
divu $1, $0
sltu $0, $2, $5
sub $1, $1, $3
multu $3, $4
srlv $1, $4, $5
addu $5, $3, $5
or $0, $1, $3
add $5, $2, $0
lui $2, 0x6c7
sb $2, 27($0)
ori $5, $0, 0x1baa
subu $2, $2, $5
and $5, $4, $3
add $1, $2, $0
addi $0, $1, 0x2b80
lbu $0, 45($0)
mflo $1
sub $5, $3, $3
sub $3, $3, $4
subu $1, $5, $2
lui $5, 0x3f81
add $4, $5, $2
addi $4, $5, 0xce1
add $0, $4, $1
sltiu $2, $2, 0x4bcf
and $3, $5, $1
add $1, $3, $3
sub $0, $2, $3
addi $2, $2, 0x4ca3
andi $1, $3, 0x78f4
addu $0, $0, $5
andi $1, $4, 0x3aa4
sub $0, $4, $2
ori $4, $4, 0x929
addiu $1, $2, 0x1e8
add $5, $5, $1
divu $4, $0
sltiu $5, $4, 0x129d
add $5, $3, $0
sb $5, 35($0)
addi $2, $1, 0x78cd
add $5, $3, $1
srav $1, $3, $1
addi $0, $0, 0x6878
addi $3, $4, 0xe1d
sllv $3, $0, $5
mthi $2
lui $1, 0x4044
sw $4, 25($0)
srlv $1, $4, $1
srlv $4, $4, $4
div $1, $2
srlv $1, $5, $0
li $2, 0xdb9dbaff
sub $3, $1, $5
add $1, $1, $0
addi $3, $0, 0x6410
divu $4, $0
add $3, $1, $5
sh $3, 9($0)
addi $1, $5, 0x647d
lw $2, 8($0)
addi $0, $3, 0x509f
lbu $0, 11($0)
sub $5, $2, $4
add $5, $3, $4
lh $3, 29($0)
xori $2, $5, 0x2b6d
sltiu $3, $5, 0x2d61
mult $3, $5
xori $0, $4, 0x798f
sltiu $1, $5, 0x4566
sb $2, 7($0)
li $5, 0x74113a6e
subu $0, $2, $3
add $5, $1, $3
addi $3, $2, 0x6ed3
sltu $0, $2, $4
add $0, $1, $5
and $5, $5, $1
sltiu $5, $2, 0x742f
mflo $2
ori $2, $2, 0x38a4
lui $3, 0x4fef
add $5, $3, $1
div $4, $3
sub $1, $2, $4
add $2, $1, $2
lw $0, 1($0)
lbu $2, 2($0)
add $0, $2, $0
addu $5, $5, $4
andi $5, $3, 0x5ff5
mthi $2
sub $4, $1, $2
addi $1, $1, 0xeeb
mult $1, $0
lb $1, 17($0)
div $0, $0
addi $1, $1, 0x44e1
xor $4, $4, $2
add $2, $5, $3
add $1, $2, $1
lw $2, 50($0)
sub $4, $0, $3
add $4, $3, $0
addi $2, $2, 0x147e
and $5, $5, $5
addi $4, $4, 0x62ed
add $0, $4, $5
sh $3, 36($0)
mflo $1
sltu $3, $5, $2
div $4, $0
addi $4, $4, 0x37e3
or $4, $1, $4
addi $1, $0, 0x405b
or $0, $0, $4
nor $4, $1, $2
addu $4, $4, $4
lh $1, 9($0)
lbu $0, 23($0)
lb $5, 12($0)
xori $3, $0, 0xb51
sw $4, 31($0)
mfhi $1
add $2, $5, $2
add $1, $2, $2
srav $2, $3, $4
lui $0, 0x5e3c
mtlo $1
add $5, $1, $3
andi $2, $3, 0x5271
sub $1, $4, $2
add $4, $2, $1
sllv $4, $5, $0
add $5, $0, $5
and $0, $2, $4
addi $2, $4, 0x152c
lhu $4, 38($0)
add $4, $4, $2
slti $5, $4, 0x4770
ori $3, $0, 0x73a1
li $2, 0xb5092761
sltiu $0, $0, 0x291a
srav $0, $5, $4
xor $1, $3, $4
addi $5, $1, 0x66c2
addi $2, $5, 0x2c3b
divu $0, $0
multu $3, $4
lhu $3, 8($0)
mtlo $4
addi $2, $0, 0x2964
multu $1, $4
srlv $1, $5, $0
mtlo $2
addi $4, $1, 0x4b77
addi $3, $2, 0x5d3a
sub $5, $1, $4
sub $4, $0, $1
sub $5, $4, $2
addi $4, $4, 0x674d
mthi $5
addi $1, $3, 0x15ee
add $2, $1, $4
or $1, $0, $3
mult $5, $4
sub $1, $4, $4
add $2, $5, $0
sub $2, $2, $4
sub $4, $4, $3
add $0, $5, $3
ori $4, $2, 0x6196
subu $2, $3, $3
addu $3, $2, $0
add $5, $0, $4
mtlo $4
add $0, $0, $4
sw $2, 42($0)
srav $4, $1, $2
add $2, $4, $4
slt $3, $5, $4
lh $5, 24($0)
add $2, $2, $1
addi $1, $4, 0x6198
mthi $2
mtlo $1
xor $5, $1, $3
sub $4, $0, $1
addi $1, $1, 0x3bbf
addi $3, $4, 0x38c1
sw $2, 27($0)
lhu $5, 2($0)
sllv $5, $2, $4
addi $5, $2, 0x35b4
add $2, $1, $4
mult $1, $5
xor $5, $4, $5
addi $0, $4, 0x49ae
addu $2, $5, $4
addi $3, $1, 0x2531
lh $1, 35($0)
addiu $1, $3, 0x2040
sub $2, $4, $4
lbu $5, 37($0)
sub $2, $3, $5
mflo $4
lw $1, 45($0)
lb $2, 43($0)
addi $1, $3, 0x7a2a
subu $5, $2, $2
sub $5, $1, $0
add $1, $4, $5
sub $3, $4, $0
add $0, $0, $0
andi $5, $5, 0x500
add $4, $3, $0
sw $0, 50($0)
sltu $2, $3, $3
mfhi $2
sw $5, 10($0)
addi $2, $4, 0x9a1
addi $5, $3, 0x5f48
lui $0, 0x44ec
addi $0, $3, 0x48c8
divu $3, $5
addi $1, $3, 0x5900
ori $1, $0, 0x64b0
sllv $2, $2, $5
mthi $5
add $1, $2, $3
lbu $0, 22($0)
and $0, $5, $0
mult $4, $1
mthi $3
lui $3, 0x7cb9
srav $3, $2, $3
addiu $0, $1, 0x3b0f
addu $3, $2, $0
addi $2, $2, 0x451b
div $1, $4
addi $0, $0, 0x10d8
slt $2, $2, $4
add $1, $3, $1
addu $1, $3, $5
add $5, $1, $3
lhu $2, 36($0)
and $5, $5, $5
xori $1, $3, 0x5a75
sub $2, $2, $3
sub $3, $1, $0
slt $1, $0, $3
add $5, $1, $4
sub $1, $3, $4
div $5, $1
andi $0, $2, 0x1f28
lbu $1, 25($0)
or $4, $2, $1
srav $1, $2, $4
sltu $0, $5, $3
sub $1, $1, $3
addi $4, $5, 0xa2a
and $3, $3, $0
addi $5, $3, 0x793e
sb $4, 46($0)
lb $3, 35($0)
mfhi $4
slti $2, $2, 0x6fe1
lh $5, 19($0)
div $0, $5
lui $3, 0x46a5
mfhi $1
slt $4, $0, $4
multu $0, $5
sltiu $0, $1, 0x6854
sub $3, $0, $3
mult $3, $4
sub $4, $3, $2
andi $4, $3, 0x384d
sub $5, $2, $0
add $4, $0, $0
slti $5, $0, 0x98d
ori $0, $1, 0x349e
nor $5, $2, $5
nor $5, $2, $1
add $1, $4, $1
slt $5, $4, $4
addi $3, $3, 0x61e7
lb $3, 17($0)
addi $4, $0, 0x691f
srav $4, $5, $4
subu $3, $5, $1
addi $0, $5, 0x4c91
mtlo $3
add $4, $3, $4
add $5, $5, $4
add $4, $1, $3
sh $3, 16($0)
li $3, 0xc1fdb8be
multu $2, $3
mfhi $1
addi $3, $3, 0x79ea
addi $1, $5, 0x7d95
mfhi $4
add $1, $3, $4
andi $2, $0, 0x37fd
sub $2, $0, $3
or $4, $1, $1
addi $1, $2, 0x2570
sw $1, 50($0)
div $4, $1
lbu $3, 37($0)
sllv $5, $5, $2
sb $3, 42($0)
addi $2, $4, 0x3864
add $4, $3, $0
mthi $5
addi $4, $0, 0x122f
fuck:
j fuck
nop

.ktext 0x4180
mfc0 $t9, $14
addiu $t9, $t9, 4
mtc0 $t9, $14
eret
sh $2, 42($0)