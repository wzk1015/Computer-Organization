.data
symbol:	.space 28 #7*4
array:  .space 28
space: 	.asciiz " "
return:	.asciiz "\n"
i_stack:.space 100

.macro getindex(%ans,%i)
	sll %ans,%i,2	#ans=4i
.end_macro

.text
	li $s7,1	#s7:constant 1
	li $v0,5
	syscall
	move $s0,$v0	#s0:n
	li $a0,0	#a0:index
	jal fullarray
	li $v0,10
	syscall
fullarray:
	sub $sp,$sp,8
	sw $ra,4($sp)
	sw $a0,0($sp)
	
	
	li $t0,0	#t0:i
	blt $a0,$s0,loop	#if index<n: jump to loop
print:	
	beq $t0,$s0,print_end
	getindex($t6,$t0)
	lw $a0,array($t6)	#s1=array[i]
	li $v0,1
	syscall			#print array[i]
	la $a0,space
	li $v0,4
	syscall			#print space
	addi $t0,$t0,1
	j print
print_end:
	la $a0,return
	li $v0,4	#print return
	syscall
	lw $ra,4($sp)
	lw $a0,0($sp)
	add $sp,$sp,8
	sub $a0,$a0,1	#return to fullarray(index)
	jr $ra
loop:
	beq $t0,$s0,loop_end
	
	addi $t8,$t8,4
	sw $t0,i_stack($t8)	#push i into stack
	
	
	getindex($t6,$t0)
	lw $s1,symbol($t6)	#s1:symbol[i]
	bne $s1,$0,loop_next	#if symbol[i]!=0: continue
	add $t1,$t0,1		#t1:i+1
	getindex($t6,$a0)
	sw $t1,array($t6)	#array[index]=i+1
	getindex($t6,$t0)
	sw $s7,symbol($t6)	#symbol[i]=1
	
	addi $a0,$a0,1
	jal fullarray		#fullarray(index+1)
	
	lw $t0,i_stack($t8)
	subi $t8,$t8,4
	getindex($t6,$t0)
	sw $0,symbol($t6)	#symbol[i]=0
	j loop_next_next
loop_next:
	lw $t0,i_stack($t8)
	subi $t8,$t8,4
loop_next_next:
	addi $t0,$t0,1
	j loop
loop_end:
	lw $ra,4($sp)
	lw $a0,0($sp)
	add $sp,$sp,8
	sub $a0,$a0,1	#return to fullarray(index)
	jr $ra







