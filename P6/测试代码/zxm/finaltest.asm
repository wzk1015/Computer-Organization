#the first part is about the cal_r stall:all about load instruction will cause the stall.
ori $1,$0,-100
lui $2,100
add $1,$2,$1
sw $1,0($0)
lw $2,0($0)
addu $3,$2,$0#lw-addu-rs:stall
lw $3,0($0)
subu $4,$0,$3#lw-subu-rt:stall
lh $4,0($0)
add $5,$4,$0#lh-add-rs:stall
lhu $5,2($0)
sub $6,$0,$5#lhu-sub-rt:stall
lb $6,0($0)
and $7,$6,$3#lb-and-rs:stall
lb $7,1($0)
or $8,$2,$7#lb-or-rt:stall
lbu $8,2($0)
xor $9,$8,$1#lbu-xor-rs:stall
lbu $9,3($0)
nor $10,$1,$9#lbu-nor-rt:stall
lbu $11,3($0)
slt $12,$11,$9#lbu-slt-rs:stall
lhu $13,0($0)
sltu $14,$12,$13#lhu-sltu-rt:stall
#the next part is about the forward function:all about the load-x-cal_r,cal_i-cal_r,shift-cal_r,jumpandlink-cal_r,mfhi/lo-cal_r
ori $1,$0,300
add $2,$1,$1#ori-add-rs,rt:forward
slt $3,$1,$2#add-slt-rt:forward
sltu $4,$3,$0#slt-sltu-rs:forward
ori $5,$0,-80
slt $6,$5,$0#ori-slt-rs:forward
ori $7,$0,-100
sltu $8,$7,$5#ori-sltu-rt:forward
slt $8,$7,$5
or $9,$7,$6
xor $10,$9,$9#or-xor-rs,rt:forward
nor $11,$10,$9#xor-nor-rs:forward
and $12,$11,$1#nor-and-rs:forward
sll $13,$7,5
or $14,$13,$0#sll-or-rs:forward
srl $15,$7,5
or $16,$0,$15#srl-or-rt:forward
sra $17,$5,5
or $18,$17,$0#sra-or-rs:forward
ori $19,$0,7
sllv $20,$5,$19
or $21,$20,$0#sllv-or-rs:forward
srlv $22,$5,$19
or $23,$22,$19#srlv-or-rs:forward
srav $24,$5,$19
or $25,$24,$0#srav-or-rs:forward
jal next1
nop
mult1:ori $1,$0,100
ori $2,$0,-100
mult $1,$2
mflo $3
add $3,$3,$5
jr $5
next1:addu $31,$31,$0#jal-nop-addu-rs:forward
sltu $30,$31,$0
jalr $5,$31
nop
end1:
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
jal next2
nop
mult2:ori $21,$0,100
ori $22,$0,-23
divu $21,$22
addi $21,$21,1
mflo $23
subi $23,$23,1#mflo-subi-rs:forward.
mfhi $24
slti $25,$24,0#mfhi-slti-rs:forward
jr $5
nop
next2:addiu $31,$31,0#jal-nop-addiu-rs:forward
jalr $5,$31
nop
end2:
#the first part is mainly test the stall:load
ori $1,$0,4
sw $1,0($0)
ori $1,$0,100
sw $1,4($0)
lw $2,0($0)
lw $3,0($2)#lw-lw-rs:stall
lh $4,0($0)
lw $5,0($4)#lh-lw-rs:stall
lhu $6,0($0)
lw $7,0($6)#lhu-lw-rs:stall
lb $8,0($0)
lw $9,0($8)#lb-lw-rs:stall
lbu $10,0($0)
lw $11,0($10)#lbu-lw-rs:stall
#the second part is mainly test the forward
ori $1,$0,4
addu $2,$1,$0
lw $3,0($2)#addu-lw-rs:forward
addi $3,$0,4
lw $4,0($3)
ori $5,$0,1
sll $5,$5,2
lw $6,0($5)#shift-lw-rs:forward
mult3:jal next3
nop
ori $1,$0,4
ori $2,$0,1
multu $1,$2
mflo $3
lw $4,0($3)
jr $5
nop
next3:jalr $5,$31
nop
end3:
#the first part is focused on the stall.
ori $1,$0,4
sw $1,0($0)
ori $1,$0,0x5678
lui $2,0x1234
addu $1,$1,$2
sw $1,4($0)
lw $2,0($0)
sw $1,0($2)#lw-sw-rs:stall
lh $3,0($0)
sh $1,0($3)#lh-sh-rs:stall
lhu $4,0($0)
sh $1,2($4)#lhu-sh-rs:stall
lb $5,0($0)
sb $1,0($5)#lb-sb-rs:stall
lb $6,0($0)
sb $1,1($6)#lb-sb-rs:stall
#this part is mainly focused on the forward
li $30,0x12345678
ori $1,$0,4
addu $2,$0,$1
sw $30,0($2)#addu-sw-rs:forward
addu $30,$30,$1
sh $30,2($0)#addu-sw-rt:forward
li $30,0x12345678
sw $30,4($0)#ori-sw-rt:forward
addi $4,$0,5
sb $30,0($4)#ori-sb-rs:forward
ori $5,$0,1
sll $5,$5,2
sw $30,4($5)#sll-sw-rs:forward
sra $29,$30,2
sw $29,8($5)#sra-sw-rt:forward
mult4:jal next4
nop
sw $5,0($0)#jalr-nop-sw-rt:forward
ori $1,$0,8
ori $2,$0,2
div $1,$2
mflo $3
sw $31,0($3)#mflo-sw-rt:forward
ori $7,$0,29
ori $9,$0,30
mult $7,$9
mfhi $4
sw $4,4($3)#mfhi-sw-rs:forward
jr $5
nop
next4:
sw $31,0($0)#jal-nop-sw-rt:forward
jalr $5,$31
nop
end4:
#the first part is mainly focused on the shift instructon's stall.->load-shift
ori $1,$0,-50
sw $1,0($0)
lw $2,0($0)
sll $3,$2,20#lw-sll-rs:forward
lh $3,0($0)
srl $4,$3,5#lw-srl-rs:stall
lb $4,0($0)
sra $5,$4,5
ori $1,$0,50
sw $1,4($0)
lw $5,4($0)
sra $5,$5,4#lw-sra-rs:stall
ori $1,$0,-50
sll $2,$1,6
addiu $1,$1,0xffff
srl $1,$1,7#addiu-srl-rs:forward
lui $1,0xffff
sra $1,$1,9#lui-sra-rs:forward
addiu $1,$1,200
sll $1,$1,5#addiu-sll-rs"forward
ori $1,$1,1
sll $1,$1,31#ori-sll-rs:forwaard
sra $1,$1,20
srl $1,$1,9#sra-srl-rs:forward
jal next5
nop
mult5:
ori $1,$0,0xffff
lui $2,0xffff
mult $1,$2
mfhi $3
sll $3,$3,4
mflo $4
sra $4,$4,7
multu $1,$2
mfhi $3
srl $3,$3,5
mflo $4
sra $4,$4,6
mthi $1
mtlo $2
mfhi $1
sll $1,$1,20
mflo $2
sra $2,$2,10
jr $5
nop
next5:sll $29,$31,16#jal-sll-rs
sra $28,$29,7
srl $27,$28,9
jalr $5,$31
nop
end5:
ori $1,$0,1
addiu $2,$0,20
for1:beq $1,$2,endfor1
sw $1,0($0)
addiu $1,$1,1
j for1
nop
endfor1:
ori $1,$0,3
addiu $2,$0,3
for2:bne $1,$2,endfor2
sb $2,4($2)
addiu $1,$1,1
mult $2,$2
mflo $2
j for2
nop
endfor2:
ori $2,$0,10
subu $3,$2,$0
for3:blez $3,endfor3
sw $3,0($0)
addiu $2,$2,-1
subu $3,$2,$0
j for3
nop
endfor3:
ori $2,$0,11
subu $3,$0,$2
for4:bgtz $3,endfor4
sw $3,8($0)
addiu $2,$2,-1
subu $3,$0,$2
j for4
nop
endfor4:
ori $2,$0,10
subu $3,$2,$0
for5:bltz $3,endfor5
sw $3,12($0)
addiu $2,$2,-1
subu $3,$2,$0
j for5
nop
endfor5:
ori $2,$0,11
subu $3,$0,$2
for6:bgez $3,endfor6
sw $3,0($0)
addiu $2,$2,1
subu $3,$2,$0
j for6
nop
endfor6:
ori $2,$0,11
subu $3,$0,$2
for7:bgez $3 endfor7
sw $3,0($0)
addiu $2,$2,1
subu $3,$2,$0
j for7
nop
endfor7:
ori $2,$1,-100
lui $3,123
mult $2,$3
mfhi $4
mflo $5
multu $2,$3
mfhi $4
mflo $5
div $2,$3
mfhi $4
mflo $5
divu $2,$3
mfhi $4
mflo $5
addi $4,$4,1
mthi $4
mfhi $5
ori $1,$0,0x1234
sw $1,0($0)
lw $2,0($0)
mthi $2
mfhi $3


