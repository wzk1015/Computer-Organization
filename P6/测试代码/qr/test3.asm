ori $1,$0,0x1234
lui $2,0x8732
or $3,$2,$1 
addu $4,$2,$1
mult $3,$4
mult $1,$2 #mult-mult
lui $20,0x1234
mult $3,$3
mflo $3 #mf-mult
mult $3,$4
mtlo $1 #mt-mult
lui $20,0x1234
div $3,$4
lui $20,0x1234
mflo $3   #mf-x-mult
mfhi $4 
multu $1,$2
lui $20,0x1234
mtlo $1 #mt-x-mult
lui $20,0x1234
mult $1,$2
lui $20,0x1234
mult $3,$2 #mult-x-mult
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mult $1,$3
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-mult
lui $1,0x1234
ori $1,$1,0x1234
lui $2,0x8888
ori $2,$2,0x3424
mult $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-x-mult
mult $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mult $1,$2 #mult-x-x-x-mult
lui $20,0x1234
mult $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $1 #mf-x-x-x-x-mult
mult $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $2 #mf-x-x-x-x-x-mult
mult $3,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $1 #mf-x-x-x-x-x-x-mult
mult $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mult $1,$2 #mult-x-x-x-x-x-mult
lui $20,0x1234
mult $1,$2 
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
divu $2,$3 #mult-x-x-x-x-x-x-mult
lui $20,0x1234
mflo $4 #mf-div
div $1,$2
lui $20,0x1234
mflo $3 #mf-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
mfhi $4 #mf-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mfhi $4 #mf-x-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mfhi $3 #mf-x-x-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mfhi $3 #mf-x-x-x-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mflo $3 #mf-x-x-x-x-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mfhi $4 #mf-x-x-x-x-x-x-x-x-x-x-div
div $1,$2
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
lui $20,0x1234
mfhi $5 #mf-x-x-x-x-x-x-x-x-x-x-x-div
