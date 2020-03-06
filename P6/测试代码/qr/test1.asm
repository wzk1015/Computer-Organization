#ori
ori $1,$0,0x1234  #+
nop
nop
nop
nop
ori $2,$1,0xabcd  #+
#lui
lui $3,0xf128  #-
nop
nop
nop
nop
ori $4,$3,0x5678 #-
nop
nop
#add
add $5,$1,$2 #++
add $6,$1,$3 #+-
add $7,$3,$4 #--
#addu
addu $5,$1,$2 #++
addu $6,$3,$2 #+-
addu $7,$4,$3 #--
#sub
sub $5,$1,$2 #++
sub $6,$1,$3 #+-
sub $7,$4,$1 #-+
sub $8,$3,$4 #--
#subu
subu $5,$2,$1 #++
subu $6,$2,$3 #+-
subu $7,$3,$1 #-+
subu $8,$4,$3 #--
#and 
and $5,$1,$2 #++
and $6,$2,$3 #+-
and $7,$3,$4 #--
#or
or $5,$1,$2 #++
or $6,$2,$4,#+-
or $7,$3,$4 #--
#xor
xor $5,$2,$1 #++
xor $6,$3,$1 #+-
xor $7,$3,$4 #--
#nor
nor $5,$1,$2 #++
nor $6,$1,$4 #+-
nor $7,$3,$4 #--
#addi
addi $5,$1,0x1234 #++
addi $6,$3,-0x1111 #--
addi $7,$4,0x1234 #-+
addi $8,$2,-0x1765 #+-
#addiu
addiu $5,$1,0x1234 #++
addiu $6,$2,-0x1765 #+-
addiu $7,$4,0x1234 #-+
addiu $8,$3,-0x1888 #--
#andi 
andi $5,$1,0x1234 #+
andi $6,$4,0x8888 #-
andi $7,$0,0x1234 #0
#xori
xori $5,$1,0x1234 #+
xori $6,$4,0x8888 #-
xori $7,$0,0x1234 #0
#sll
sll $5,$1,2 #+
sll $6,$4,3 #-
sll $7,$4,0
sll $8,$0,23
#sra
sra $5,$1,3 #+
sra $6,$3,4 #-
sra $7,$4,0
sra $8,$0,23
#srl
srl $5,$1,3 #+
srl $6,$4,4 #-
srl $7,$3,0 
srl $8,$0,23
#sllv
ori $9,$0,6
ori $10,$0,33
nop
nop
nop
nop
sllv $5,$1,$9 #+
sllv $6,$4,$9 #-
sllv $7,$3,$0 #0
sllv $8,$0,$9 #0
sllv $8,$4,$10 #more
#srlv
srlv $5,$1,$9 #+
srlv $6,$3,$9 #-
srlv $7,$3,$0
srlv $8,$0,$9
srlv $8,$3,$10
#srav
srav $5,$1,$9 #+
srav $6,$4,$9 #-
srav $7,$4,$0
srav $8,$0,$9
srav $8,$1,$10
#slt
slt $5,$1,$2 #++
slt $5,$2,$1 
slt $5,$2,$2
slt $6,$1,$3  #+-
slt $6,$3,$1
slt $6,$3,$3
slt $7,$3,$4 #--
slt $7,$4,$3
#sltu
sltu $5,$1,$2 #++
sltu $5,$2,$1 
sltu $5,$2,$2
sltu $6,$1,$3  #+-
sltu $6,$3,$1
sltu $6,$3,$3
sltu $7,$3,$4 #--
sltu $7,$4,$3
#slti
lui $10,0xffff
nop
nop
nop
nop
ori $10,$10,0xffff
slti $5,$1,0x1234 #++
slti $5,$1,0x0001
slti $5,$1,0x7fff 
slti $6,$3,0x1234 #-+
slti $6,$3,-0x0001 #--
slti $6,$3,-0x7fff
slti $6,$3,0x0000
slti $6,$10,-0x0001
slti $8,$1,-0x0001 #+-
#sltiu
sltiu $5,$1,0x1234 #++
sltiu $5,$1,0x0001
sltiu $5,$1,0x7fff 
sltiu $6,$3,0x1234 #-+
sltiu $6,$3,-0x1234 #--
sltiu $6,$3,-0x7fff
sltiu $6,$3,0x0000
sltiu $6,$10,-0x0001
sltiu $8,$1,-0x0001 #+-
#mult
mult $1,$2 #++
nop
nop
nop
nop
nop
nop
mult $2,$3 #+-
nop
nop
nop
nop
nop
nop
nop
mult $3,$4 ,#--
nop
nop
nop
nop
nop
nop
nop
#multu
multu $1,$2 #++
nop
nop
nop
nop
nop
nop
nop
multu $1,$3 #+-
nop
nop
nop
nop
nop
nop
nop
multu $3,$4 #--
nop
nop
nop
nop
nop
nop
nop
#div
div $1,$2 #++
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
div $1,$3 #+-
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
div $3,$1 #-+
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
div $3,$4,#--
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
#divu
divu $1,$2 #++
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
divu $1,$3 #+-
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
divu $3,$1 #-+
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
divu $3,$4,#--
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
#sw sh sb
ori $10,$0,0x0020
nop
nop
nop
nop
sw $1,-4($10)
sw $2,0($10)
sw $4,4($10)
sh $1,-2($10)
sh $2,0($10)
sh $4,2($10)
sb $1,-3($10)
sb $2,-2($10)
sb $3,-1($10)
sb $4,0($10)
sb $5,1($10)
sb $6,2($10)
sb $7,3($10)
#lw lh lhu lb lbu
lw $1,-4($10)
lw $1,0($10)
lw $1,4($10)
lh $2,-2($10)
lh $2,0($10)
lh $2,2($10)
lh $2,4($10)
lh $2,6($10)
lhu $3,-2($10)
lhu $3,0($10)
lhu $3,2($10)
lhu $3,4($10)
lhu $3,6($10)
lb $4,-3($10)
lb $4,-2($10)
lb $4,-1($10)
lb $4,0($10)
lb $4,5($10)
lb $4,6($10)
lb $4,7($10)
lbu $5,-3($10)
lbu $5,-2($10)
lbu $5,-1($10)
lbu $5,0($10)
lbu $5,5($10)
lbu $5,6($10)
lbu $5,7($10)
#b
lui $4,0xffff
beq $1,$2,label1 #!=
nop
ori $1,$0,0x3456
lui $2,0x1234
lui $3,0x1234
nop
nop
nop
nop
label1:
beq $2,$3,label2 #==
nop
lui $10,0x1234
nop
label4:
blez $1,label5
nop
lui $10,0x2345
blez $0,label5
nop
lui $10,0x2345
label2:
bne $2,$3,label3 #==
nop
lui $10,0x2345
nop
label3:
bne $1,$2,label4 #!=
nop
lui $10,0x2345
nop
label6:
bgtz $0,label4
nop
lui $10,0x2345
bgtz $4,label4
nop
lui $10,0x2345
bgtz $2,label7
nop
lui $10,0x2345
label8:
bgez $4,label1
nop
lui $10,0x2345
bgez $0,label9
nop
lui $10,0x2345
label5:
blez $4,label6
nop
lui $10,0x2345
label7:
bltz $0,label1
nop
lui $10,0x2345
bltz $1,label2
nop
lui $10,0x2345
bltz $4,label8
nop
lui $10,0x2345
label9:
bgez $2,label10
nop
lui $10,0x2345
nop
label10:
#mf
mfhi $1
mflo $2
#mt
mthi $3
mtlo $4
#j jal jr jalr
j label11
nop
lui $10,0x2345
nop
label12:
sub $4,$5,$6
nop
nop
nop
jr $31
nop
lui $10,0x2345
label13:
sll $5,$3,3
nop
nop
nop
nop
jalr $1,$31
nop
lui $10,0x2345
label11:
add $4,$2,$3
jal label12
nop
lui $10,0x2345
nop
jal label13
nop
lui $10,0x2345
nop
nop
nop
ori $1,$0,0x36a0
nop
nop
nop
nop
jr $1
nop
nop
lui $10,0x2345
nop
nop
jalr $2,$1
nop
lui $10,0x2345









