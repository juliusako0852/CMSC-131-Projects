.text
main:
	#ask age:
	li $v0, 4
	la $a0, askName
	syscall
	#ask user input:
	li $v0, 8
	lw $a1, size
	la $a0, name
	syscall
	
	li $v0, 4
	la $a0, askAge
	syscall
	
	li $v0, 5
	syscall
	move $a0, $v0
	sw $a0, age
	
	li $v0, 4
	la $a0, printName
	syscall
	
	li $v0, 4
	la $a0, name
	syscall
	
	li $v0, 4
	la $a0, printAge1
	syscall
	
	li $v0, 1
	lw $a0, age
	syscall
	
	li $v0, 4
	la $a0, printAge2
	syscall
	
	
	#termination
	li $v0, 10
	syscall
.data
	askName: .asciiz "Ano it im ngaran? "
	askAge: .asciiz "Pera na it im edad? "
	printName: .asciiz "Hi "
	printAge1: .asciiz " mahilig hit "
	printAge2: .asciiz " anyos."
	name: .space 81
	age: .word 0
	size: .word 80