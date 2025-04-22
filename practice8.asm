#operation: y = 5*x*x + 2*x + 3

.text
main:
	#$s0 = value of x
	#$s1 = 5
	#$s2 = 2
	#$s3 = 3
	#$s4 = x*x = $s0 * $s0
	#$s5 = 2 *x = $s2 * $s0
	
	#print prompt1:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	#take user input:
	li $v0, 5
	syscall
	move $s0, $v0
	
	#assign 2 to $s1:
	addi $s1, $zero, 5
	#assign 5 to $s2:
	addi $s2, $zero, 2
	#assign 3 to $s3:
	addi $s3, $zero, 3
	
	#perform 5*x*x:
	mul $s4, $s0, $s0
	mul $s4, $s4, $s1
	
	#perform 2*x:
	mul $s5, $s2, $s0
	
	#perform $s4 + $s5 + $s3:
	add $s6, $s4, $s5
	add $s7, $s6, $s3
	
	#print results:
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s7
	syscall
	
	
	#terminate the program:
	li $v0, 10
	syscall
.data
	prompt1: .asciiz "Enter the value of x: "
	result: .asciiz "The result is "
	
