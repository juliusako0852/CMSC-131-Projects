.text
main:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	sw $v0, num1
	
	lw $t0, num1
	
	div $t1, $t0, 10 
	mfhi $s0		#ones
	div $t1, $t1, 10 
	mfhi $s1		#tens
	div $t1, $t1, 10
	mfhi $s2		#hundreds
	div $t1, $t1, 10
	mfhi $s3		#thousands
	
	li $v0, 4
	la $a0, ones
	syscall
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 4
	la $a0, tens
	syscall
	
	li $v0, 1
	move $a0, $s1
	syscall
	
	li $v0, 4
	la $a0, hundreds
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 4
	la $a0, thousands
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0,10
	syscall

.data
	prompt1: .asciiz "Enter a 4-digit number: " 
	result: .asciiz "Result\n "
	thousands: .asciiz "\nThousands: "
	hundreds: .asciiz "\nHundreds: "
	tens: .asciiz "\nTens: "
	ones: .asciiz "Ones: "
	num1: .word 0
	
	