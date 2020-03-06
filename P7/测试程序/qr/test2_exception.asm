.text
ori $1,$0,0x1234  #$1存PC跳转
jr $1  #pc错 小
nop
nop
ori $2,$0,0x1111
nop
nop
nop
lui $1,0x1234
jalr $1 #PC错，大
nop
ori $1,$0,0x3003
jr $1 #PC不对齐
nop
nop
nop
#准备
lui $1,0x1234
sw $1,0($0)
sw $2,4($0)
sw $1,8($0)
ori $2,$0,0x7f00
sw $1,0($2)
sw $2,4($2)
ori $2,$0,0x7f10
sw $1,0($2)
sw $2,0($2)
#lw  $2存load地址
ori $2,$0,0x3014
lw $2,0($2) #3014
lui $22,0x1234
nop
nop
ori $2,$0,0x2001
lw $2,0($2) #2001
lui $22,0x1234
nop
nop
ori $2,$0,0x2002
lw $2,0($2) #2002
lui $22,0x1234
nop
nop
ori $2,$0,0x2003
lw $2,0($2)#2003
lui $22,0x1234
nop
nop
ori $2,$0,0x7f0c #7f0c
lw $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x7f1c #7f1c
lw $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x8888  #8888
lw $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x7f01 #7f01
lw $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x7f02  #7f02
lw $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x7f13 #7f13
lw $2,0($2)
lui $22,0x1234
nop
nop
#lh,lhu
ori $2,$0,0x2000  #2000
lh $2,0($2)
ori $2,$0,0x2001 #2001
lh $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x2002  #2002
lhu $2,0($2)
ori $2,$0,0x2003
lhu $2,0($2)   #2003
lui $22,0x1234
nop
nop
ori $2,$0,0x3024 #3024
lh $2,0($2)
lui $22,0x1234
nop
nop
ori $2,$0,0x8888 #8888
lhu $2,0($2)
lui $22,0x1234
nop
nop
#lb
ori $2,$0,0x3333 #3333
lb $2,0($2)
lui $22,0x1234
nop
nop
#sw $3存地址
ori $1,$0,0x1234
or $2,$1,$1
ori $3,$0,0x3040 #3040
sw $1,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x7f08 #7f08
sw $1,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x7f18 #7f18
sw $1,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x8888#8888
sw $1,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x2001 #2001
sw $2,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x2002 #2002
sw $2,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x2003 #2003
sw $2,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x7f03 #7f03
sw $2,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x7f12 #7f12
sw $2,0($3)
lui $22,0x2345
nop
nop
#sh
ori $3,$0,0x4000 #4000
sh $1,0($3)
lui $22,0x2345
nop
nop
ori $3,$0,0x0001 #0001
sh $1,0($3) 
lui $22,0x2345
nop
nop
ori $3,$0,0x0003 #0003
sh $2,0($3)
lui $22,0x2345
nop
nop
#sb
ori $3,$0,0x5678
sb $3,0($3)
lui $22,0x2345
nop
nop
#Ov $4,$5存放操作数
lui $4,0x7fff
ori $4,$4,0xffff
ori $5,$0,3
add $6,$4,$5 #加法溢出++
lui $22,0x2345
nop
nop
nop
lui $4,0x7fff
ori $4,$4,0xffff
addi $6,$4,3 #addi溢出++
lui $22,0x2345
nop
nop
nop
lui $4,0x8000
sub $6,$4,$5 #减法溢出-+
lui $22,0x2345
nop
nop
lui $4,0x8000
lui $5,0xffff
ori $5,$5,0xffff
add $6,$4,$5 #加法溢出--
lui $22,0x2345
nop
nop
lui $4,0x8000
addi $6,$4,-2 # addi溢出--
lui $22,0x2345
nop
nop
lui $4,0x7fff
ori $4,$4,0xffff
lui $5,0xffff
ori $5,$5,0xffff
sub $6,$4,$5 #减法溢出+-
#RI
lwl $7,0($1)
nop
nop
nop

