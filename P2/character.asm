.data
num:	.space 102 #26*4
order:	.space 26  #26*1
space:	.asciiz " "
enter:	.asciiz "\n"

.text
	li $v0,5
	syscall
	move $s0,$v0	#s0: n
	li $t1,0	#t1:order_j
	li $t0,0	#t0:i
in:	beq $t0,$s0,in_end
	li $v0,12
	syscall
	move $s1,$v0	#s1:c
	sub $t2,$s1,97	#t2:c-'a'
	sll $t2,$t2,2	
	lw $t3,num($t2)	#t3:num[c-'a']
	bne $t3,0,if_not
	sb $s1,order($t1)	#order[order_j]=c
	addi $t1,$t1,1		#order_j++
if_not:
	addi $t3,$t3,1
	sub $t2,$s1,97	#t2:c-'a'
	sll $t2,$t2,2
	sw $t3,num($t2)	#num[c-'a'+=]
	addi $t0,$t0,1
	j in
in_end:
	li $t0,0	#t0:i
out:	
	beq $t0,$t1,out_end
	lb $a0,order($t0)
	li $v0,11
	syscall		#print order[i]
	move $s5,$a0	#s5:order[i]
	la $a0,space
	li $v0,4
	syscall		#print space
	subi $s5,$s5,97
	sll $t2,$s5,2
	lw $a0,num($t2)
	li $v0,1
	syscall		#print num[order[i]-'a']
	la $a0,enter
	li $v0,4
	syscall		#print enter
	addi $t0,$t0,1
	j out
out_end:
	li $v0,10
	syscall
	
	
	
	
