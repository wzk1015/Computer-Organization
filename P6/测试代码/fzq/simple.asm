ori $1,123
addu $1,$1,$0
subu $2,$2,$1
add $3,$2,$2
sub $4,$2,$3
and $5,$1,$4
or $2,$3,$4
xor $3,$3,$1
nor $4,$2,$3
lui $6,0x8765
ori $7,0x8765
slt $5,$6,$7
sltu $8,$6,$7
ori $3,0x324
srl $9,$6,2
sll $8,$6,2
sra $8,$6,2
sllv $8,$6,$7
srlv $8,$6,$7
srav $8,$6,$7
ori $1,2345
andi $2,$1,3243
xori $3,$2,1213
addi $1,$3,656
sw $1,0($0)
sh $2,4($0)
sh $3,6($0)
sw $6,8($0)
lhu $7,10($0)
lh $9,10($0)
lhu $8,8($0)
lh $10($0)
lbu $7,8($0)
lbu $8,9($0)
ori $1,12
ori $2,34
subu $3,$1,$2
mult $1,$3
mflo $4
ori $5,12
ori $6,34
subu $7,$5,$6
multu $7,$5
mflo $4
lui $1,0x234
lui $2,0xffff
ori $2,0xffff
div $1,$2
mflo $3
mfhi $4
ori $3,333
divu $3,$1
mflo $3
mfhi $4
sw $3,0
sw $4,4
lw $6,0
mult $6,$7
mflo $8
ori $5,0x9999
mtlo $5
mflo $10
jal loop1
mult $31,$5
mthi $31
loop1:
mflo $3
mfhi $4
ori $5,0x8765
jal loop2
multu $5,$31
ori $5,124
loop2:
mflo $3
mfhi $4







 
  
   
     