.text
	li $v0, 4
	la $a0, askinput
	syscall
		
	li $v0, 8
	lw $a1, size
	la $a0, input
	syscall
	
	
	
	li $v0, 4
	syscall
	
	addi $v0, $zero, 10
	syscall
.data
	helloWorld: .asciiz "Hello World"
	size: .word 80
	input: .space 81
	askinput: .asciiz "Input a string :"