#d) (4x / 3) * y
.text
	li $v0, 4
	la $a0, equation
	syscall
	
	li $v0, 4
	la $a0, askX
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, askY
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	mul $s2, $s0, 4
	mul $s2, $s2, $s1 
	div $s2, $s2, 3

	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall
.data 
	equation: .asciiz "(4x / 3) * y\n"
	askX: .asciiz "Enter the value of x: "
	askY: .asciiz "Enter the value of y: "
	result: .asciiz "Result: "
	