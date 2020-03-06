.text
ori $1,$0,0x1234
lui $2,0x5678
or $3,$2,$1
#正确性
#mtc0 mfc0
mtc0 $1,$13
mtc0 $1,$12
mtc0 $1,$14
mtc0 $1,$15
mfc0 $4,$13
mfc0 $5,$12
mfc0 $6,$14
mfc0 $7,$15
#设备
ori $1,$0,0x7f00
ori $2,$0,0x7f10
sw $3,0($1)
sw $3,4($1)
sw $4,0($2)
sw $4,4($2)
lw $3,0($1)
lw $3,4($1)
lw $3,8($1)
lw $4,0($2)
lw $4,4($2)
lw $4,8($2)
#转发暂停
mfc0 $1,$13
beq $1,$1,label1  #beq-mfc0
nop
lui $12,0x1234
label1:
lui $11,0x1234
beq $1,$0,label1
nop
mfc0 $2,$12
nop 
beq $2,$0,label1 #beq-x-mfc0
nop
lui $12,0x1234
mfc0 $1,$13
bgez $1,label2  #bgez-mfc0
nop
lui $12,0x1234
label2:
lui $11,0x1234
mfc0 $1,$14
nop
blez $1,label3 #blez-x-mfc0
nop
lui $12,0x1234
label3:
lui $11,0x1234
mfc0 $1,$13
nop
nop
blez $1,label4 #blez-x-x-mfc0
nop
lui $12,0x1234
label4:
lui $11,0x1234
ori $1,$0,0x30ec
mtc0 $1,$14
mfc0 $2,$14  #mfc0-mtc0
jr $2   #jr-mfc0
nop
nop
lui $12,0x1234
ori $1,$0,0x310c
mtc0 $1,$14
mfc0 $2,$14
nop
jr $2   #jr-x-mfc0
nop
nop
lui $12,0x1234
ori $1,$0,0x3130
mtc0 $1,$14
mfc0 $2,$14
nop
nop
jr $2   #jr-x-x-mfc0
nop
nop
lui $12,0x1234
ori $1,$0,0x3150
mtc0 $1,$14
mfc0 $2,$14
jalr $3,$2   #jalr-mfc0
nop
nop
nop
lui $12,0x1234
ori $1,$0,0x3170
mtc0 $1,$14
mfc0 $2,$14
nop
jalr $3,$2   #jalr-x-mfc0
nop
nop
lui $12,0x1234
ori $1,$0,0x3198
mtc0 $1,$14
mfc0 $2,$14
nop
nop
jalr $3,$2   #jalr-x-x-mfc0
nop
nop
nop
lui $12,0x1234
mfc0 $1,$14
addu $3,$1,$2 #cal-mfc0
subu $3,$1,$2 #cal-x-mfc0
addu $3,$1,$2 #cal-x-x-mfc0
ori $1,$0,4
mtc0 $1,$14
mfc0 $1,$14
sw $2,0($1) #sw-mfc0
sw $3,4($1) #sw-x-mfc0
sw $12,8($1) #sw-x-x-mfc0
mfc0 $1,$14
lw $2,0($1) #lw-mfc0
lw $2,4($1) #lw-x-mfc0
lw $2,8($1) #lw-x-x-mfc0
mfc0 $1,$13
mult $1,$2 #mult-mfc0
mthi $1 #mult-x-mfc0
mtlo $1 #mult-x-x-mfc0
mfc0 $2,$14
beq $1,$2 label5 #beq-mfc0
nop
lui $12,0x1234
label5:
lui $11,0x1234
mfc0 $2,$12 
nop
beq $0,$2,label6 #beq-x-mfc0
nop
lui $12,0x1234
label6:
lui $11,0x1234
mfc0 $3,$12
nop
nop
beq $1,$3,label7 #beq-x-x-mfc0
nop
lui $12,0x1234
label7:
lui $11,0x1234
mfc0 $1,$12
addu $3,$2,$1 #cal-mfc0
addu $3,$2,$1 #cal-x-mfc0
addu $3,$2,$1 #cal-x-x-mfc0
mfc0 $2,$14
mult $1,$2 #mult-mfc0
div $1,$2 #mult-x-mfc0
mtlo $2 #mult-x-x-mfc0
mfc0 $1,$13
sw $1,0($0) #sw-mfc0
sw $1,4($0) #sw-x-mfc0
sw $1,8($0) #sw-x-x-mfc0
mfc0 $2,$13
mtc0 $2,$14 #mtc0-mfc0
mtc0 $2,$14 #mtc0-x-mfc0
mtc0 $2,$14 #mtc0-x-x-mfc0




