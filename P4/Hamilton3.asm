.data
a:	.space 256	#8*8*4
mark:	.space 32	#8*4
t0_stack:	.space 24

.macro	getindex(%ans,%i,%j)	# %ans=(%i*8+%j)*4
	sll 	%ans,%i,3	# %ans=%i*8
	add	%ans,%ans,%j	# %ans=%ans+%j
	sll	%ans,%ans,2	# %ans=%ans*4
.end_macro

.text
	li	$s5,1		#s5:constant 1
	li	$v0,5
	syscall
	move	$s1,$v0		#s1:number of points
	li	$v0,5
	syscall
	move	$s2,$v0		#s2:number of lines
	
	li	$t0,0		#t0:loop variable
loop_in:
	beq	$t0,$s2,loop_in_end
	li	$v0,5
	syscall
	move	$t1,$v0		#t1:input1
	li	$v0,5
	syscall
	move	$t2,$v0		#t2:input2
	sub	$t1,$t1,1
	sub	$t2,$t2,1	#t1&t2 minus 1
	getindex($t3,$t1,$t2)	#t3:index
	sw	$s5,a($t3)
	getindex($t3,$t2,$t1)
	sw	$s5,a($t3)
	add	$t0,$t0,1
	j	loop_in
	
loop_in_end:
	li	$a0,0		#a0:start
	li	$a1,1		#a1:layer
	jal	solver
end:
	move	$a0,$v0
	li	$v0,1		#print the result
	syscall
	li	$v0,10		#exit
	syscall
	
solver:
	sll	$t5,$a0,2	
	sw	$s5,mark($t5)	#mark[start]=1
	sub	$sp,$sp,12
	sw	$ra,8($sp)	#store return address
	sw	$a1,4($sp)	#store layer
	sw	$a0,0($sp)	#store start
	
	
	bne	$a1,$s1,recursion	#decide whether path has been found
	getindex($t3,$a0,$0)
	lw	$t4,a($t3)
	bne	$t4,$s5,recursion
	
	li	$v0,1		#return 1
	addi	$sp,$sp,12	#pop 3 items off stack
	j	end
	
recursion:
	li	$t0,0		#loop varible,-1 because add 1 at beginning

	
loop_recursion:
	beq	$t0,$s1,loop_recursion_end
	
	addi	$t8,$t8,4
	sw	$t0,t0_stack($t8)
	
	sll	$s3,$t0,2
	lw	$s4,mark($s3)		#s4:mark[i]
	beq	$s4,$s5,loop_recursion_next	#mark[i]==1:continue
	lw	$s3,0($sp)		#s3:start
	getindex($s4,$t0,$s3)
	lw	$s6,a($s4)		#s6:a[i][start]
	beq	$s6,$0,loop_recursion_next
	
	move	$a0,$t0			#i
	add	$a1,$a1,1		#layer+1
	
	jal	solver			#solver(i,layer+1)
loop_recursion_next:
	lw	$t0,t0_stack($t8)
	sub	$t8,$t8,4
	add	$t0,$t0,1
	j	loop_recursion

	
loop_recursion_end:
	lw	$a0,0($sp)
	sll	$t7,$a0,2	
	sw	$0,mark($t7)	#mark[start]=0
	
	lw	$a1,4($sp)
	sub	$a1,$a1,1
	lw	$ra,8($sp)
	addi	$sp,$sp,12
	
	li	$v0,0
	jr	$ra
	
	
