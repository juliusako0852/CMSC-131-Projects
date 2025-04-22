#Implement the AND, OR, and NOT operations using only the MIPS nor operator.  Do 
#the same thing using NAND

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
	
	#and operation:
	
	nor $t0, $s0, $zero
	nor $t1, $s1, $zero
	nor $s2, $t1, $t0
	
	#or operation:
	nor $s3, $s0, $s1
	nor $s3, $s3, $zero
	
	#not operation:
	nor $s4, $s0, $zero 
	
	li $v0, 4
	la $a0, andOP
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, orOP
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 4
	la $a0, notOP
	syscall
	
	li $v0, 1
	move $a0, $s4
	syscall
	
	li $v0, 10
	syscall
.data
	prompt1: .asciiz "Enter number 1: "
	prompt2: .asciiz "Enter number 2: "
	andOP: .asciiz "AND result: "
	orOP: .asciiz "\nOR result: "
	notOP: .asciiz "\nNOT result: "
	