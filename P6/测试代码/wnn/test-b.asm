ori $1,$0,0xf0001234
ori $2,$0,0xb4a
add $3,$1,$2
addu $4,$1,$2
sub $5,$2,$1
subu $6,$2,$1
and $7,$2,$1
or $8,$2,$1
xor $9,$2,$1
nor $10,$2,$1
nop
addi $11,$2,0x47fe
addiu $12,$2,0x47fe
lui $13,0x3014
ori $14,$2,0xab3d0000
andi $15,$2,0xffff234f
xori $16,$2,0xab3d0000
nop
sw $16,0($0)
sh $15,4($0)
sh $6,6($0)
sb $12,8($0)
sb $11,9($0)
sb $10,10($0)
sb $9,11($0)
nop
lw $17,8($0)
lh $18,4($0)
lhu $19,4($0)
lh $20,6($0)
lhu $21,6($0)
lb $22,0($0)
lbu $23,0($0)
lb $24,1($0)
lbu $25,1($0)
lb $26,2($0)
lbu $27,2($0)
lb $28,3($0)
lbu $29,3($0)
nop
mthi $29
mtlo $28
mfhi $30
mflo $1
mult $27,$17
mfhi $2
mflo $3
mult $27,$16
mfhi $4
mflo $5
div $17,$27
mfhi $6
mflo $7
div $17,$26
mfhi $8
mflo $9
nop
ori $10,$0,0xabcdef34
sll $11,$10,0
sll $12,$10,1
sll $13,$10,2
sll $14,$10,3
srl $15,$10,4
srl $16,$10,5
srl $17,$10,6
srl $18,$10,7
sra $19,$10,8
sra $20,$18,9
sra $21,$18,10
sra $22,$18,11
sllv $23,$18,$17
sllv $24,$18,$16
sllv $25,$18,$15
srlv $26,$18,$8
srlv $27,$18,$9
srlv $28,$18,$8
srav $29,$18,$9
srav $30,$18,$8
srav $31,$18,$9
nop
ori $1,$0,0x1234
lui $30,0xffff
lui $2,0xfed3
lui $3,0x5678
addu $4,$1,$2
addu $5,$1,$3
slt $6,$1,$2
slt $7,$2,$1
sltu $8,$1,$2
sltu $9,$2,$1
slt $10,$3,$2
slt $11,$2,$3
sltu $12,$3,$2
sltu $13,$2,$3
slt $14,$30,$2
slt $15,$2,$30
sltu $16,$30,$2
sltu $17,$2,$30
slti $18,$1,0x1233
slti $19,$0,0x1233
slti $20,$30,0x1233
slti $21,$1,-100
slti $22,$0,-200
slti $23,$30,-100
sltiu $24,$1,0x1233
sltiu $25,$0,0x1233
sltiu $26,$30,0x1233
sltiu $27,$1,-100
sltiu $28,$0,-101
sltiu $29,$30,-102
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
beq $1,$2,target_1
nop
addu $6,$1,$2
target_1:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
beq $2,$1,target_2
nop
addu $6,$1,$2
target_2:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
beq $1,$3,target_3
nop
addu $6,$1,$2
target_3:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
beq $3,$1,target_4
nop
addu $6,$1,$2
target_4:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bne $1,$2,target_5
nop
addu $6,$1,$2
target_5:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bne $1,$3,target_6
nop
addu $6,$1,$2
target_6:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bne $3,$1,target_7
nop
addu $6,$1,$2
target_7:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
beq $1,$2,target_8
nop
addu $6,$1,$2
target_8:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
blez $1,target_9
nop
addu $6,$1,$2
target_9:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
blez $0,target_10
nop
addu $6,$1,$2
target_10:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
blez $3,target_11
nop
addu $6,$1,$2
target_11:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bgez $1,target_12
nop
addu $6,$1,$2
target_12:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bgez $0,target_13
nop
addu $6,$1,$2
target_13:
or $5,$6,$2
nop
nop
ori $1,$0,0x4
addi $2,$0,0x4
sub $3,$0,$2
bgez $3,target_14
nop
addu $6,$1,$2
target_14:
or $5,$6,$2
nop
nop
nop
j target_15
nop
addu $16,$14,$12
target_15:
subu $16,$14,$12
nop
nop
jal target_16
nop
addu $16,$14,$12
target_16:
subu $16,$14,$12
addu $30,$0,$31
nop
nop
ori $2,$0,0x340c

nop
subu $16,$14,$12
j end
nop
addu $16,$14,$12
jr $1
nop
end:
nop
