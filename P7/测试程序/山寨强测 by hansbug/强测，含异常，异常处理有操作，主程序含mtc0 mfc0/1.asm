li $28, 0
li $29, 0
mtc0 $0, $13
mtc0 $0, $14
li $0, 0x45762dbc
li $1, 0x1402ca0f
li $2, 0x203c737d
li $3, 0x25df6e42
li $4, 0x7d998177
li $5, 0x1c55e393
sub $5, $1, $3
sub $2, $5, $2
andi $1, $2, 0x47c0
lh $3, 8($0)
sltiu $4, $1, 0x6fb6
mtc0 $3, $14
mtc0 $0, $14
and $5, $4, $4
divu $4, $0
mthi $5
nor $0, $2, $0
sw $4, 22($0)
mfc0 $2, $13
sub $2, $5, $3
addu $0, $1, $3
add $2, $2, $3
li $5, 0xdc874dc4
sub $4, $5, $3
nor $3, $3, $5
mfc0 $1, $13
slti $3, $5, 0x5393
xori $3, $1, 0x94b
addi $4, $0, 0x1a02
addiu $5, $2, 0x70a
multu $0, $0
lw $3, 34($0)
slti $1, $3, 0x12d3
nor $4, $5, $2
addi $5, $4, 0x5b64
mtc0 $5, $14
lb $4, 27($0)
add $2, $2, $1
divu $3, $1
multu $1, $5
addi $1, $5, 0x5d5d
addi $3, $2, 0x2b9d
sub $5, $0, $5
andi $4, $3, 0x25c4
addi $1, $3, 0x4ffb
mflo $2
mtc0 $5, $14
lw $1, 1($0)
sub $5, $5, $5
sltu $1, $2, $4
or $4, $2, $2
addi $2, $2, 0x48da
addi $0, $5, 0x76a3
xori $2, $0, 0xb0c
mtlo $3
add $2, $2, $0
srav $0, $2, $0
xor $1, $5, $1
slt $4, $3, $2
mfc0 $3, $13
mflo $3
addi $5, $2, 0x4540
lui $0, 0x4c44
multu $4, $0
mtc0 $2, $14
srlv $5, $0, $4
sub $0, $1, $3
sub $0, $3, $3
sltu $0, $0, $1
mflo $3
mfc0 $2, $14
or $1, $2, $4
add $1, $3, $0
sub $5, $4, $1
addi $2, $3, 0x34e6
xor $4, $2, $5
ori $3, $4, 0x6f34
mfc0 $2, $13
and $3, $1, $1
or $5, $0, $2
mfc0 $1, $13
and $5, $2, $3
lw $1, 3($0)
lui $2, 0x8eb
subu $0, $4, $0
sub $1, $3, $0
mflo $4
sub $2, $2, $1
mthi $4
mfc0 $1, $14
add $4, $4, $3
nor $0, $4, $4
mtc0 $3, $13
add $3, $3, $0
multu $1, $1
nor $3, $5, $4
addi $1, $5, 0x38e5
mthi $3
addi $0, $1, 0x46a
addi $3, $4, 0x372f
addi $1, $1, 0x5d91
addi $5, $1, 0x9c4
addi $4, $2, 0x78a1
addi $0, $4, 0x168a
add $1, $0, $2
sltu $1, $4, $0
lh $3, 44($0)
mfhi $5
mtc0 $1, $14
slt $1, $1, $5
mtc0 $2, $13
subu $4, $1, $0
add $2, $4, $2
mflo $4
lh $2, 23($0)
div $1, $4
lhu $0, 51($0)
or $1, $2, $4
sub $1, $3, $4
slt $5, $2, $4
lui $1, 0x317c
and $0, $5, $3
and $4, $5, $4
and $3, $0, $1
addi $3, $1, 0x4c72
sub $4, $0, $4
mflo $4
or $3, $0, $1
nor $0, $0, $3
andi $3, $2, 0x148
sub $5, $2, $2
subu $3, $2, $4
add $2, $4, $3
add $1, $3, $2
addi $2, $4, 0x3fa6
sub $0, $1, $5
mfhi $4
div $1, $4
slti $4, $4, 0x7bfb
sub $0, $0, $3
li $2, 0x8eb3782a
addi $4, $0, 0x6b37
subu $5, $1, $1
addu $1, $1, $2
li $0, 0xef7fcf4f
mtc0 $1, $13
addi $2, $4, 0x1bf0
addi $4, $4, 0xd2a
add $1, $0, $4
sub $1, $2, $0
mtc0 $3, $13
add $2, $4, $0
sltiu $1, $3, 0x2efb
sub $1, $5, $2
add $5, $3, $3
li $3, 0xab904171
addi $5, $2, 0x5d55
slt $3, $2, $1
sub $5, $2, $0
xor $1, $5, $1
nor $1, $4, $4
mfc0 $1, $13
lui $0, 0x35fa
addi $1, $2, 0x1731
divu $3, $3
sw $4, 48($0)
lbu $3, 18($0)
sltu $2, $1, $5
sb $5, 20($0)
mthi $0
sw $3, 22($0)
sltiu $4, $5, 0x3755
addiu $4, $4, 0x2c82
sub $2, $3, $5
add $0, $4, $3
sub $1, $4, $5
lhu $4, 11($0)
add $1, $2, $0
sltiu $2, $3, 0x56d2
xor $2, $0, $4
add $0, $0, $4
lb $1, 36($0)
mtc0 $5, $14
lhu $4, 0($0)
lhu $4, 51($0)
sw $4, 12($0)
sh $1, 13($0)
sb $4, 46($0)
addi $0, $3, 0x2615
addi $3, $0, 0x2f38
nor $3, $0, $0
sw $1, 8($0)
lhu $0, 51($0)
addiu $4, $4, 0xe58
mtlo $1
addi $2, $3, 0x14d6
xor $5, $2, $4
sub $5, $2, $2
mfc0 $0, $13
lh $0, 28($0)
andi $3, $2, 0x3a10
addiu $3, $3, 0x6447
addi $2, $2, 0x6efc
mflo $4
addi $4, $0, 0x332f
slt $1, $0, $3
mult $5, $0
srlv $5, $1, $0
addiu $1, $3, 0x108a
addi $1, $1, 0x21a8
sltiu $5, $2, 0x12af
slt $1, $0, $1
subu $1, $0, $1
sb $4, 45($0)
sub $3, $0, $1
mtlo $0
add $4, $1, $0
sb $4, 10($0)
add $2, $4, $3
sub $2, $2, $3
add $2, $3, $3
addi $1, $2, 0xc9a
addi $5, $1, 0x4de1
sub $0, $4, $2
add $4, $4, $0
mtc0 $3, $14
sub $4, $4, $2
sub $0, $0, $0
sub $3, $3, $0
add $0, $0, $5
lhu $2, 41($0)
sh $2, 12($0)
sub $5, $2, $3
ori $3, $5, 0x721f
nor $2, $0, $4
addi $0, $1, 0x2e54
subu $4, $3, $0
addi $0, $1, 0x7c05
lh $0, 25($0)
xori $2, $5, 0x2235
addi $2, $4, 0x2006
mflo $3
addi $0, $4, 0x6bc5
sub $0, $1, $4
sub $2, $4, $2
srav $3, $3, $0
sub $4, $0, $3
nor $5, $5, $2
sw $5, 14($0)
andi $3, $3, 0x4240
mthi $1
sub $1, $3, $4
or $5, $1, $0
mfhi $2
sub $1, $4, $4
multu $2, $5
addi $2, $4, 0xcd7
slti $1, $0, 0x711c
lhu $3, 35($0)
xori $1, $0, 0x2ad9
mult $1, $4
or $2, $3, $5
mflo $5
li $4, 0x7b81228b
addu $0, $0, $5
sub $0, $2, $1
add $1, $0, $1
sub $4, $2, $4
nor $1, $4, $0
lw $1, 9($0)
mfhi $1
addi $2, $1, 0x2b41
addiu $4, $5, 0x3aad
addi $4, $1, 0x73e4
lh $2, 42($0)
sltu $0, $0, $2
sub $3, $1, $2
addi $3, $1, 0x66c6
li $2, 0x607b981a
mtc0 $3, $14
addiu $3, $4, 0x2a02
mtlo $1
sltiu $4, $1, 0x2238
add $1, $3, $3
addi $0, $1, 0x5141
sltiu $3, $2, 0xfd0
addu $3, $3, $2
add $1, $4, $3
sub $1, $5, $4
mfc0 $3, $13
addi $5, $5, 0x7f52
slti $5, $1, 0x3c8d
addi $1, $4, 0x4848
mfc0 $4, $14
sub $5, $2, $2
add $2, $1, $1
mflo $0
addiu $3, $4, 0x4584
sw $5, 30($0)
xor $4, $0, $5
subu $1, $0, $4
sub $3, $2, $0
add $4, $1, $3
mfc0 $4, $14
lhu $3, 35($0)
mtc0 $2, $14
sb $4, 9($0)
lh $1, 0($0)
addi $3, $2, 0x2f4f
srlv $2, $0, $2
addi $0, $3, 0x6a22
div $5, $4
andi $5, $5, 0x5c4d
add $4, $0, $4
lbu $3, 5($0)
sltiu $4, $0, 0x722d
lhu $0, 25($0)
addi $4, $2, 0x4bdf
addi $1, $1, 0x77bb
add $4, $5, $0
lui $5, 0x1f7f
lui $0, 0x59b1
mthi $0
slti $0, $5, 0x20ce
lbu $0, 0($0)
mfc0 $0, $14
addi $2, $1, 0x10d8
addi $0, $0, 0x3e87
mtc0 $2, $13
sltiu $1, $2, 0x3a84
addi $1, $1, 0x206c
slti $3, $4, 0x5108
addi $1, $4, 0x694e
sub $5, $0, $5
sub $1, $1, $2
slti $1, $2, 0x5353
sub $5, $2, $4
add $0, $5, $3
sltu $1, $0, $2
lhu $1, 22($0)
mfhi $4
mfc0 $3, $14
sub $3, $0, $2
addi $4, $1, 0x4211
sub $4, $2, $4
or $1, $1, $0
sltiu $0, $4, 0x7968
sb $3, 39($0)
sub $0, $2, $3
addi $3, $3, 0xa69
addiu $2, $1, 0x5635
lui $4, 0x63ac
addi $3, $5, 0x7e2d
mfc0 $5, $14
div $5, $5
add $2, $5, $3
lhu $5, 37($0)
add $1, $3, $4
slt $3, $1, $2
add $2, $3, $2
add $3, $3, $2
add $3, $0, $0
mfc0 $5, $13
mfhi $5
srlv $2, $2, $5
mtlo $2
sltu $4, $0, $5
add $0, $4, $4
mtc0 $3, $13
mtc0 $0, $13
addi $2, $1, 0x4ceb
slti $4, $4, 0x11ac
mfc0 $4, $14
div $3, $3
lw $2, 39($0)
lb $3, 10($0)
addi $4, $4, 0x63b2
andi $5, $2, 0x16a
add $3, $0, $3
sltiu $5, $3, 0x4b45
sub $1, $3, $3
andi $3, $2, 0x1624
ori $0, $0, 0x5729
ori $4, $1, 0x1c01
add $5, $2, $0
add $0, $5, $3
sub $0, $5, $5
subu $4, $4, $3
ori $5, $3, 0x6c18
addu $5, $1, $3
lbu $2, 4($0)
sltiu $1, $1, 0x4bd3
mthi $2
mfc0 $5, $14
and $3, $0, $2
addi $3, $5, 0x258e
lh $3, 9($0)
divu $0, $4
srav $3, $1, $3
lb $4, 32($0)
sub $1, $2, $2
add $1, $4, $0
andi $4, $4, 0x6943
lhu $3, 8($0)
add $4, $4, $5
add $1, $4, $5
sub $3, $4, $0
lui $4, 0x24b5
lbu $1, 33($0)
add $0, $1, $0
add $0, $1, $4
add $4, $5, $1
nor $2, $5, $5
srlv $2, $1, $3
subu $1, $1, $0
nor $5, $2, $2
sltu $3, $4, $3
mtc0 $3, $13
slt $2, $0, $4
addi $3, $4, 0x3a34
xor $3, $5, $3
lhu $2, 49($0)
add $3, $2, $3
addu $2, $0, $2
mfc0 $0, $14
add $0, $3, $5
andi $4, $3, 0x7451
lui $0, 0x78d3
sub $1, $0, $3
addi $0, $5, 0x48d9
andi $2, $1, 0x6c88
addi $3, $1, 0x2d4d
li $1, 0x90b0c80e
lbu $1, 39($0)
sub $0, $1, $1
mfc0 $2, $14
addi $4, $0, 0xf09
multu $5, $5
mtc0 $3, $14
mtc0 $3, $13
sub $2, $0, $0
or $2, $2, $3
subu $3, $1, $1
lbu $4, 47($0)
mtc0 $1, $14
mthi $2
srav $2, $2, $4
sub $3, $4, $4
mfc0 $5, $14
lw $1, 36($0)
sub $4, $4, $3
add $2, $5, $5
add $4, $1, $1
sub $4, $5, $2
divu $3, $0
add $1, $4, $3
sb $3, 46($0)
addi $3, $0, 0x50a1
sllv $0, $0, $0
xor $1, $1, $4
sw $4, 35($0)
lbu $2, 3($0)
sub $2, $4, $2
xori $3, $5, 0x603a
nor $3, $5, $3
div $5, $2
or $0, $2, $3
srav $5, $5, $4
lh $1, 46($0)
mtc0 $5, $13
mtlo $0
nor $0, $3, $4
sltiu $1, $5, 0x1557
mfhi $1
nor $5, $1, $3
addi $0, $1, 0x6d93
div $5, $0
lui $3, 0x2224
multu $2, $0
add $3, $1, $3
mfc0 $4, $13
sub $0, $4, $4
ori $0, $1, 0x475c
sub $1, $1, $2
sub $2, $5, $2
addu $3, $1, $2
add $1, $4, $1
nor $5, $0, $3
mfc0 $3, $13
sub $1, $1, $1
or $0, $3, $1
add $4, $0, $4
addi $2, $0, 0x697a
addi $1, $1, 0x1d37
sh $1, 30($0)
li $2, 0xd4cd0200
sub $3, $1, $4
sw $1, 12($0)
xori $2, $4, 0x14c2
srlv $1, $3, $3
sub $3, $1, $1
add $5, $1, $2
lw $2, 28($0)
mtc0 $3, $13
add $4, $5, $0
lb $0, 17($0)
addi $5, $5, 0x1a05
sub $5, $0, $2
lw $4, 22($0)
sub $0, $5, $2
addi $0, $4, 0x7384
add $0, $0, $5
and $4, $0, $5
mtc0 $4, $14
nor $3, $1, $5
add $1, $5, $5
sb $1, 51($0)
add $0, $1, $3
sub $0, $4, $1
add $5, $4, $4
mtc0 $0, $14
addi $0, $3, 0x7be8
addi $4, $2, 0xe05
xor $2, $3, $5
divu $5, $5
sltiu $3, $5, 0x7491
lb $0, 8($0)
add $2, $4, $2
add $4, $4, $4
addi $0, $4, 0xcb6
li $5, 0x44eeba22
add $3, $4, $4
addi $2, $4, 0x738c
addi $4, $2, 0x6afd
add $5, $4, $5
multu $4, $1
add $5, $1, $3
mtc0 $4, $13
addi $1, $4, 0x3f30
mthi $1
mtlo $3
mult $4, $3
addi $5, $0, 0x3ded
add $2, $1, $1
add $1, $1, $1
mfc0 $0, $14
mult $2, $4
lhu $5, 38($0)
lb $4, 2($0)
xori $0, $4, 0x7152
mfc0 $3, $13
mtc0 $0, $14
xori $1, $4, 0x68e
mtc0 $3, $14
sllv $5, $5, $2
srav $4, $1, $5
subu $1, $0, $2
sw $0, 34($0)
sltiu $1, $0, 0x5c40
mfhi $4
sub $1, $4, $4
sllv $4, $4, $1
sub $3, $2, $5
lbu $4, 49($0)
add $4, $0, $1
nor $0, $0, $2
addiu $5, $4, 0x4f5e
lbu $3, 24($0)
lhu $0, 33($0)
addu $5, $4, $0
lb $1, 46($0)
lhu $4, 26($0)
sub $0, $2, $0
sltiu $1, $5, 0x809
add $3, $3, $5
mtc0 $5, $13
srav $1, $1, $5
lw $1, 18($0)
lhu $1, 30($0)
slti $1, $2, 0x3404
sh $2, 19($0)
xori $1, $0, 0x1411
addi $4, $3, 0x127
sub $0, $0, $1
andi $3, $0, 0x1cb6
lui $1, 0x5434
sub $2, $1, $3
add $4, $2, $3
multu $0, $3
sh $5, 22($0)
slti $1, $1, 0x601e
lh $5, 6($0)
lhu $4, 48($0)
subu $0, $4, $2
lbu $0, 8($0)
sub $1, $4, $0
mtc0 $3, $14
mfhi $0
add $1, $1, $4
addi $5, $2, 0x369a
add $2, $4, $1
sub $5, $4, $4
add $1, $5, $3
xor $3, $4, $2
sub $1, $1, $0
xori $0, $5, 0x487d
mthi $3
or $1, $2, $5
sltiu $2, $5, 0xfb6
add $1, $1, $1
lb $2, 31($0)
lhu $5, 23($0)
addi $5, $3, 0x49f2
sb $5, 44($0)
sb $1, 26($0)
sb $0, 41($0)
lui $2, 0x4abc
addu $0, $0, $2
mthi $1
xor $0, $2, $2
mtc0 $3, $13
add $4, $3, $4
sub $5, $0, $2
addi $5, $2, 0x78f1
addi $4, $5, 0x3fb
mflo $0
mthi $2
mfc0 $2, $13
multu $5, $1
mfc0 $0, $13
addi $5, $2, 0x7f3d
sub $0, $4, $5
mfhi $1
ori $0, $0, 0x549c
mtc0 $0, $13
sub $3, $4, $1
lb $5, 29($0)
sub $5, $4, $3
xor $2, $5, $3
slti $0, $0, 0x282c
addiu $5, $3, 0x7e23
addi $5, $1, 0x518e
mfhi $2
or $3, $5, $5
sub $2, $2, $0
mult $4, $2
addi $0, $3, 0x3a4
lbu $1, 9($0)
nor $0, $1, $3
divu $1, $1
sltiu $1, $1, 0x3fb8
addi $0, $2, 0x28b5
xor $4, $0, $4
add $2, $2, $4
lh $3, 14($0)
sub $4, $3, $0
addu $3, $2, $0
mflo $4
sub $5, $0, $0
addi $1, $0, 0x6859
srav $4, $1, $1
sub $1, $2, $4
add $4, $2, $5
lb $4, 50($0)
mult $5, $3
sub $2, $1, $2
mtc0 $3, $14
addi $5, $1, 0x342a
add $3, $1, $0
lbu $2, 35($0)
lui $1, 0x63e2
mult $5, $2
mthi $3
mult $5, $1
addiu $1, $2, 0x1a44
mfc0 $1, $14
addi $0, $2, 0x7f2d
slt $5, $5, $1
mfhi $1
sub $0, $3, $3
sw $5, 35($0)
lb $2, 26($0)
add $4, $3, $1
sub $1, $1, $2
lui $3, 0x2842
lb $5, 20($0)
mtc0 $1, $14
srav $1, $4, $2
slti $5, $3, 0x6c10
mfc0 $3, $14
multu $1, $0
addi $5, $2, 0x286
addiu $3, $2, 0x53e2
addu $4, $2, $0
xori $5, $3, 0x3b06
add $0, $5, $1
lhu $3, 40($0)
and $4, $0, $5
mfc0 $5, $14
sub $3, $4, $3
sub $0, $3, $3
sb $3, 25($0)
sub $1, $5, $0
mtlo $2
addi $5, $2, 0x7b5c
multu $4, $1
sllv $0, $4, $5
li $3, 0xe43bc1ee
addi $2, $0, 0x35b4
slti $0, $3, 0x4889
or $3, $5, $2
nor $1, $5, $4
mtlo $3
xori $4, $5, 0x45a1
div $0, $5
addi $4, $2, 0x2afb
lb $1, 31($0)
slti $0, $3, 0x38fe
slt $3, $5, $0
addi $1, $1, 0x375d
mult $2, $3
addi $4, $5, 0x3313
addi $2, $5, 0x27c9
addi $1, $5, 0x1a0d
sub $1, $3, $2
lbu $4, 33($0)
addi $4, $2, 0xd3b
sltu $3, $4, $0
li $2, 0xf00cc29c
lhu $0, 37($0)
sw $4, 19($0)
lh $0, 48($0)
srlv $0, $5, $4
divu $0, $0
mtc0 $1, $13
addi $0, $2, 0x61c0
multu $3, $5
slt $2, $5, $0
mult $4, $4
addi $1, $4, 0x5696
addi $3, $2, 0x715c
sub $5, $0, $2
addiu $3, $0, 0x6f23
sh $2, 45($0)
sub $2, $5, $4
subu $1, $2, $4
addi $2, $0, 0x7990
sllv $3, $5, $2
or $5, $4, $1
sub $5, $3, $5
sub $4, $3, $2
sub $5, $5, $1
slti $2, $4, 0x3a7b
sub $2, $4, $1
multu $4, $5
addi $2, $2, 0x292e
addi $1, $2, 0x2005
lw $0, 25($0)
div $2, $3
srlv $3, $3, $1
addi $5, $0, 0x901
lhu $0, 8($0)
sub $2, $3, $1
subu $4, $0, $4
sub $3, $3, $0
sub $4, $2, $5
mthi $5
xori $3, $5, 0x7df
subu $1, $3, $5
mfc0 $3, $14
add $2, $2, $3
mtc0 $0, $14
lhu $0, 39($0)
mult $0, $3
ori $0, $3, 0x10b2
and $2, $4, $0
addi $0, $4, 0x691c
addi $1, $0, 0x25a7
addiu $4, $0, 0x620c
mtc0 $5, $13
sltiu $4, $1, 0x25ca
srlv $1, $2, $3
srav $2, $4, $3
mtc0 $3, $14
mfc0 $3, $14
mtc0 $5, $14
add $2, $3, $3
sub $1, $1, $2
lbu $1, 47($0)
or $5, $4, $0
li $2, 0x85ab33a6
li $5, 0x5d362999
sub $3, $2, $5
addi $2, $2, 0x1a92
lhu $5, 21($0)
addi $1, $1, 0x7e9b
add $0, $0, $4
or $0, $4, $3
addu $4, $5, $0
slti $4, $2, 0x3407
lw $1, 1($0)
lbu $4, 7($0)
lw $3, 28($0)
srlv $5, $2, $5
addi $3, $3, 0x2e56
sub $4, $4, $0
add $1, $4, $0
sb $0, 33($0)
divu $4, $2
sub $1, $4, $1
addiu $0, $4, 0x2489
andi $1, $2, 0x3a3f
div $2, $4
sub $5, $1, $2
sub $5, $1, $3
subu $4, $2, $1
mthi $1
srlv $4, $3, $3
li $0, 0x2c276fa5
lw $5, 29($0)
add $5, $4, $4
mflo $0
mfc0 $4, $13
subu $1, $4, $5
mtc0 $5, $13
mflo $3
addi $0, $0, 0x6478
addiu $0, $3, 0x272b
sub $3, $2, $0
and $2, $0, $5
srlv $3, $0, $1
addi $3, $3, 0x928
addi $4, $2, 0x616f
addi $4, $1, 0x7db1
addi $1, $2, 0x7bec
divu $3, $5
lhu $4, 37($0)
mfc0 $4, $13
mfc0 $1, $14
divu $1, $5
sub $3, $1, $0
sub $4, $4, $4
slti $2, $5, 0x49a3
lb $2, 48($0)
lbu $0, 23($0)
add $4, $2, $1
lui $3, 0x17d4
mfc0 $0, $14
mtc0 $0, $14
or $4, $0, $3
add $5, $1, $3
mult $0, $4
mfhi $0
mtc0 $2, $13
add $1, $5, $5
add $0, $1, $2
li $0, 0x649b357b
sw $3, 28($0)
mtc0 $1, $13
sllv $2, $3, $1
add $3, $2, $1
mfc0 $2, $13
addi $4, $1, 0x5976
addi $1, $2, 0x585c
sllv $4, $5, $0
addi $4, $4, 0xa66
nor $1, $4, $3
addi $0, $2, 0xb90
lb $5, 10($0)
mfc0 $3, $13
addi $2, $0, 0x7ad4
multu $4, $5
add $5, $1, $2
mtlo $2
addi $2, $1, 0x2219
lh $0, 43($0)
addi $1, $4, 0x306b
add $3, $5, $0
lhu $3, 18($0)
sub $0, $3, $2
andi $5, $4, 0x774e
slt $3, $1, $4
add $5, $1, $1
addi $4, $5, 0x6601
multu $2, $5
sub $3, $2, $3
xor $0, $3, $2
mtc0 $2, $13
addi $2, $1, 0x61bd
and $4, $4, $4
mfc0 $3, $13
or $3, $4, $5
addi $1, $5, 0x791d
sub $3, $3, $4
addi $0, $4, 0x3e42
sllv $0, $5, $1
sltiu $5, $1, 0x7e1
add $4, $4, $4
lbu $4, 24($0)
add $4, $5, $5
sh $4, 15($0)
mult $4, $2
mtlo $3
add $0, $2, $2
sllv $3, $5, $2
slt $1, $2, $0
fuck:
j fuck
nop

.ktext 0x4180
li $0, 0x1ce298f2
li $1, 0x78ae059e
li $2, 0x7078672f
li $3, 0x728186cc
li $4, 0x3bd0293f
li $5, 0x5675e28a
lbu $4, 46($0)
addiu $0, $5, 0x4920
sllv $2, $0, $1
mtlo $5
mtlo $4
lh $4, 24($0)
lbu $0, 20($0)
slt $1, $2, $2
mfhi $4
sh $4, 46($0)
xor $4, $2, $1
xori $3, $3, 0x12e2
multu $0, $1
sltu $1, $4, $0
xori $1, $1, 0x5b3
ori $4, $5, 0x2dea
slt $5, $4, $3
multu $3, $1
mtlo $1
mthi $4
xori $2, $2, 0x7e0
xor $5, $3, $4
sh $0, 34($0)
multu $0, $0
lw $1, 20($0)
mfc0 $t9, $14
addiu $t9, $t9, 4
mtc0 $t9, $14
eret
lb $5, 25($0)
