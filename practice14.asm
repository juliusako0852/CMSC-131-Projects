.text
	li $v0, 4
	la $a0, takeInput1
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, takeInput2
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	add $s2, $s0, $s1
	addi $s3, $zero, 2
	div $s3, $s2, $s3
	
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall
	
.data
	takeInput1: .asciiz "Enter first number: "
	takeInput2: .asciiz "Enter second number: "
	result: .asciiz "Result: " 