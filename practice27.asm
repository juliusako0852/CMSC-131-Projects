.text
	li $v0, 4
	la $a0, ask
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	addi $t0, $zero, 10
	div $s0, $t0
	mfhi $s1
	mflo $s0
	div $s0, $t0
	mfhi $s2
	mflo $s0
	div $s0, $t0
	mfhi $s3
	mflo $s0
	div $s0, $t0
	mfhi $s4
	mflo $s0
	
	sll $s1, $s1, 
	

.data
	ask: .asciiz "Enter a 4-digit number: "
	reverse: .asciiz "The reverse is: "
