ori $s0,0x7F10
ori $t1,10
sw $t1,4($s0)	#preset = 10
ori $t2,9
sw $t2,0($s0)	#ctrl[3:0] = 1001
ori $t3,0xfa01	#IM[7:2]=6'b111111, EXL=0, IE=1
mtc0 $t3,$12	#write to SR
nop
nop
nop
jal loop
nop
loop: jr $ra
nop


