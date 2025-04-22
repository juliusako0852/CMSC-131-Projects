.text
	li $v0, 4
	la $a0, askforname
	syscall
	
	li $v0, 8
	lw $a1, size
	la $a0, name
	syscall
	
	li $v0, 4
	la $a0, askage
	syscall
	
	li $v0, 5
	syscall
	move $a0, $v0
	sw $a0, age

	
	li $v0, 4
	la $a0, askbirthday
	syscall
	
	li $v0, 8
	lw $a1, size
	la $a0, birthday
	syscall
	
	li $v0, 4
	la $a0, prompt0
	syscall
	
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 4
	la $a0, name
	syscall
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 1
	lw $a0, age
	syscall
	
	li $v0, 4
	la $a0, prompt3
	syscall
	
	li $v0, 4
	la $a0, birthday
	syscall
	
	li $v0, 10
	syscall
.data
	size: .word 80
	name: .space 81
	age: .word 0
	birthday: .space 81
	askforname: .asciiz "Enter name: "
	askage: .asciiz "Enter age: "
	askbirthday: .asciiz "Enter Birthday: "
	prompt0: .asciiz "\nInfo\n"
	prompt1: .asciiz "Name: "
	prompt2: .asciiz "Age: "
	prompt3: .asciiz "\nBirthday: "
	