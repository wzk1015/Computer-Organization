#m¿‡option
lui $1,0x1111
ori $1,$1,0x1
mult $1,$1
mfhi $2        
mflo $3
ori $4,$3,7
addu $4,$2,$3
sll $4,$3,2
sb $3,0($0)
lui $5,0xabcd
ori $5,$5,0xcdef
ori $7,0xacab
divu $5,$7
addu $9,$5,$7
ori $10,$5,100
mtlo $10
mflo $11
mfhi $12
addu $12,$12,$11
sub $13,$12,$10
ori $7,$0,0x3070
slt $8,$7,$10
andi $8,$7,10
mult $5,$7
ori $5,$0,5
jalr $9,$7
nop
lui $4,4
lui $4,0xffff
ori $5,0xffff
mult $4,$5
mflo $6
mfhi $7
sll $6,$6,4
sub $7,$0,$6
multu $4,$5
mflo $8
mfhi $9
and $10,$8,$9
sll $10,$10,3
div $5,$7
addu $11,$5,$7
add $11,$5,$7
mflo $11
mfhi $12
sw $11,4($0)
sw $10,8($0)
beq $10,$11,loop2
nop
lui $10,4
loop2:
jal loop1
nop
loop1:mult $31,$9
divu $31,$9
mflo $18
mfhi $19
srav $20,$12,$3
lui $1,0xabcd
ori $2,$1,0xdcba
mult $1,$2
xor $3,$2,$1
nor $4,$2,$1
sw $4,8($0)
mflo $5
sw $5,16($0)
sb $5,10($0)
sh $5,12($0)
mfhi $6
sh $6,14($0)
sb $6,11($0)
sw $6,0($0)
lw $7,8($0)
mthi $7
mtlo $6
mflo $7
andi $9,$7,4
slt $12,$7,$6
sltu $13,$6,$7










