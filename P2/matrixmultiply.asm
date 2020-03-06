.data
a: .space 256 #8*8*4
b: .space 256
ans: .space 256
space: .asciiz " "
return: .asciiz "\n"

.macro	getindex(%ans,%i,%j)
	li	$t7,8
	mult 	%i,$t7
	mflo	%ans		# %ans=%i*8
	add	%ans,%ans,%j	# %ans=%ans+%j
	sll	%ans,%ans,2	# %ans=%ans*4
.end_macro

.text
	li $v0,5	#read n
	syscall
	move $s0,$v0	#s0:n
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_a_j:
	beq $t1,$s0,in_a_j_end
	li $v0,5
	syscall
	getindex($t3,$t0,$t1)	#t2:address of a[i][j]
	sw $v0,a($t3)		#save a[i][j] to memory
	addi $t1,$t1,1
	j in_a_j
in_a_j_end:
	addi $t0,$t0,1
	li $t1,0
	beq $t0,$s0,in_a_i_end
	j in_a_j
	
	
in_a_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_b_j:
	beq $t1,$s0,in_b_j_end
	li $v0,5
	syscall
	getindex($t3,$t0,$t1)	#t3:address of b[i][j]
	sw $v0,b($t3)		#save b[i][j] to memory
	addi $t1,$t1,1
	j in_b_j
in_b_j_end:
	addi $t0,$t0,1
	li $t1,0
	beq $t0,$s0,in_b_i_end
	j in_b_j
	
	
in_b_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
	li $t2,0	#t2:k
	li $s1,0	#s1:ans[i][j](initial as 0)
mult_k:
	beq $t2,$s0,mult_k_end
 	getindex($t3,$t0,$t2)
	lw $s2,a($t3)	#s2:a[i][k]
	getindex($t3,$t2,$t1)
	lw $s3,b($t3)	#s3:b[k][j]
	mul $s4,$s2,$s3
	add $s1,$s1,$s4
	getindex($t3,$t0,$t1)
	sw $s1,ans($t3)
	addi $t2,$t2,1
	j mult_k
mult_k_end:
	li $s1,0
	addi $t1,$t1,1
	li $t2,0
	beq $t1,$s0,mult_j_end
	j mult_k
mult_j_end:
	addi $t0,$t0,1
	li $t1,0
	beq $t0,$s0,mult_i_end
	j mult_k
mult_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j

out_j:
	beq $t1,$s0,out_j_end
	getindex($t3,$t0,$t1)	
	lw $a0,ans($t3)
	li $v0,1
	syscall		#print ans[i][j]
	la	$a0,space
	li	$v0,4
	syscall		#print space
	addi $t1,$t1,1
	j out_j
out_j_end:
	addi $t0,$t0,1
	li $t1,0
	beq $t0,$s0,out_i_end
	la $a0,return
	li $v0,4
	syscall		#print "\n"
	j out_j
out_i_end:
	li $v0,10
	syscall
	
	
	
	
