#¼Ó¼õÒç³ö£¬Ö»Éæ¼°26¡¢27ºÅ¼Ä´æÆ÷
.text
ori $1,0x7f00
ori $2,0x7f10
lui $26 0x7fff
lui $19,0x7fff
ori $19,$19,0xffff
lui $9,0xffff
ori $10,0xac99
add $24,$26,$26#overflow
sw $24,0($0)#ov-s
sw $24,0($1)
sw $24,4($2)
lw $3,0($1)
lw $3,4($2)
lw $3,0($0)
ori $26,0xffff
lui $27,0x7000
add $26,$26,$27
add $27,$26,$27#overflow
addu $27,$26,$27#ov-add
xor $27,$27,$18
slti $3,$27,-1
lui $26,0x7fff
ori $26,$26,0xffff
addi $21,$26,100#overflow
sll $5,$21,4#ov-sll
sra $5,$21,4
srl $5,$21,4
jal loop0
nop
lui $1,1
loop0:lui $26,0x8000
sub $4,$26,$31#overflow
sw $4,4($0)
sw $4,4($1)
sw $4,4($2)
bgez $4,loop
nop
lui $1,1
loop:add $26,$19,$0
add $26,$26,$26#overflow
lh $3,4($0)#ov-l
lhu $3,4($0)
lb $4,7($0)
lbu $4,7($0)
lw $4,4($0)
lhu $4,6($0)
add $26,$19,$0
add $26,$26,$26#overflow
xori $4,$26,3#ov-i
slti $4,$26,3
ori $4,$3,3
nop
nop
blez $26,loop1
nop
lui $1,2
loop1:
add $26,$19,$0
add $26,$26,$26#overflow
bgtz $26,loop3#ov-b
nop
lui $1,1
loop3:add $26,$19,$0
add $26,$26,$26#overflow
mult $9,$10
mfhi $4
mflo $5
nop
nop
nop
div $9,$10
add $26,$19,$0
add $26,$26,$26#overflow
mfhi $4
mflo $5
mthi $19
add $26,$19,$0
add $26,$26,$26#overflow
mfhi $4
nop
sw $0,0($0)
lui $0,0
nop
nop
divu $9,$10
nop
add $26,$19,$0
add $26,$26,$26#overflow
mfhi $4
mflo $5
nop
nop
nop
multu $9,$10
nop
nop
add $26,$19,$0
add $26,$26,$26#overflow
mfhi $4
mflo $4
nop
add $26,$19,$0
ori $3,$0,3
sw $3,0($0)
lw $4,0($0)
beq $4,$3,loop4
add $26,$26,$26#overflow
lui $1,3
nop
loop4:nop
nop
add $26,$19,$0
jal loop5
add $26,$26,$26#overflow
nop
lui $4,1
loop5:mtc0 $31,$14
nop
nop
nop
add $26,$19,$0
add $26,$26,$26#overflow
mfc0 $4,$12
mfc0 $4,$13
mfc0 $4,$14
mfc0 $4,$15
sw $4,0($2)
add $26,$19,$0
add $26,$26,$26#overflow
j loop6
nop
lui $4,1
loop6:
nop
nop
nop
add $26,$19,$0
add $26,$26,$26#overflow
mfc0 $4,$12
mfc0 $4,$13
mfc0 $4,$14
mfc0 $4,$15
add $26,$19,$0
ori $9,$0,0x3244
jalr $9
add $26,$26,$26#overflow
lui $4,1
nop

