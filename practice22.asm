#Implement a simple program to do a bitwise NAND in MARS. Your program should 
#include a proper and useful prompt for input, and print the results in a meaningful 
#manner. 

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
	
	and $s2, $s1, $s0
	nor $s2, $s2, $zero
	
	li $v0, 4
	la $a0, result
	syscall
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall
	
	
.data
	prompt1: .asciiz "Enter number1: "
	prompt2: .asciiz "Enter number2: "
	result: .asciiz "NAND Results: "