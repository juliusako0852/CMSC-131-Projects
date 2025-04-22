.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0

	div $s0, $s0, 10
	mfhi $s1
	
	div $s0, $s0, 10
	mfhi $s5
	
	div $s0, $s0, 10
	mfhi $s6
	
	div $s0, $s0, 10
	mfhi $s7
	
	sll $s2, $s1, 9
	add $t1, $zero, $s2
	sll $s2, $s1, 8
	add $t1, $t1, $s2
	sll $s2, $s1, 7
	add $t1, $t1, $s2
	sll $s2, $s1, 6
	add $t1, $t1, $s2
	sll $s2, $s1, 5
	add $t1, $t1, $s2
	sll $s2, $s1, 3
	add $t1, $t1, $s2
	
	
	sll $s2, $s5, 6
	add $t2, $zero, $s2
	sll $s2, $s5, 5
	add $t2, $t2, $s2
	sll $s2, $s5, 2
	add $t2, $t2, $s2
	
	sll $s2, $s6, 3
	add $t3, $zero, $s2
	sll $s2, $s6, 1
	add $t3, $t3, $s2


	add $t4, $t1, $t2
	add $t4, $t4, $t3
	add $t4, $t4, $s7
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $t4
	syscall
			
	li $v0, 10
	syscall
	
.data
	prompt1: .asciiz "Enter a 4-digit number: "
	result: .asciiz "The reverse is: "
