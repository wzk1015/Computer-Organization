lui $t1,0xffff
ori $t1,0xffff

ori $t2,1
ori $t3,0xffff
ori $t4,0

madd $t1,$t1
mfhi $s0
mflo $s0

madd $t1,$t2
mfhi $s0
mflo $s0

madd $t1,$t3
mfhi $s0
mflo $s0

madd $t1,$t4
mfhi $s0
mflo $s0

madd $t2,$t2
mfhi $s0
mflo $s0

madd $t2,$t3
mfhi $s0
mflo $s0

madd $t2,$t4
mfhi $s0
mflo $s0

madd $t3,$t3
mfhi $s0
mflo $s0

madd $t3,$t4
mfhi $s0
mflo $s0

madd $t4,$t4
mfhi $s0
mflo $s0
