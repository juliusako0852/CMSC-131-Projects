#adder program
#September 9, 2024

.text
	#$s1 = input 1
	#$s2 = inout 2
	#$s3 =	sum
	
	#print prompt1: 
	addi $v0, $zero, 4
	la $a0, prompt1
	syscall
	
	#ask for input1:
	addi $v0, $zero, 5
	syscall
	move $s1, $v0
	
	#print prompt2: 
	addi $v0, $zero, 4
	la $a0, prompt2
	syscall
	
	#ask for input2:
	addi $v0, $zero, 5
	syscall
	move $s2, $v0
	
	
	#input1 + input2 = sum
	add $s3, $s1, $s2
	
	#print result:
	addi $v0, $zero, 4
	la $a0, prompt3
	syscall
	
	addi $v0, $zero, 1
	move $a0, $s3
	syscall
		
	#terminate the program:			
	addi $v0, $zero, 10
	syscall
	
.data
	prompt1: .asciiz "Enter first number: "
	prompt2: .asciiz "Enter second number: "
	prompt3: .asciiz "The sum is "