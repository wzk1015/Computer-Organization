.text# 0x00004180
mfc0 $11,$13 #读cause
ori $10,$0,0x007c
and $11,$11,$10 
sra $11,$11,2 #11<=exccode
ori $12,$0,4 #pc错，取数错
ori $13,$0,5 #存数错
ori $14,$0,10 #非法指令
ori $15,$0,12 #溢出
if:
beq $11,$12,ADEL #ADEL
nop
beq $11,$13,ADES #ADES
nop
beq $11,$15,Ov #Ov
nop
beq $11,$14,RI
nop
RI:
mfc0 $10,$14 #10<=EPC
addi $10,$10,4 
mtc0 $10,$14 #把PC+4存到EPC中
eret

Ov:
ori $4,$0,1
ori $5,$0,2
eret


ADES:
ori $3,$0,0  #把store地址改成0
eret
ADEL:
mfc0 $10,$14 #10<=EPC
slti $17,$10,0x3000 #EPC<3000
bne $17,$0,PCLESS
nop
ori $18,$0,0x4fff
slt $17,$18,$10 #EPC>4FFF
bne $17,$0,PCMORE
nop
ori $17,$0,0x0003
and $17,$17,$10
bne $17,$0,ALIGN
nop


LOADWORNG:
ori $2,$0,0
eret  #把load的地址改成0

ALIGN:
ori $10,$0,0x3040 #把PC地址改到3040
mtc0 $10,$14
eret

PCMORE:
ori $10,$0,0x302c   #PC错，大,把PC改成302c
mtc0 $10,$14
eret

PCLESS:#是PC错，<3000
ori $10,$0,0x3010 #把PC改成3010
mtc0 $10,$14
eret



