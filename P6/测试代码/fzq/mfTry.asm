ori $1,123
addu $2,$1,$0
mthi $2
mfhi $3
ori $4,$3,998
mtlo $4
mflo $5
add $6,$4,$5
sw $6,0
lw $7,0
mthi $7
mfhi $8
jal loop
mtlo $31
ori $5,123
loop:
mflo $1
jal loop1
ori $3,7366
loop1:
mthi $31
mfhi $2