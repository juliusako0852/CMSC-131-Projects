.text
	li $v0, 4
	la $a0, input1
	syscall
	
	li $v0, 7
	syscall 
	mov.d $f4, $f12
	
	li $v0, 4
	la $a0, input2
	syscall
	
	li $v0, 
	
	li $v0, 4
	la $a0, result
	syscall

.data 
	input1: .asciiz "Enter first number: "
	input2: .asciiz "Enter second number: "
	result: .asciiz "Average: "
	
