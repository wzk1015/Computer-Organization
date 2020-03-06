#addi/addiu/andi/lui/ori/xori/slti/sltiu/
#addu/add/subu/sub/nor/or/xor/slt/sltu/sllv/srav/srlv/and
lui $1,0xabcd
lui $2,0xffff
ori $3,$1,1
ori $4,$2,1
sllv $5,$4,$3
srlv $6,$4,$3
srav $7,$4,$3
jal loop1
nop
xori $9,$8,0x1234
xor $10,$9,$8
nor $11,$8,$9
xori $12,$11,0xabcd
sb $12,0($0)
j loop2
nop
loop3:sltiu $17,$4,1
add $18,$17,$17
sub $4,$4,$18
andi $19,$17,0xffff
ori $20,0x3080
jalr $20
nop
loop1:
addi $8,$31,0
jr $8
nop
loop2:slti $13,$12,0xcd
and $14,$13,$12
or $15,$13,$12
nor $16,$13,$12
bgez $2,loop3
nop
add $21,$31,$20
srlv $22,$21,$3
addi $23,$22,1
addiu $24,$22,1
beq $23,$24,loop5
nop
add $5,$5,$5
loop4:addi $5,$5,3
slt $6,$5,$4
xor $7,$5,$6
sub $8,$5,$2
andi $7,$1,3
nor $8,$7,$1
or $9,$7,$1
srav $9,$7,$1
lui $10,0xcccc
srlv $11,$10,$3   
sb $21,0($0)
sb $29,1($0)
sb $3,2($0)
sb $4,3($0)
lbu $5,3($0)
lbu $6,2($0)
lb $7,1($0)
lb $8,0($0)
sh $7,0($0)
sw $8,4($0)
j loop3
nop
loop5:
#lb/lbu/lh/lhu/lw
#sb/sw/sh
ori $1,$0,16
sh $11,4($1)
sw $29,8($1)
sb $3,0($1)
sh $31,-2($1)
sh $31,-4($1)
sb $8,6($1)
sb $12,7($1)
lw $11,0($1)
lb $13,1($1)
xor $4,$11,$13
lh $14,-4($1)
lhu $15,-2($1)
sw $15,0($0)
sh $15,6($0)
lb $16,7($0)
sw $22,4($0)
lw $1,4($0)
lw $2,4($0)
lw $3,4($0)
sb $23,3($0)
lbu $23,3($0)
lb $24,3($0)
jal loops1
nop
ori $4,$0,0xffff
sh $4,10($0)
lhu $5,10($0)
lh $6,10($0)
or $7,$6,$5
bgez $5,loops2
nop
loops1:
ori $20,$31,0
jr $20
nop
loops2:
#sll/sra/srl
#addi/addiu/andi/lui/ori/xori/slti/sltiu/
sll $0,$0,0
addi $3,$1,1
sll $4,$3,4
sra $5,$3,2
srl $6,$3,2
xori $7,$6,8
ori $1,$0,1
sub $8,$7,$1
sll $9,$8,3
srl $10,$8,3
sra $11,$8,3
and $12,$18,$11
slti $13,$1,2
sltiu $14,$1,1
sll $15,$20,3
srl $16,$20,3
sra $17,$20,3
beq $13,$14,loop1
nop
bgtz $0,loop1
nop
lui $0,0x1111
sw $0,0($0)
andi $18,$7,9
sll $19,$18,2
sra $20,$18,2
srl $21,$18,2
andi $22,$21,0xf0f0
lui $1,0xf0f0
sll $2,$1,4
sra $3,$1,4
srl $4,$1,4
ori $1,$0,0xfabc
sll $2,$1,4
sra $3,$1,4
srl $4,$1,4
addi $5,$2,1
addiu $6,$4,2
#sb/sw/sh
#addi/addiu/andi/lui/ori/xori/slti/sltiu/
addi $1,$0,2
sw $1,4($0)
sw $1,8($0)
xori $2,$1,8
sh $2,6($0)
sh $2,10($0)
lui $3,0xffff
ori $3,$3,0x1234
sb $3,0($0)
sb $3,1($0)
sb $3,2($0)
sb $3,3($0)
ori $4,$0,4
sb $15,0($4)
sh $15,0($4)
sw $15,0($4)
#addi/addiu/andi/lui/ori/xori/slti/sltiu/
#lb/lbu/lh/lhu/lw
lb $13,20($0)
lb $14,21($0)
addi $15,$14,3
xori $16,$13,9
lbu $17,20($0)
lbu $18,21($0)
sltiu $19,$18,9
slti $20,$17,0xcc
lh $9,4($0)
lh $10,6($0)
andi $11,$9,1
addiu $12,$9,2


















































