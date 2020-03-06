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
mult:jal next
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
next:
sw $31,0($0)#jal-nop-sw-rt:forward
jalr $5,$31
nop