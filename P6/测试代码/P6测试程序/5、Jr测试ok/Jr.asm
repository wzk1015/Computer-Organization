	.text
#  test for stall
ori   $t1, $0, 0x00001000
ori   $t2, $0, 0x00001000
ori   $t3, $0, 0x00002000
ori   $s4, $0, 12
ori   $s5, $0, 4
ori   $s6, $0, 0xaaaaaaaa
mthi  $t1
mtlo  $t3
sw    $t1, 0($0)

l0: #  3D
add   $t4, $t2, $t1
bne   $t3, $t4, l1
nop
jal   store
nop
ori   $t4, $0, 0
l1: # 3E
addi  $s5, $s5, 4
addi  $t4, $t2, 0x00001000
beq   $t3, $t4, l2
nop
jal   store
nop
ori   $t4, $0, 0
l2: # 3F
addi  $s5, $s5, 4
lw    $t4, 0($0)
bne   $t3, $t4, l3
nop
jal   store
nop
ori   $t4, $0, 0
l3: # 3H
addi  $s5, $s5, 4
mfhi  $t4
beq   $t3, $t4, l4
nop
jal   store
nop
ori   $t4, $0, 0
l4: # 3H
addi  $s5, $s5, 4
mflo  $t4
bne   $t3, $t4, l5
nop
jal   store
nop
ori   $t4, $0, 0
l5: # 3J
addi  $s5, $s5, 4
lw    $t4, 0($0)
nop
bne   $t3, $t4, m0
nop
jal   store
nop
ori   $t4, $0, 0
m0: # 4D
addi  $s5, $s5, 4
jal   temp
nop
add   $t4, $ra, $s4
jalr  $ra, $t4
nop
jal   store
nop
ori   $t4, $0, 0
m1: # 4D
addi  $s5, $s5, 4
jal   temp
nop
add   $t4, $ra, $s4
jr    $t4
nop
jal   store
nop
ori   $t4, $0, 0
m2: # 4E
addi  $s5, $s5, 4
jal   temp
nop
addi  $t4, $ra, 12
jalr  $ra, $t4
nop
jal   store
nop
ori   $t4, $0, 0
m3: # 4E
addi  $s5, $s5, 4
jal   temp
nop
addi  $t4, $ra, 12
jr    $t4
nop
jal   store
nop
ori   $t4, $0, 0
m4: # 4F
addi  $s5, $s5, 4
jal   temp
nop
addi  $t5, $ra, 16
sw    $t5, 0($0)
lw    $t4, 0($0)
jalr  $ra, $t4
nop
jal   store
nop
ori   $t4, $0, 0
m5: # 4F
addi  $s5, $s5, 4
jal   temp
nop
addi  $t5, $ra, 16
sw    $t5, 0($0)
lw    $t4, 0($0)
jr    $t4
nop
jal   store
nop
ori   $t4, $0, 0
m6: # 4H
addi  $s5, $s5, 4
jal   temp
nop
addi  $t5, $ra, 16
mthi  $t5
mfhi  $t4
jalr  $ra, $t4
nop
jal   store
nop
ori   $t4, $0, 0
m7: # 4H
addi  $s5, $s5, 4
jal   temp
nop
addi  $t5, $ra, 16
mtlo  $t5
mflo  $t4
jr    $t4
nop
jal   store
nop
ori   $t4, $0, 0
m8: # 4J
addi  $s5, $s5, 4
sw    $t5, 0($0)
jal   temp
nop
addi  $t5, $ra, 16
lw    $t4, 0($0)
nop
jalr  $ra, $t4
nop
jal   store
nop
ori   $t4, $0, 0
m9: # 4J
addi  $s5, $s5, 4
sw    $t5, 0($0)
jal   temp
nop
addi  $t5, $ra, 16
lw    $t4, 0($0)
nop
jr    $t4
nop
jal   store
nop
ori   $t4, $0, 0
n0: # 5F
addi  $s5, $s5, 4
sw    $t3, 0($0)
lw    $t4, 0($0)
add   $t4, $t4, $t4
sw    $t4, 0($s5)
ori   $t4, $0, 0
n1: # 6F
addi  $s5, $s5, 4
sw    $t3, 0($0)
lw    $t4, 0($0)
addi  $t4, $t4, 0xaaaaaaaa
sw    $t4, 0($s5)
ori   $t4, $0, 0


end: j   end
     nop


store: sw    $s6, 0($s5)
       jr    $ra
       nop

temp: jr   $ra
      nop
