.data
	prompt1: 	.asciiz "Welcome to Sum/Difference Calculator!\n"
	prompt2:  	.asciiz "Enter first number: "
	prompt3: 	.asciiz "Enter second number: "
	result1: 	.asciiz "Sum: "
	result2:	.asciiz "Difference"
.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 5
	syscall
	move $t1, $v0
	
	li $v0, 4
	la $a0, prompt3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	
	add $t3,$t1,$t2
	
	li $v0, 1
	
	
	li $v0, 4
	la $a0, result1
	syscall
	
	sub $t4,$t1,$t2
	
	
	li $v0, 4
	la $a0, result2
	syscall
	
	move $v0, $t4
	syscall
	
	
