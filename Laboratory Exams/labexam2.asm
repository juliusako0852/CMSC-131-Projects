.data
	prompt1: .asciiz "Enter an interger: "
	result: .asciiz "The prime factors are: "
	invalid: .asciiz "prime factors are not defined if num <=1\n"
	printSpace: .asciiz " "

.text
main:
	li $t1, 1
	li $t2, 2
	#$t3 qoutient
	#$t4 remainder
	
	
	jal getInput
	jal exit
	jal primeFactors
	

invalidInput:
	li $v0, 4
	la $a0, invalid
	syscall
	b exit

getInput:	#return an integer
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	ble $t0, $t1, invalidInput
	addi $t5, $t0, 0
	
	jr $ra

increaseDivide:
	addi $t2, $t2, 1
	b primeFactors		

primeFactors:	#(int n) #print the prime factors
	
	div $t0, $t2
	mflo $t3
	mfhi $t4	

	sge $t6, $t3, 0
	sgt $t7, $t4, 0
	beq $t6, $t7, increaseDivide
	
	#seq $t6, $t3, 1
	#seq $t7, $t4, 0
	#beq $t6, $t7, exit
	
	add $t9, $zero, $t2 
	
	li $v0, 1
	move $a0, $t9
	syscall
	
	li $v0, 4
	la $a0, printSpace
	syscall
	
	beq $t2, $t5, exit
	
	
	
	li $t0, 0
	add $t0, $t0, $t3
	
	
	b primeFactors

exit: 
	li $v0, 4
	la $a0, result
	syscall
	li $v0, 10
	syscall
