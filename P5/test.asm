ori $16 $0 4141
ori $17 $0 1436
ori $18 $0 1835
ori $19 $0 2727
ori $20 $0 732
ori $21 $0 316
ori $22 $0 2824
ori $23 $0 2748

j entrance0
nop
entrance0:
jal block0
nop
ori $26 $0 1
subu $26 $26 $26
beq $26 $0 exit0
nop
block0:

addu $9 $17 $20
addu $1 $9 $9
sw $1 0($0)

addu $9 $21 $18
nop
addu $1 $9 $9
sw $1 4($0)

addu $9 $23 $19
nop
nop
addu $1 $9 $9
sw $1 8($0)

jalr $26, $ra
nop
exit0:


j entrance1
nop
entrance1:
jal block1
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit1
nop
block1:

addu $14 $19 $23
subu $1 $14 $14
sw $1 12($0)

addu $14 $19 $18
nop
subu $1 $14 $14
sw $1 16($0)

addu $14 $20 $16
nop
nop
subu $1 $14 $14
sw $1 20($0)

jalr $16, $ra
nop
exit1:


j entrance2
nop
entrance2:
jal block2
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit2
nop
block2:

addu $9 $23 $20
lw $22 20($0)
sw $22 24($0)

addu $9 $19 $17
nop
lw $16 24($0)
sw $16 28($0)

addu $9 $18 $19
nop
nop
lw $17 28($0)
sw $17 32($0)

jr $ra
nop
exit2:


j entrance3
nop
entrance3:
jal block3
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit3
nop
block3:

addu $11 $23 $23
lui $23 3668
sw $23 36($0)

addu $11 $21 $21
nop
lui $18 1357
sw $18 40($0)

addu $11 $19 $23
nop
nop
lui $20 2051
sw $20 44($0)

jalr $8, $ra
nop
exit3:


j entrance4
nop
entrance4:
jal block4
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit4
nop
block4:

addu $8 $23 $20
ori $22 $8 3633
sw $22 48($0)

addu $8 $17 $17
nop
ori $21 $8 1023
sw $21 52($0)

addu $8 $21 $19
nop
nop
ori $16 $8 3701
sw $16 56($0)

jr $ra
nop
exit4:

ori $16 $0 2215
ori $17 $0 88
ori $18 $0 2238
ori $19 $0 220
ori $20 $0 1633
ori $21 $0 3162
ori $22 $0 3806
ori $23 $0 1740

j entrance5
nop
entrance5:
jal block5
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit5
nop
block5:

subu $1 $16 $23
addu $1 $1 $1
sw $1 60($0)

subu $1 $22 $22
nop
addu $1 $1 $1
sw $1 64($0)

subu $1 $17 $17
nop
nop
addu $1 $1 $1
sw $1 68($0)

jr $ra
nop
exit5:


j entrance6
nop
entrance6:
jal block6
nop
ori $18 $0 1
subu $18 $18 $18
beq $18 $0 exit6
nop
block6:

subu $11 $23 $16
subu $1 $11 $11
sw $1 72($0)

subu $11 $23 $23
nop
subu $1 $11 $11
sw $1 76($0)

subu $11 $22 $20
nop
nop
subu $1 $11 $11
sw $1 80($0)

jr $ra
nop
exit6:


j entrance7
nop
entrance7:
jal block7
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit7
nop
block7:

subu $6 $19 $23
lw $21 80($0)
sw $21 84($0)

subu $6 $18 $21
nop
lw $17 84($0)
sw $17 88($0)

subu $6 $17 $16
nop
nop
lw $18 88($0)
sw $18 92($0)

jalr $25, $ra
nop
exit7:


j entrance8
nop
entrance8:
jal block8
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit8
nop
block8:

subu $15 $22 $18
lui $20 1446
sw $20 96($0)

subu $15 $20 $19
nop
lui $23 2745
sw $23 100($0)

subu $15 $21 $20
nop
nop
lui $18 2990
sw $18 104($0)

jalr $19, $ra
nop
exit8:


j entrance9
nop
entrance9:
jal block9
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit9
nop
block9:

subu $14 $18 $23
ori $22 $14 40
sw $22 108($0)

subu $14 $20 $18
nop
ori $23 $14 1674
sw $23 112($0)

subu $14 $23 $17
nop
nop
ori $16 $14 1218
sw $16 116($0)

jr $ra
nop
exit9:

ori $16 $0 402
ori $17 $0 344
ori $18 $0 2153
ori $19 $0 973
ori $20 $0 223
ori $21 $0 3362
ori $22 $0 1238
ori $23 $0 3531

j entrance10
nop
entrance10:
jal block10
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit10
nop
block10:

lw $5 116($0)
addu $1 $5 $5
sw $1 120($0)

lw $5 120($0)
nop
addu $1 $5 $5
sw $1 124($0)

lw $5 124($0)
nop
nop
addu $1 $5 $5
sw $1 128($0)

jr $ra
nop
exit10:


j entrance11
nop
entrance11:
jal block11
nop
ori $19 $0 1
subu $19 $19 $19
beq $19 $0 exit11
nop
block11:

lw $10 128($0)
subu $1 $10 $10
sw $1 132($0)

lw $10 132($0)
nop
subu $1 $10 $10
sw $1 136($0)

lw $10 136($0)
nop
nop
subu $1 $10 $10
sw $1 140($0)

jr $ra
nop
exit11:


j entrance12
nop
entrance12:
jal block12
nop
ori $16 $0 1
subu $16 $16 $16
beq $16 $0 exit12
nop
block12:

lw $5 140($0)
lw $23 140($0)
sw $23 144($0)

lw $5 144($0)
nop
lw $22 144($0)
sw $22 148($0)

