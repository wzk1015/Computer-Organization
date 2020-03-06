.ktext #0x4180
mfc0 $25,$13
ori $26,$0,0x10
beq $25,$26,UNQI
nop
ori $26,$0,0x14
beq $26,$25,UNQI
nop
lui $26,0x8000
ori $26,$26,0x10
beq $25,$26,UNQI_branch
nop
lui $26,0x8000
ori $26,$26,0x14
beq $25,$26,UNQI_branch
nop
lui $1,1#²»Ö´ÐÐ
j end
UNQI:ori $26,$0,4
mfc0 $25,$14
add $25,$25,$26
mtc0 $25,$14
eret
UNQI_branch:ori $26,$0,8
mfc0 $25,$14
add $25,$25,$26
mtc0 $25,$14
eret
end:

