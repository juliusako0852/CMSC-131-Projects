#Implement a program which multiplies a user input by 10 using only bit shift operations and 
#addition.  Check to see if your program is correct by using the mult  and mflo operators.  
#Your program should include a proper and useful prompt for input, and print the results in a 
#meaningful manner. 
.text
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	sll $s1, $s0, 3
	sll $s2, $s0, 1
	add $s2, $s2, $s1
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall
.data
	prompt: .asciiz "Enter a number: "
	result: .asciiz "Result: "