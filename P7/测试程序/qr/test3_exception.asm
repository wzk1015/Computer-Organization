.text
ori $6,$0,0x1234
lui $7,0x8989
ori $7,$7,0x1111
ori $2,$0,0x1234
ori $1,$0,0x8888
or $3,$1,$2
and $4,$2,$1
bgezal $1,label1  #RI
nop
nop
lui $23,0x1234
label1:
ori $3,$0,0x2001
sw $2,0($3) #存数错
mult $1,$4 #mult-exc
nop
ori $2,$0,0x1111
lh $3,32($2) #取数错
div $1,$1 #div-exc
lui $4,0x7fff
ori $4,$4,0xffff
addi $6,$4,32 #加法溢出
mthi $1 #mthi-exc
nop
nop
lwr $1,0($0) #RI
mtlo $3 #mtlo-exc
nop
nop
nop
lui $4,0x8000
beq $1,$0,label2
addi $6,$4,-10 #加法溢出，延迟槽
label2:
lui $22,0x9999
nop
nop
ori $2,$0,0x8989
ori $1,$0,0x1234
blez $1,label3
lw $3,4($2) #取数，延迟槽
nop
label3:
lui $22,0x9999
ori $3,0x0001
j label4
sw $22,0($3) #存数，延迟槽
nop
nop
label4:
lui $22,0x9999
jal label5
msub $1,$2 #RI,延迟槽
nop
nop
label5:
ori $3,$0,0x0202
ori $1,$0,0x30e0
jalr $2,$1
sw $10,0($3) #存数，延迟槽
nop
lui $30,0x2345
ori $1,$0,0x30fc
lui $4,0x8000
lui $5,0x8000
jr $1
add $6,$4,$5 #加法溢出，延迟槽
nop
nop




