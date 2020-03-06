#this part is mainly focus on the load-cal_i-rs type stall. 
ori $1,$0,-100
lui $2,64
add $1,$2,$1
sw $1,0($0)
lw $2,0($0)
addi $3,$2,20#lw-addi-rs:stall
lh $3,0($0)
addiu $4,$3,-20#lh-addiu-rs:stall
lhu $4,2($0)
ori $5,$4,200#lhu-ori-rs:stall
lb $5,0($0)
xori $6,$5,74#lb-xori-rs:stall
lbu $6,0($0)
slti $7,$6,-20#lbu-slti-rs:stall
lbu $7,0($0)
sltiu $8,$7,-20#lbu-sltiu-rs:stall
lb $8,0($0)
slti $9,$8,0#lb-slti-rs:stall
lb $9,0($0)
sltiu $10,$9,0#lb-sltiu-rs:stall
#this part is mainly focus on the forward type.
lui $1,0xffff
addi $1,$1,1000#cal_i-cal_i-rs:forward
addiu $2,$1,0#addi-addiu-rs:forward
andi $3,$2,0xffff#addiu-andi-rs:forward
ori $4,$3,0#andi-ori-rs:forward
xori $5,$4,0xf0f0#ori-xori-rs-forward
ori $6,$0,-50
slti $7,$6,0#ori-slti-rs:forward
ori $6,$0,-90
sltiu $8,$6,0#ori-sltiu-rs:forward
addu $1,$1,$8
ori $1,$1,0#addu-ori:forward
lw $9,0($0)
nop
slti $9,$9,0#lw-otherinstruction-slti-ori:forward
ori $10,$0,-98
sll $11,$10,7
ori $12,$11,0#sll-ori-rs:forward
srl $13,$10,5
ori $14,$13,0#srl-ori-rs:forward
sra $15,$10,3
ori $16,$15,0#sra-ori-rs:forward
ori $17,$0,4
sllv $18,$10,$17
ori $18,$18,0#sllv-ori-rs:forward
srlv $19,$10,$17
ori $19,$19,0
srav $20,$10,$17
ori $20,$20,0#srav-ori-rs:forward
jal next
nop
mult:ori $21,$0,100
ori $22,$0,-23
divu $21,$22
addi $21,$21,1
mflo $23
subi $23,$23,1#mflo-subi-rs:forward.
mfhi $24
slti $25,$24,0#mfhi-slti-rs:forward
jr $5
nop
next:addiu $31,$31,0#jal-nop-addiu-rs:forward
jalr $5,$31
nop
end:
