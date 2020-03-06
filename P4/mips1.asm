addiu $s5, $0, 0x1
addiu $v0, $0, 0x5
syscall
addu $s1, $0, $v0
addiu $v0, $0, 0x5
syscall
addu $s2, $0, $v0

label1: addiu $t0, $0, 0x0

label2: beq $t0, $s2, label1
addiu $v0, $0, 0x5
syscall
addu $t1, $0, $v0
addiu $v0, $0, 0x5

label4: syscall
addu $t2, $0, $v0
addi $at, $0, 0x1
sub $t1, $t1, $at

label7: addi $at, $0, 0x1

label6: sub $t2, $t2, $at
sll $t3, $t1, 00011
add $t3, $t3, $t2
sll $t3, $t3, 00010
sw $s5, 0x0($t3)
sll $t3, $t2, 00011
add $t3, $t3, $t1
sll $t3, $t3, 00010
sw $s5, 0x0($t3)
addi $t0, $t0, 0x1
j label2
addiu $a0, $0, 0x0
addiu $a1, $0, 0x1
jal label3

label5: addu $a0, $0, $v0
addiu $v0, $0, 0x1
syscall
addiu $v0, $0, 0xa

syscall
label3: sll $t5, $a0, 00010
sw $s5, 0x100($t5)
addi $at, $0, 0xc
sub $sp, $sp, $at
sw $ra, 0x8($sp)
sw $a1, 0x4($sp)
sw $a0, 0x0($sp)
bne $a1, $s1, label4
sll $t3, $a0, 00011
add $t3, $t3, $0
sll $t3, $t3, 00010
lw $t4, 0x0($t3)
bne $t4, $s5, label4
addiu $v0, $0, 0x1
addi $sp, $sp, 0xc
j label5
addiu $t0, $0, 0x0

label8: beq $t0, $s1, label6
addi $t8, $t8, 0x4
sw $t0, 0x120($t8)
sll $s3, $t0, 00010
lw $s4, 0x100($s3)
beq $s4, $s5, label7
lw $s3, 0x0($sp)
sll $s4, $t0, 00011
add $s4, $s4, $s3
sll $s4, $s4, 00010
lw $s6, 0x0($s4)
beq $s6, $0, label7
addu $a0, $0, $t0
addi $a1, $a1, 0x1
jal label3
lw $t0, 0x120($t8)
addi $at, $0, 0x4
sub $t8, $t8, $at
addi $t0, $t0, 0x1
j label8
lw $a0, 0x0($sp)
sll $t7, $a0, 00010
sw $0, 0x100($t7)
lw $a1, 0x4($sp)
addi $at, $0, 0x1
sub $a1, $a1, $at
lw $ra, 0x8($sp)
addi $sp, $sp, 0xc
addiu $v0, $0, 0x0
jr $ra
