.text
main:
	li $v0,4
	la $a0, askInput
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0,4
	la $a0, askInput2
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	xor $s2, $s1, $s0
	or $s3, $s1,$s0
	and $s4, $s1, $s0
	
	li $v0,4
	la $a0, XORresult
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0,4
	la $a0, ORresult
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0,4
	la $a0, ANDresult
	syscall
	
	li $v0, 1
	move $a0, $s4
	syscall
	
	li $v0, 10
	syscall
	
.data
	askInput: .asciiz"Enter first number: "
	askInput2: .asciiz"Enter second number: "
	XORresult: .asciiz "\nXOR Result: "
	ORresult: .asciiz "\nOR Result: "
	ANDresult: .asciiz "\nAND Result: "