ori $31,1 
addu $30,$31,$31 
ori $29,$30,0x6 
ori $28,$30,0x8 
ori $27,$30,0x10 
ori $26,$30,0x12   #addu ori 
addu $25,$26,$31 
subu $24,$25,$31 
subu $23,$25,$24 
subu $22,$25,$23 
subu $17,$25,$22   #addu subu rs 
addu $21,$22,$31 
subu $20,$0,$21 
subu $19,$20,$21 
subu $18,$19,$21 

subu $16,$18,$21   #addu subu rt 
addu $30,$16,$26 
sw $30,0($0) 
sw $30,4($0) 
sw $30,8($0) 
sw $30,12($0)     #addu sw rt 
addu $15,$30,$0 
beq $15,$30,beq1 
nop 
beq2:ori $1,1 
addu $2,$1,$0 
nop 
nop 
beq $2,$1,beq3 
nop 
beq1:ori $1,2 
addu $2,$1,$0 
nop 
beq $2,$1,beq2 
nop 
beq3:ori $1,3 
addu $4,$1,$0 
nop 
nop 

nop 
beq $4,$1,beq4 
nop 
addu $5,$5,$5 
beq4:            #addu beq 
ori $5,0x30c0 
ori $6,4 
addu $7,$5,$6 
jr $7 
nop 
addu $5,$5,$5 
ori $5,0x30dc 
addu $8,$5,$6 
nop 
nop 
jr $8 
nop 
addu $5,$5,$5 
ori $5,0x30fc 
addu $9,$5,$6 
nop 
nop 
nop 
jr $9 

 
nop 
addu $5,$5,$5 
ori $6,$0,5 #addu jr 
subu $15,$15,$15 
ori $11,4 
addu $15,$0,$11 
sw $8,0($15) 
sw $8,4($15) 
sw $8,8($15)    #addu sw rs 
ori $4,$0,0 
ori $3,4 
addu $4,$4,$3 
lw $5,0($4) 
lw $6,4($4) 
lw $7,8($4)       #addu lw rs
