# 10 Insn include:
#	j Jal jr addu subu ori lw sw beq lui
# andi or

### initial the sp & var
ori $k0, $0, 0x01
ori $k1, $0, 0x04
ori $sp, $0, 0x20
sw $sp, 0($0)


#### No.1 Instr-sequence
ori	$a0, $0, 0x0f0f

ori $a2, $a0, 0x1111  		# I.E_RS -- Cal.W

## after every hazard, save the result for checking
sw $a1, 0($sp)
addu $sp, $sp, $k1		
sw $a2, 0($sp)				# Store.M_Rt -- Cal.W
addu $sp, $k1, $sp			# R.E_Rt -- Cal.W
sw $a3, 0($sp)

addu $sp, $t1, $sp			# R.E_Rt -- Cal.M

#### No.2 Instr-sequence
lw  $t0, 0x20($0)
ori $t1, $t0, 0x4444		# I.E_RS -- Load.M & I.E_RS -- Load.W

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.3 Instr-sequence
		# I.E_RS -- Jal.W
addu $s7, $s7, $k0

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.4 Instr-sequence
addu $t1, $t1, $t0
addu $t2, $t1, $t0			# R.E_RS -- Cal.M
addu $t3, $t1, $t0			# R.E_RS -- Cal.W

sw $t2, 0($sp)
addu $sp, $sp, $k1
sw $t3, 0($sp)
addu $sp, $sp, $k1

#### No.5 Instr-sequence
ori $t1, $0, 0x4
sw 	$a0, 0($t1)				# Store.E_RS -- Cal.M
sw  $a1, 4($t1)				# Store.E_RS -- Cal.W

#### No.10 Instr-sequence
ori $t2, $0, 0x8
lw $t1, 0($t2)				# Load.E_RS -- Cal.M
lw $t3, 0($t2)				# Load.E_RS -- Cal.W

sw $t1, 0($sp)
addu $sp, $sp, $k1
sw $t3, 0($sp)
addu $sp, $sp, $k1

#### No.12 Instr-sequence
lw $t0, -12($sp)
beq $t0, $t1, _lbl_1 		# Br.D_RS -- Load.E & Br.D_RS -- Load.M & Br.D_RS -- Load.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.13 Instr-sequence
_lbl_1:
lw $t0, -4($sp)
beq $t1, $t0, _lbl_2 		# Br.D_RT -- Load.E & Br.D_RT -- Load.M & Br.D_RT -- Load.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.14 Instr-sequence
_lbl_2:
addu $t0, $a0, $0
addu $t1, $a1, $0
beq  $t1, $t0, _lbl_3 		# Br.D_RS -- Cal.E && Br.D_RS -- Cal.M && Br.D_RT -- Cal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.16 Instr-sequence
_lbl_3:
addu $t0, $a2, $0
addu $t1, $a2, $0
beq $t0, $t1, _lbl_5 		# Br.D_RT -- Cal.E && Br.D_RT -- Cal.M && Br.D_RS -- Cal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

#### No.17 Instr-sequence
_lbl_5:
lw $t0, -4($sp)
addu $t1, $t0, $t0			# R.E_RS -- Load.M & R.E_RS -- Load.W & R.E_RT -- Load.M & R.E_RT -- Load.W

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.24 Instr-sequence
lw $t0, 0($0)
lw $t1, 0($t0)				# Load.E_RS -- Load.M & Load.E_RS -- Load.W

sw $t1, 0($sp)
addu $sp, $sp, $k1

#### No.25 Instr-sequence
sw $sp, 0($0)				# prepare for next hazard
addu $sp, $sp, $k1
lw $t0, 0($0)
sw $t0, 0($t0)				# Store.E_RS -- Load.M & Store.E_RS -- Load.W & STORE.M_RT -- Load.W

#### No.27 Instr-sequence

addu $s7, $s7, $k0

#### No.27 Instr-sequence

ori $t0, $0, 24
addu $t1, $t1, $t0


addu $s7, $s7, $k0

#### No.27 Instr-sequence
ori $t0, $0, 212
addu $t1, $ra, $t0

addu $s7, $s7, $k0

#### No.28 Instr-sequence
ori $t0, $0, 80
addu $t1, $ra, $t0

addu $s7, $s7, $k0

#### No.29 Instr-sequence

addu $s7, $s7, $k0

#### No.30 Instr-sequence

addu $s7, $s7, $k0

#### No.30 Instr-sequence

addu $s7, $s7, $k0

#### No.30 Instr-sequence

addu $s7, $s7, $k0

### store delay slot counter ###
sw $s7, 0($sp)
addu $sp, $sp, $k1
sw $s6, 0($sp)
addu $sp, $sp, $k1


### Function List ###
f1:
ori $t1, $31, 0x56			# I.E_RS -- Jal.W

addu $s7, $s7, $k0


f2:
lw $t1, -0x3100($ra)		# Load.E_Rs -- Jal.W
sw $t1, 0($sp)
addu $sp, $sp, $k1

addu $s7, $s7, $k0


f3:

beq $t1, $ra, _f3_lbl		# Br.D_RS -- Jal.W
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f3_lbl:

addu $s7, $s7, $k0
move $t9, $0    # nop
f4:
beq $t1, $ra, _f4_lbl		# Br.D_RS -- Jal.M
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f4_lbl:

addu $s7, $s7, $k0



f5:
beq $ra, $t1, _f5_lbl		# Br.D_RT -- Jal.M
addu $s7, $s7, $k0
addu $s6, $s6, $k0

_f5_lbl:

addu $s7, $s7, $k0



f6:
addu $t0, $ra, $ra			# R.E_RS -- Jal.W & R.E_RT -- Jal.W
sw $t0, 0($sp)
addu $sp, $sp, $k1		

addu $s7, $s7, $k0



f7:
sw $sp, -0x3160($ra)		# Store.E_Rs -- Jal.W

addu $s7, $s7, $k0


f8:
sw $ra, 0($sp)	
addu $sp, $sp, $k1
subu $ra, $ra, $k1

addu $s7, $s7, $k0
lw $ra, -8($sp)				# jr.D_Rs -- Load.E & jr.D_Rs -- Load.M & jr.D_Rs -- Load.W
					# jr.D_RS -- Jal.M
addu $s7, $s7, $k0

f9:
sw $ra, 0($sp)
addu $sp, $sp, $k1
ori $t0, $0, 8
addu $ra, $ra, $t0

subu $ra, $ra, $t0			# jr.D_Rs -- Cal.E & jr.D_Rs -- Cal.M

addu $s7, $s7, $k0

f10:
ori $t0, $0, 0x3000
subu $ra, $ra, $t0
sw $ra, 0($sp)
addu $sp, $sp, $k1
ori $ra, $ra, 0x3000					# jr.D_RS -- Jal.M
addu $s7, $s7, $k0

