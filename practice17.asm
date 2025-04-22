#not operation
.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	xor $s2, $s0, $s1
	nor $s3, $s2, $zero
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0,1
	move $a0, $s3
	syscall
	
	li $v0, 10 
	syscall
.data
	prompt1: .asciiz "Enter number1: "
	prompt2: .asciiz "Enter number2: "
	result: .asciiz "Result of XNOR Operation: "