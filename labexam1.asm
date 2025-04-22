.data
	prompt1: .asciiz "Enter a number: " 
	prompt2: .asciiz "Enter index: "
	result: .asciiz "Result: "

.text
main:
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
	
	li $v0, 4
	la $a0, result
	syscall
	
	addi $s4, $zero, 0xFFFFFFFF
	
	addi $s1, $s1, 1
	sllv $s5, $s4, $s1
	not $s5, $s5
	
	and $s6, $s0, $s5
		
	li $v0, 1
	move $a0,$s6
	syscall

	li $v0, 10
	syscall