.text#  0x00004180
ori $24 ,0x28#RI&&·ÇÑÓ³Ù²Û
mfc0 $25,$13
beq $24,$25,RI
nop
lui $24,0x8000
ori $24,$24,0x28
beq $24,$25,RI_branch
RI:ori $24,$0,4
mfc0 $25,$14
add $25,$25,$24
mtc0 $25,$14
eret
RI_branch:ori $24,$0,8
mfc0 $25,$14
add $25,$25,$24
mtc0 $25,$14
eret

