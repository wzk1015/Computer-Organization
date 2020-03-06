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
mult:jal next
nop
ori $1,$0,4
ori $2,$0,1
multu $1,$2
mflo $3
lw $4,0($3)
jr $5
nop
next:jalr $5,$31
nop
end: