#x^2 +6x + 8 = 0

.text
	li $v0, 4
	la $a0, prompt1
	syscall
	
	#$s0 = input
	#$s1 = x*x
	#$s2 = 6 => 6*x
	#$s3 = 8
	#$s4 = x*x + 6x => x*x + 6x + 8 
	
	#ask for input:
	li $v0, 5
	syscall
	move $s0, $v0
	
	#for x*x:
	mul $s1, $s0, $s0
	#for $s2:
	addi $s2, $zero, 6
	mul $s2, $s2, $s0
	#for $s3:
	addi $s3, $zero, 8
	#for $s4:
	add $s4, $s1, $s2
	add $s4, $s4, $s3
	
	#print result:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0,1
	move $a0, $s4
	syscall
	
	#terminate the program:
	li $v0, 10
	syscall
	

.data
	prompt1: .asciiz "Enter a number: "
	result: .asciiz "Result: "