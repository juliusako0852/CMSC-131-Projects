# Implement the rem operator using only the div, mfhi, and mflo operators.
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
	
	div $s0, $s1
	mflo $s2
	mfhi $s3
	
	li $v0, 4
	la $a0, quotient
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, remainder
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall
.data
	prompt1: .asciiz "Enter number1: "
	prompt2: .asciiz "Enter number2: "
	quotient: .asciiz "Quotient: "
	remainder: .asciiz "\nRemainder: "