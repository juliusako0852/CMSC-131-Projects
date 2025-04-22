#Implement a program which divides a user input by 8 using only bit shift.
#Your program should include a proper and useful prompt for input, 
#and print the results in a meaningful manner. 

.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	srl $s1, $s0, 3
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 10
	syscall

.data
	prompt1: .asciiz "Input a number: "
	result: .asciiz "Result: "