lw $5 148($0)
nop
nop
lw $22 148($0)
sw $22 152($0)

jr $ra
nop
exit12:


j entrance13
nop
entrance13:
jal block13
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit13
nop
block13:

lw $5 152($0)
lui $18 3716
sw $18 156($0)

lw $5 156($0)
nop
lui $21 3088
sw $21 160($0)

lw $5 160($0)
nop
nop
lui $22 1312
sw $22 164($0)

jr $ra
nop
exit13:


j entrance14
nop
entrance14:
jal block14
nop
ori $12 $0 1
subu $12 $12 $12
beq $12 $0 exit14
nop
block14:

lw $14 164($0)
ori $20 $14 3121
sw $20 168($0)

lw $14 168($0)
nop
ori $22 $14 3749
sw $22 172($0)

lw $14 172($0)
nop
nop
ori $22 $14 783
sw $22 176($0)

jr $ra
nop
exit14:

ori $16 $0 3860
ori $17 $0 1113
ori $18 $0 1644
ori $19 $0 527
ori $20 $0 1832
ori $21 $0 3450
ori $22 $0 2371
ori $23 $0 71

j entrance15
nop
entrance15:
jal block15
nop
ori $10 $0 1
subu $10 $10 $10
beq $10 $0 exit15
nop
block15:

lui $13 1352
addu $1 $13 $13
sw $1 180($0)

lui $13 1949
nop
addu $1 $13 $13
sw $1 184($0)

lui $13 2341
nop
nop
addu $1 $13 $13
sw $1 188($0)

jalr $10, $ra
nop
exit15:


j entrance16
nop
entrance16:
jal block16
nop
ori $5 $0 1
subu $5 $5 $5
beq $5 $0 exit16
nop
block16:

lui $6 2884
subu $1 $6 $6
sw $1 192($0)

lui $6 2091
nop
subu $1 $6 $6
sw $1 196($0)

lui $6 556
nop
nop
subu $1 $6 $6
sw $1 200($0)

jr $ra
nop
exit16:


j entrance17
nop
entrance17:
jal block17
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit17
nop
block17:

lui $5 3236
lw $19 200($0)
sw $19 204($0)

lui $5 2109
nop
lw $18 204($0)
sw $18 208($0)

lui $5 2070
nop
nop
lw $20 208($0)
sw $20 212($0)

jr $ra
nop
exit17:


j entrance18
nop
entrance18:
jal block18
nop
ori $15 $0 1
subu $15 $15 $15
beq $15 $0 exit18
nop
block18:

lui $7 40
lui $16 2730
sw $16 216($0)

lui $7 1673
nop
lui $18 3482
sw $18 220($0)

lui $7 3556
nop
nop
lui $20 3929
sw $20 224($0)

jalr $15, $ra
nop
exit18:


j entrance19
nop
entrance19:
jal block19
nop
ori $25 $0 1
subu $25 $25 $25
beq $25 $0 exit19
nop
block19:

lui $7 3920
ori $16 $7 842
sw $16 228($0)

lui $7 716
nop
ori $17 $7 2502
sw $17 232($0)

lui $7 4052
nop
nop
ori $22 $7 371
sw $22 236($0)

jalr $25, $ra
nop
exit19:

ori $16 $0 3725
ori $17 $0 225
ori $18 $0 622
ori $19 $0 956
ori $20 $0 3466
ori $21 $0 16
ori $22 $0 4089
ori $23 $0 1585

j entrance20
nop
entrance20:
jal block20
nop
ori $9 $0 1
subu $9 $9 $9
beq $9 $0 exit20
nop
block20:

ori $3 $21 134
addu $1 $3 $3
sw $1 240($0)

ori $3 $20 3241
nop
addu $1 $3 $3
sw $1 244($0)

ori $3 $17 1455
nop
nop
addu $1 $3 $3
sw $1 248($0)

jalr $9, $ra
nop
exit20:


j entrance21
nop
entrance21:
jal block21
nop
ori $14 $0 1
subu $14 $14 $14
beq $14 $0 exit21
nop
block21:

ori $13 $20 2817
subu $1 $13 $13
sw $1 252($0)

ori $13 $20 1740
nop
subu $1 $13 $13
sw $1 256($0)

ori $13 $16 2867
nop
nop
subu $1 $13 $13
sw $1 260($0)

jalr $14, $ra
nop
exit21:


j entrance22
nop
entrance22:
jal block22
nop
ori $8 $0 1
subu $8 $8 $8
beq $8 $0 exit22
nop
block22:

ori $9 $21 4073
lw $17 260($0)
sw $17 264($0)

ori $9 $21 1161
nop
lw $19 264($0)
sw $19 268($0)

ori $9 $20 3736
nop
nop
lw $20 268($0)
sw $20 272($0)

jalr $8, $ra
nop
exit22:


j entrance23
nop
entrance23:
jal block23
nop
ori $13 $0 1
subu $13 $13 $13
beq $13 $0 exit23
nop
block23:

ori $5 $18 3042
lui $17 507
sw $17 276($0)

ori $5 $18 2627
nop
lui $18 659
sw $18 280($0)

ori $5 $22 3181
nop
nop
lui $22 2231
sw $22 284($0)

jalr $13, $ra
nop
exit23:


j entrance24
nop
entrance24:
jal block24
nop
ori $17 $0 1
subu $17 $17 $17
beq $17 $0 exit24
nop
block24:

ori $6 $16 34
ori $20 $6 1640
sw $20 288($0)

ori $6 $22 132
nop
ori $22 $6 1851
sw $22 292($0)

ori $6 $19 1205
nop
nop
ori $17 $6 662
sw $17 296($0)

jalr $17, $ra
nop
exit24:

