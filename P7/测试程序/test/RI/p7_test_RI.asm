.text
#保留$24,$25,$26,$27号寄存器给异常处理程序用，其中$26,$27用于加减溢出
ori $23,0x7f00#外设地址
movz $1,$1,$23#RI(将EPC指向下一条指令）
addi $1,$1,4
sra $2,$1,2
sll $2,$1,2
sw $2,4($23)#timer0->preset
lw $2,4($23)#timer0->preset
movz $1,$1,$1#RI
bne $3,$2,loop0
nop
lui $4,1
loop0:srav $4,$2,$1
slti $4,$4,2
movz $1,$1,$1#RI
ori $4,$0,9
slt $4,$0,$4
sll $4,$4,4
lui $5,0xf123
ori $6,0xabcd
mult $5,$6
movz $1,$1,$1#RI
mfhi $1
mflo $2
mfc0 $10,$14#CP0->EPC
sw $1,4($0)
sw $1,20($23)#timer1->preset
lw $9,20($23)
multu $1,$2
nop
movz $1,$1,$1#RI
mfhi $8
mflo $9
jal loop1
nop
lui $4,1
j loop2
nop
loop1:jalr $1,$31
nop
srlv $2,$1,$3
loop2:movz $1,$1,$1#RI
lw $1,0($0)
lui $1,0xffff
sw $1,0($0)
mfc0 $10,$14
movz $1,$1,$1#RI
mfc0 $10,$14
lb $4,1($0)
lbu $4,1($0)
lh $4,2($0)
lhu $4,2($0)
ori $2,0xaaaa
div $1,$2
nop
nop
movz $1,$1,$1#RI
nop
mfhi $4
mflo $5
sub $3,$4,$1
add $5,$4,$3
ori $6,$4,4
j loop3
movz $1,$1,$1#RI->delayed branching
lui $2,1
nop
loop3:sll $4,$1,2
srl $4,$1,2
sra $4,$1,2
jal loop4
movz $1,$1,$1
lui $3,1
loop4:add $4,$4,$31
srav $5,$31,$2
mfhi $6
add $5,$6,$5
nop












