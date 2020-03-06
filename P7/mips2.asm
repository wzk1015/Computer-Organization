.text
label_1:nop

.ktext 0x4180
mfc0 $k0, $t6
mfc0 $k1, $t5
ori $k0, $0, 0x1000
sw $sp, 0xfffc($k0)

label_2: addiu $k0, $k0, 0xff00
addu $sp, $0, $k0
beq $0, $0, label_1
nop
mfc0 $k0, $t5
ori $k1, $0, 0x7c
and $k0, $k1, $k0
beq $0, $k0, label_2
nop
mfc0 $k0, $t6
lui $at, 0x0
ori $at, $at, 0x4
addu $k0, $k0, $at
mtc0 $k0, $t6
beq $0, $0, label_2
nop
eret
sw $at, 0x4($sp)
sw $v0, 0x8($sp)
sw $v1, 0xc($sp)
sw $a0, 0x10($sp)
sw $a1, 0x14($sp)
sw $a2, 0x18($sp)
sw $a3, 0x1c($sp)
sw $t0, 0x20($sp)
sw $t1, 0x24($sp)
sw $t2, 0x28($sp)
sw $t3, 0x2c($sp)
sw $t4, 0x30($sp)
sw $t5, 0x34($sp)
sw $t6, 0x38($sp)
sw $t7, 0x3c($sp)
sw $s0, 0x40($sp)
sw $s1, 0x44($sp)
sw $s2, 0x48($sp)
sw $s3, 0x4c($sp)
sw $s4, 0x50($sp)
sw $s5, 0x54($sp)
sw $s6, 0x58($sp)
sw $s7, 0x5c($sp)
sw $t8, 0x60($sp)
sw $t9, 0x64($sp)
sw $k0, 0x68($sp)
sw $k1, 0x6c($sp)
sw $gp, 0x70($sp)
sw $sp, 0x74($sp)
sw $fp, 0x78($sp)
sw $ra, 0x7c($sp)
mfhi $k0
sw $k0, 0x80($sp)
mflo $k0
sw $k0, 0x84($sp)
beq $0, $0, label_1
nop
lw $at, 0x4($sp)
lw $v0, 0x8($sp)
lw $v1, 0xc($sp)
lw $a0, 0x10($sp)
lw $a1, 0x14($sp)
lw $a2, 0x18($sp)
lw $a3, 0x1c($sp)
lw $t0, 0x20($sp)
lw $t1, 0x24($sp)
lw $t2, 0x28($sp)
lw $t3, 0x2c($sp)
lw $t4, 0x30($sp)
lw $t5, 0x34($sp)
lw $t6, 0x38($sp)
lw $t7, 0x3c($sp)
lw $s0, 0x40($sp)
lw $s1, 0x44($sp)
lw $s2, 0x48($sp)
lw $s3, 0x4c($sp)
lw $s4, 0x50($sp)
lw $s5, 0x54($sp)
lw $s6, 0x58($sp)
lw $s7, 0x5c($sp)
lw $t8, 0x60($sp)
lw $t9, 0x64($sp)
lw $k0, 0x68($sp)
lw $k1, 0x6c($sp)
lw $gp, 0x70($sp)
lw $sp, 0x74($sp)
lw $fp, 0x78($sp)
lw $ra, 0x7c($sp)
lw $k0, 0x80($sp)
mthi $0
lw $k0, 0x84($sp)
mtlo $0
beq $0, $0, label_1
nop