ori $t0, $t0, 0x1001
lui $at, 0x7fff
ori $at, $at, 0xffff
or $t3, $0, $at
mtc0 $t0, $t4
mult $t0, $t0
ori $s2, $s2, 0x3000
jalr $ra, $0
mflo $t5
mfc0 $t9, $t5