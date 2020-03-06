.data
a: .space 400 #10*10*4
b: .space 400
ans: .space 400
space: .asciiz " "
return: .asciiz "\n"

.macro getindex(%ans,%i,%j)
	li $t7,10
	mul %ans,%i,$t7
	add %ans,%ans,%j	#ans=i*10+j
	sll %ans,%ans,2		#ans=4(i*10+j)
.end_macro

.text
	li $v0,5
	syscall
	move $s0,$v0	#s0:m1
	li $v0,5
	syscall
	move $s1,$v0	#s1:n1
	li $v0,5
	syscall
	move $s2,$v0	#s2:m2
	li $v0,5
	syscall
	move $s3,$v0	#s3:n2
	sub $t8,$s1,$s3
	addi $t8,$t8,1	#t8:n1-n2+1
	sub $t9,$s0,$s2
	addi $t9,$t9,1	#t9:m1-m2+1
	
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_a_j:
	beq $t1,$s1,in_a_j_end
	li $v0,5
	syscall
	getindex($t6,$t0,$t1)
	sw $v0,a($t6)
	addi $t1,$t1,1
	j in_a_j
in_a_j_end:
	li $t1,0
	addi $t0,$t0,1
	beq $t0,$s0,in_a_i_end
	j in_a_j
	
	
in_a_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
in_b_j:
	beq $t1,$s3,in_b_j_end
	li $v0,5
	syscall
	getindex($t6,$t0,$t1)
	sw $v0,b($t6)
	addi $t1,$t1,1
	j in_b_j
in_b_j_end:
	li $t1,0
	addi $t0,$t0,1
	beq $t0,$s2,in_b_i_end
	j in_b_j
	
	
in_b_i_end:
	li $t0,0	#t0:i
	li $t1,0	#t1:j
	li $t2,0	#t2:k
	li $t3,0	#t3:l
	li $s4,0	#s4:ans[i][j]
conv_l:	
	beq $t3,$s3,conv_l_end	
	add $t4,$t0,$t2	#t4:i+k
	add $t5,$t1,$t3	#t5:j+l
	getindex($t6,$t4,$t5)
	lw $s5,a($t6)	#s5:a[i+k][j+l]
	getindex($t6,$t2,$t3)
	lw $s6,b($t6)	#s6:b[k][l]
	mul $s7,$s5,$s6
	addu $s4,$s4,$s7	#ans[i][j] += a[i+k][j+l]+b[k][l]
	getindex($t6,$t0,$t1)
	sw $s4,ans($t6)	#save ans[i][j] to memory
	addi $t3,$t3,1
	j conv_l
conv_l_end:	
	li $t3,0
	addi $t2,$t2,1
	beq $t2,$s2,conv_k_end
	j conv_l
conv_k_end:
	li $s4,0	#ans[i][j]=0
	li $t2,0
	addi $t1,$t1,1
	beq $t1,$t8,conv_j_end
	j conv_l
conv_j_end:
	li $t1,0
	addi $t0,$t0,1
	beq $t0,$t9,conv_i_end
	j conv_l
conv_i_end:
	
	li $t0,0	#t0:i
	li $t1,0	#t1:j
out_j:
	beq $t1,$t8,out_j_end		####t8:n1-n2+1
	getindex($t6,$t0,$t1)	
	lw $a0,ans($t6)
	li $v0,1
	syscall		#print ans[i][j]
	la $a0,space
	li $v0,4
	syscall		#print space
	addi $t1,$t1,1
	j out_j
out_j_end:
	addi $t0,$t0,1
	li $t1,0
	beq $t0,$t9,out_i_end		####t9:m1-m2+1
	la $a0,return
	li $v0,4
	syscall		#print "\n"
	j out_j
out_i_end:
	li $v0,10
	syscall
	
	
	
	
	
