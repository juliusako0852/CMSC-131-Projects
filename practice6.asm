#subtractor program
#September 9, 2024

.text
	#print prompt1:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	#$s0 = user input 1
	#$s1 = user input 2
	#$s2 = difference
	
	#ask for user input 1:
	li $v0, 5
	syscall
	move $s0, $v0
	
	#print prompt2
	li $v0, 4
	la $a0, prompt2
	syscall
	
	#ask for user input 2:
	li $v0, 5
	syscall
	move $s1, $v0
	
	sub $s2, $s0, $s1
	
	#print result prompt:
	li $v0, 4
	la $a0, prompt3
	syscall
	
	#print result:
	li $v0, 1
	move $a0, $s2
	syscall
	
	#terminate the program:
	li $v0, 10
	syscall

.data
	prompt1: .asciiz "Enter first number: "
	prompt2: .asciiz "Enter second number: "
	prompt3: .asciiz "The difference is "