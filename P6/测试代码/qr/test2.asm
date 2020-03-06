ori $1,$0,0x1234
lui $2,0x7898
sra $3,$2,3 #cal-cal
srav $4,$2,$3 #cal-x-cal
sltiu $5,$2,-0x2344 #cal-x-x-cal
ori $1,$0,0x0020
sw $2,0($1) #sw-cal
sw $2,4($1) #sw-x-cal
sw $3,8($1) #sw-x-x-cal
sw $1,0($1)
lw $3,0($1)
sb $4,0($3) #store-load
sb $5,2($3) #store-load
sb $1,4($3) #store-x-x-load
sltu $1,$4,$5
lb $2,0($1) #load-cal
lbu $3,2($1) #load-x-cal
lbu $4,3($1) #load-x-x-cal
addi $5,$4,0x1234 #cal-load
xor $6,$4,$1 #cal-x-load
sll $7,$3,6 #cal-x-x-load
ori $1,$0,0x0004
sw $1,0($0)
lw $2,0($0)
lw $3,0($2) #load-load
lw $4,4($2) #load-x-load
lw $5,-4($2) #load-x-x-load
jal label1
nop
lui $20,0x8888
label1:
add $3,$31,$1 #cal-x-jal
srl $4,$31,10 #cal-x-x-jal
jal label2
nop
lui $20,0x8888
label2:
lw $1,-0x3080($31) #load-x-jal
lbu $2,-0x3080($31) #load-x-x-jal
jal label3
nop
lui $20,0x8888
label3:
sw $1,-3088($31) #store-x-jal
sw $2,-3088($31) #store-x-x-jal
ori $1,$0,0x30b0
jalr $2,$1
nop
addu $3,$2,$2 #cal-x-jalr 30b0
ori $1,$0,0x30c0
jalr $2,$1
nop    
lw $3,-0x30c0($2) #load-x-jalr 30c0
ori $1,$0,0x30d0
jalr $2,$1
nop
sw $3,-0x30d0($2) #store-x-jalr
ori $1,$0,0x30e0
jalr $2,$1
nop
nop
sub $3,$2,$1 #cal-x-x-jalr  30e4
ori $1,$0,0x30f4
jalr $2,$1
nop
lui $20,0x8888
lw $3,-0x30e4($2) #load-x-x-jalr
ori $1,$0,0x3108
jalr $2,$1
nop
lui $20,0x8888
sw $3,-0x3108($2) #sw-x-x-jalr
ori $1,$0,0xffff
lui $2,0x1235
mult $1,$2
mfhi $1
addu $3,$1,$4 #cal-mf
slti $3,$1,0x1234 #cal-x-mf
xor $3,$1,$2 #cal-x-x-mf
mfhi $2
lw $3,-0x1234($2) #load-mf
lw $3,-0x1234($2) #load-x-mf
lw $3,-0x1234($2) #load-x-x-mf
mflo $2
sw $2,0($0) #store-mf
sw $2,0($0) #store-mf
sw $2,0($0) #store-mf
mfhi $2
sw $3,-0x1234($2) #load-mf
sw $3,-0x1234($2) #load-x-mf
sw $3,-0x1234($2) #load-x-x-mf 315c
ori $1,$0,0x316c
jr $1 #jr-cal
nop
ori $1,$0,0x3180 #316c
nop
jr $1 #jr-x-cal
nop
lui $20,0x8888 #317c
lui $20,0x8888 #3180
ori $1,$0,0x31a0
nop
nop
jr $1 #jr-x-x-cal
nop
lui $20,0x8888
lui $20,0x8888 #319c
ori $1,$0,0x31b4
sw $1,0($0)
lw $1,0($0)
jr $1 #jr-load
nop
lui $20,0x8888
nop
ori $1,$0,0x31d8
sw $1,0($0)
lw $1,0($0)
nop
jr $1 #jr-x-load
nop
lui $20,0x8888
nop
ori $1,$0,0x31fc
sw $1,0($0)
lw $1,0($0)
nop
nop
jr $1  #jr-x-x-load
nop
lui $20,0x8888
nop
ori $1,$0,1
ori $2,$0,0x321c
mult $1,$2
mflo $3
jr $3 #jr-mf
nop
lui $20,0x8888
nop
ori $1,$0,1
ori $2,$0,0x3240
mult $1,$2
mflo $3
nop
jr $3 #jr-x-mf
nop
lui $20,0x8888
nop
ori $1,$0,1
ori $2,$0,0x3268
mult $1,$2
mflo $3
nop
nop
jr $3 #jr-x-x-mf
nop
lui $20,0x8888
nop
jal label4
nop
lui $20,0x8888
jal label5
nop
lui $20,0x8888
jal label6
nop
jr $2  #jr-x-jalr
nop
label4:
jr $31  #jr-x-jal
nop
label5:
lui $20,0x8888
jr $31 #jr-x-x-jal
nop
label6:
ori $1,$31,0
jalr $2,$1
nop
lui $20,0x8888
ori $1,$0,0x32cc
jalr $2,$1
nop
lui $20,0x8888
jal label8
nop
jr $2 #jr-x-x-jalr
nop
label8:
ori $1,$0,0x32e8
jalr $2,$1 #jalr-cal
nop
lui $20,0x8888
nop
ori $1,$0,0x3300
sw $1,0($0)
lw $1,0($0)
jalr $2,$1  #jalr-load
nop
lui $20,0x8888
ori $1,$0,1
ori $2,$0,0x3320
multu $1,$2
mflo $1
jalr $2,$1 #jalr-mf
nop
lui $20,0x8888
nop
ori $1,$0,0x3338
nop
jalr $2,$1 #jalr-x-cal
nop
lui $20,0x8888
nop
ori $1,$0,0x3354
nop
nop
jalr $2,$1 #jalr-x-x-cal
nop
nop
nop
ori $1,$0,0x3370
sw $1,0($0)
lw $1,0($0)
nop
jalr $2,$1  #jalr-x-load
nop
lui $20,0x8888
ori $1,$0,0x3390
sw $1,0($0)
lw $1,0($0)
nop
nop
jalr $2,$1  #jalr-x-x-load
nop
lui $20,0x8888
ori $1,$0,1
ori $2,$0,0x33b0
multu $1,$2
mflo $1
nop
jalr $2,$1 #jalr-x-mf
nop
lui $20,0x8888
ori $1,$0,1
ori $2,$0,0x33d4
multu $1,$2
mflo $1
nop
nop
jalr $2,$1 #jalr-mf
nop
lui $20,0x8888
jal label9
nop
jal label10
nop
jal label11
nop
jalr $2,$1#jalr-x-jalr
nop
lui $20,0x8888
label9:
jalr $2,$31 #jalr-x-jal
nop
label10:
nop
jalr $2,$31 #jalr-x-x-jal
nop
label11:
jalr $1,$31
nop
lui $20,0x8888
ori $1,$0,0x3430
jalr $2,$1
nop
lui $20,0x8888
jal label12
nop
jalr $3,$2 #jalr-x-x-jalr
nop
label12:
nop
ori $1,$0,0x1234
addu $2,$3,$1
bne $1,$2,label13 #beq-cal
nop
lui $20,0x8888
label13:
ori $1,$0,0x1234
addu $2,$4,$1
beq $2,$1 label14 #beq-x-cal
nop
lui $20,0x8888
label14:
ori $1,$0,0x1234
ori $2,$0,0x2345
nop
beq $1,$2,label14
nop
lui $1,0x1234
blez $1,label13 #blez-cal
nop
lui $1,0xffff
nop
blez $1,label15 #blez-x-cal
nop
lui $20,0x8888
label15:
addu $2,$3,$6
nop
nop
bgez $2,label16 #bgez-x-x-cal
nop
lui $20,0x8888
label16:
lbu $1,3($0)
beq $1,$2,label3 #beq-load
nop
lbu $1,3($0)
nop
beq $1,$2,label3 #beq-x-load
nop
lbu $1,3($0)
nop
nop
beq $1,$2,label3 #beq-x-x-load
nop
lw $1,0($0)
bgez $1,label17 #bgez-load
nop
lui $20,0x8888
label17:
lh $1,0($0)
nop
bltz $1,label18 #bltz-x-load
nop
lui $20,0x8888
label18:
lhu $1,0($0)
nop
nop
bgtz $1,label19 #bgtz-x-x-load
nop
lui $20,0x8888
label19:
ori $3,$2,0xffff
ori $4,$1,0x6547
mult $3,$4
mfhi $1
mflo $2
beq $1,$2,label1 #beq-mf 
nop
mflo $1
nop
beq $1,$2,label20 #beq-x-mf
nop
lui $20,0x8888
label20:
mfhi $2
nop
nop
bne $1,$2,label21 #beq-x-x-mf
nop
lui $20,0x8888
label21:
mflo $1
blez $1 label22 #blez-mf
nop
lui $20,0x8888
label22:
mfhi $1
nop
bgez $1,label23 #blez-x-mf
nop
lui $20,0x8888
label23:
mfhi $1
nop
nop
bgtz $1,label24 #bgtz-x-x-mf
nop
jal label24
nop
lui $20,0x8888
label24:
beq $31,$1,label1 #beq-x-jal
nop
jal label25
nop
lui $20,0x8888
label25:
blez $31,label1 #blez-x-jal
nop
jal label26
nop
lui $20,0x8888
label26:
lui $20,0x8888
beq $31,$1,label1 #beq-x-x-jal
nop
jal label27
nop
lui $20,0x8888
label27:
lui $20,0x8888
bgtz $31,label28  #bgtz-x-x-jal
nop
lui $20,0x8888
label28:
ori $1,0x360c
jalr $2,$1
nop
lui $20,0x8888
beq $2,$1,label1  #beq-x-jalr
nop
lui $20,0x8888
ori $1,0x3624
jalr $2,$1
nop
lui $20,0x8888
beq $2,$1,label1  #beq-x-x-jalr
nop
lui $20,0x8888
ori $1,0x3644
jalr $2,$1
nop
lui $20,0x8888
bltz $2,label1  #bltz-x-jalr
nop
lui $20,0x8888
ori $1,0x365c
jalr $2,$1
nop
lui $20,0x8888
bltz $2,label1  #bltz-x-x-jalr
nop
lui $20,0x8888
add $3,$1,$2
multu $3,$4  #mult-cal 
add $3,$1,$2
nop
mult $3,$4 #mult-x-cal
add $3,$1,$2
nop
nop
mult $3,$4 #mult-x-x-cal
lw $1,0($0)
mult $1,$2 #mult-load
lh $1,0($0)
nop
div $1,$2 #mult-x-load
lb $1,0($0)
nop
nop
divu $1,$2 #mult-x-x-load
jal label29
nop
lui $1,0x1234
label29:
mthi $31 #mult-x-jal
jal label30
nop
lui $1,0x1234
label30:
lui $1,0x1234
mtlo $31 #mult-x-x-jal
ori $1,$0,0x36e8
jalr $2,$1
nop
lui $1,0x1234
multu $2,$1 #nult-x-jalr
ori $1,$0,0x36f8
jalr $2,$1
nop
lui $1,0x1234
divu $2,$1 #mulr-x-x-jalr
or $3,$1,$2
beq $1,$3 label1 #beq-cal
nop
sll $3,$2,2
nop
bne $1,$3,label31 #bne-x-cal
nop
lui $1,0x1234
label31:
subu $3,$2,$1
nop
nop
beq $1,$3,label32 #beq-x-x-cal
nop
lui $1,0x1234
label32:
mflo $1
beq $3,$1,label1 #beq-mf
nop
lui $1,0x1234
mfhi $2
nop
beq $3,$2,label2 #beq-x-mf
nop
lui $1,0x1234
mflo $2
beq $3,$2,label1 #beq-x-x-mf
nop
lui $1,0x1234
lh $1,0($0)
beq $3,$1,label3 #beq-load
nop
lui $1,0x1234
lhu $1,0($0)
nop
beq $3,$1,label1 #beq-x-load
nop
lui $1,0x1234
lb $1,0($0)
nop
nop
beq $3,$1,label2 #beq-x-x-load
nop
lui $1,0x1234
jal label33
nop
lui $1,0x1234
label33:
bne $0,$31,label34 #bne-x-jal
nop
lui $1,0x1234
label34:
jal label35 
nop
lui $1,0x1234
label35:
nop
beq $0,$31,label2 #beq-x-x-jal
nop
lui $1,0x1234
ori $1,$0,0x37ec
jalr $2,$1
nop
lui $1,0x1234
beq $0,$2,label36 #beq-x-jalr
nop
lui $1,0x1234
label36:
ori $1,$0,0x3804
jalr $2,$1
nop
lui $1,0x1234
beq $0,$2,label37 #beq-x-x-jalr
nop
lui $1,0x1234
label37:




