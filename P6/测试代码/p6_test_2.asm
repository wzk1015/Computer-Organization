#addu/add/subu/sub/nor/or/xor/slt/sltu/sllv/srav/srlv/and
#lb/lbu/lh/lhu/lw
ori $2,2
lui $1,0xf0f0
srlv $3,$1,$2
srav $4,$1,$2
sllv $5,$1,$2
sw $5,0($0)
sw $3,4($0)
addu $6,$2,$2
lb $7,2($6)
lh $11,6($0)
lhu $12,6($0)
subu $8,$12,$2
xor $9,$12,$8
or $10,$12,$8
lw $13,4($0)
nor $14,$13,$0
slt $15,$13,$0
sltu $16,$0,$13
lbu $17,2($6)
and $18,$17,$3
jal loop
nop
lui $4,4
sll $5,$4,4
jr $31
nop
loop:addu $4,$31,$0
jalr $4
nop
#addu/add/subu/sub/nor/or/xor/slt/sltu/sllv/srav/srlv/and
#sb/sw/sh
sllv $4,$4,$2
ori $4,$4,3
sb $4,8($0)
sb $4,7($0)
sb $4,6($0)
sb $4,5($0)
sh $4,2($0)
addu $5,$4,$4
nor $6,$5,$4
sw $6,0($0)
nop
lh $6,0($0)
sub $7,$0,$6
or $8,$6,$7
j loop3
nop
bltz $8,loop2
nop
subu $9,$0,$8
srav $10,$9,$8
loop2:slt $1,$2,$3
sltu $2,$3,$4
slt $3,$3,$2
sltu $4,$4,$3
sh $4,16($0)
sb $3,3($0)
lbu $5,17($0)
jr $31
nop
loop3:
#addu/add/subu/sub/nor/or/xor/slt/sltu/sllv/srav/srlv/and
#sll/sra/srl
sltu $19,$8,$0
slt $18,$6,$0
sra $1,$18,2
sll $2,$18,3
srl $3,$18,4
add $20,$2,$3
add $20,$18,$19
sll $21,$20,2
sra $22,$20,3
srl $23,$20,4
bgez $6,loop
nop
sub $0,$0,$3
srl $21,$0,4
sll $22,$0,5
sra $23,$0,6
or $24,$22,$23
addu $20,$23,$24
ori $1,$0,3
srlv $2,$14,$1
srl $22,$2,3
sllv $3,$14,$1
sll $23,$3,3
srav $4,$14,$1
sra $24,$4,3
#lb/lbu/lh/lhu/lw
#sll/sra/srl
#sb/sw/sh
lui $1,0xfccc
ori $2,$1,0x1234
sw $2,8($0)
lui $1,0xabcd
ori $2,$1,0xeecc
sw $2,16($0)
lb $1,0($0)
sll $11,$1,3
srl $12,$1,4
sra $13,$1,5
sw $13,12($0)
lhu $4,2($0)
lh $3,6($0)
sll $14,$3,2
sra $15,$3,4
srl $16,$3,3
sh $16,8($0)
sh $16,10($0)
lw $5,4($0)
sll $17,$5,1
sra $18,$5,2
srl $19,$5,3
sb $19,4($0)
sb $19,5($0)
#b,j
ori $1,1
addu $7,$6,$1
beq $6,$7,loops0
nop
add $4,$4,$4
bne $6,$7,loops1
nop
add $5,$5,$5
loops0:lui $1,1
loops1:lui $1,2
bgtz $1,loops2
nop
add $6,$6,$6
loops2:lui $1,3
srav $4,$13,$31
bltz $4,loops3
nop
lui $4,4
loops3:ori $4,$0,4
blez $4,loop
nop
sll $4,$20,3
bgtz $4,loop
nop
jal loops4
nop
addu $5,$0,$2
lui $4,3
nop
nop
j loops5
nop
loops4:sll $20,$31,2
jalr $2,$31
nop
loops5:
ori $20,$0,0x3244
jr $20
nop
addu $4,$4,$4
srav $4,$20,$13
xori $5,$9,1








