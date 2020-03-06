.data
c: .space 25
.text
	li $v0,5	#read n
	syscall
	move $s0,$v0	#s0:n
	li $t0,0	#t0:i
in:	beq $t0,$s0,in_end
	li $v0,12
	syscall	
	sb $v0,c($t0)	#read c[i]
	addi $t0,$t0,1
	j in
in_end:	
	li $s1,1	#s1:mark
	li $t0,0	#t0:i
check:	beq $t0,$s0,check_end
	sub $t1,$s0,1	#t1:j
	sub $t1,$t1,$t0	#j=n-1-i
	lb $t2,c($t0)	#t2:c[i]
	lb $t3,c($t1)	#t3:c[j]
	add $t0,$t0,1
if:	beq $t2,$t3,check
	li $s1,0
check_end:
	move $a0,$s1
	li $v0,1
	syscall
	li $v0,10
	syscall