addu $3,$1,$2
add $4,$1,$3 #calr-cal
sllv $5,$1,$3 #calr-x-cal
nor $6,$1,$3 #calr-x-x-cal
mfhi $1
srlv $2,$3,$1 #calr-mf
addu $2,$3,$1 #calr-x-mf
subu $2,$3,$1 #calr-x-x-mf
lw $1,0($0)
addu $3,$2,$1 #calr-load
subu $3,$2,$1 #calr-x-load
srav $3,$2,$1 #calr-x-x-load
jal label38
nop
lui $1,0x1234
label38:
addu $1,$31,$31 #calr-x-jal
jal label39
nop
lui $1,0x1234
label39:
nop
addu $1,$31,$31 #calr-x-x-jal
ori $1,$0,0x3878
jalr $2,$1
nop
lui $1,0x1234
addu $3,$2,$2 #calr-x-jalr
ori $1,$0,0x3888
jalr $2,$1
nop
lui $1,0x1234
addu $3,$2,$2 #calr-x-x-jalr
addu $3,$1,$2
mult $3,$3 #mult-calr
mult $2,$3 #mult-x-calr
div $2,$3 #mult-x-x-calr
mfhi $1
divu $2,$1 #mult-mf
mthi $1 #mult-x-mf
multu $1,$1 #mult-x-x-mf
lw $1,0($0)
mtlo $1 #mult-load
mult $1,$1 #mult-x-load
divu $2,$1 #mult-x-x-load
jal label40
nop
nop
label40:
mult $31,$31 #mult-x-jal
jal label41
nop
nop
label41:
nop
mult $31,$31 #mult-x-x-jal
ori $1,$0,0x38f4
jalr $2,$1
nop
lui $3,0x2345
divu $3,$2 #mult-x-jalr
ori $1,$0,0x3908
jalr $2,$1
nop
nop
lui $3,0x1234
multu $1,$2 #mult-x-x-jalr
addu $3,$1,$2
sw $3,0($0) #sw-cal
sh $3,0($0) #sh-x-cal
sb $3,1($0) #sb-x-x-cal
mflo $1
sw $1,4($0) #sw-mf
sh $1,6($0) #sh-x-mf
sb $1,5($0) #sb-x-x-mf
lw $1,0($0)
sw $1,4($0) #sw-lw
sh $1,6($0)#sh-x-lw
sb $1,7($0) #sb-x-x-lw
jal label42
nop
lui $3,0x1234
label42:
sw $31,0($0) #sw-x-jal
jal label43
nop
lui $3,0x3452
label43:
lui $3,0x2344
sw $31,0($0) #sw-x-x-jal
ori $1,$0,0x3974
jalr $2,$1
nop
lui $20,0x2341
sw $2,0($0) # sw-x-jalr
ori $1,$0,0x3984
jalr $2,$1
nop
lui $20,0x2341
sh $2,0($0) #sh-x-x-jalr
