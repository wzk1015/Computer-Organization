lui $1,0xf0ff

ori $2,$1,0xabbd

sll $3,$1,3

sra $4,$1,3

srl $5,$1,3

addu $6,$4,$3

add $7,$4,$3

sub $8,$3,$4

nor $22,$3,$2
subu $8,$3,$4
or $9,$3,$4
nor $10,$9,$8
xor $11,$9,$8
mult $1,$2
mflo $12
mfhi $13
mtlo $5
mthi $6
mfhi $5
mflo $6
multu $1,$2
mflo $5
mfhi $6
div $1,$2
mflo $5
mfhi $6
divu $1,$2
mflo $5
mfhi $6
beq $5,$6,loop
nop
andi $9,$4,9
loop:jal loop1
nop
nop
nop
sll $0,$0,0
loop1:xori $10,$31,100
ori $9,$0,0x30a8
jalr $5,$9
nop
and $4,$3,$4
srav $19,$12,$9
srlv $20,$12,$9
sllv $21,$12,$9
sw $1,0($0)
sb $2,4($0)
sb $2,5($0)
sh $2,6($0)
lb $22,0($0)
lbu $22,1($0)
lh $23,2($0)
lhu $24,4($0)
lw $25,4($0)
addi $4,$4,4
addiu $5,$5,5
andi $6,$6,6
xori $7,$7,7
lui $4,3
ori $5,$0,4
slti $6,$5,4
sltiu $7,$5,4
slti $6,$5,5
sltiu $7,$5,5
bne $4,$5,loop2
nop
lui $4,4
loop3:
blez $0,loop4
nop
lui $4,3
loop2:blez $0,loop3
nop
loop4:
jal loop5
nop
lui $4,4
bgtz $31,loop6
nop
lui $4,4
loop5:
jr $31
nop
lui $4,4
loop6:
lui $4,0xf000
bltz $4,loop7
nop
lui $4,4
loop7:
slt $9,$4,$5
sltu $10,$5,$4
ori $16,0x316c
jalr $3,$16
nop
nop
add $4,$4,$4
j end
nop
sll $4,$4,3
end:



















