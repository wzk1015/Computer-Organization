.data
a: .space 256
b: .space 256
c: .space 256
space:	.asciiz " "
enter:	.asciiz "\n"

.macro getindex(%ans,%i,%j)
	sll %ans,%i,3		#ans=8i
	add %ans,%ans,%j	#ans=8i+j
	sll %ans,%ans,2		#ans=4*(8i+j)
.end_macro
.text
	li $v0,5
	syscall
	move $s0,$v0	#s0:n
	li $v0,5
	syscall
	move $s1,$v0	#s1:m
	sub $s2,$s0,1	#s2:n-1
	sub $s3,$s1,1	#s3:m-1
	
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_a_j:
	beq $t1,$s1,in_a_j_end
	getindex($t6,$t0,$t1)
	li $v0,5
	syscall
	sw $v0,a($t6)	#save a[i][j]
	addi $t1,$t1,1
	j in_a_j
in_a_j_end:
	addi $t0,$t0,1
	beq $t0,$s0,in_a_i_end
	li $t1,0
	j in_a_j
in_a_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_b_j:
	beq $t1,$s1,in_b_j_end
	getindex($t6,$t0,$t1)
	li $v0,5
	syscall
	sw $v0,b($t6)	#save b[i][j]
	addi $t1,$t1,1
	j in_b_j
in_b_j_end:
	addi $t0,$t0,1
	beq $t0,$s0,in_b_i_end
	li $t1,0
	j in_b_j
in_b_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
add_j:	
	beq $t1,$s1,add_j_end
	getindex($t6,$t1,$t0)	
	lw $s6,a($t6)	#s2:a[j][i]
	lw $s7,b($t6)	#s3:b[j][i]
	add $s4,$s6,$s7	#s4:c[i][j]
	getindex($t6,$t0,$t1)
	sw $s4,c($t6)
	addi $t1,$t1,1
	j add_j
add_j_end:
	addi $t0,$t0,1
	beq $t0,$s0,add_i_end
	li $t1,0
	j add_j
	
add_i_end:
	li $t0,0
	li $t1,0
out_j:	
	beq $t1,$s3,out_j_end
	getindex($t6,$t0,$t1)
	lw $a0,c($t6)	#a0:c[i][j]
	li $v0,1
	syscall
	la $a0,space	#print space
	li $v0,4
	syscall
	addi $t1,$t1,1
	j out_j
out_j_end:
	getindex($t6,$t0,$s3)
	lw $a0,c($t6)
	li $v0,1
	syscall	#print c[i][m-1]
	la $a0,enter	#print enter
	li $v0,4
	syscall
	addi $t0,$t0,1
	beq $t0,$s2,out_i_end
	li $t1,0
	j out_j
out_i_end:
	li $t1,0
last_line:
	beq $t1,$s3,last_line_end
	getindex($t6,$s2,$t1)
	lw $a0,c($t6)	#a0:c[n-1][j]
	li $v0,1
	syscall
	la $a0,space	#print space
	li $v0,4
	syscall
	addi $t1,$t1,1
	j last_line
last_line_end:
	getindex($t6,$s2,$s3)
	lw $a0,c($t6)
	li $v0,1
	syscall
	li $v0,10
	syscall
	
	
	
	
	