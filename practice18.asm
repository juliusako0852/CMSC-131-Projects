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
	
	xor $s0, $s0, $s1
	xor $s1, $s0, $s1
	xor $s0, $s0, $s1
	
	li $v0, 4
	la $a0, result1
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, result2
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall
	
	
.data
	prompt1: .asciiz "Enter number1: "
	prompt2: .asciiz "Enter number2: "
	result1: .asciiz "Number 1: "
	result2: .asciiz "\nNumber 2:"