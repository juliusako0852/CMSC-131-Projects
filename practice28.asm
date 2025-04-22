
.text
main:
	li $v0, 4
	la $a0, _Ask_Input
	syscall
	
	li $v0, 5
	syscall
	move $a0, $v0
	
	jal Multiply
	
	li $v0, 10
	syscall
.data
	_Ask_Input: .asciiz "Enter a number: "

.text
Multiply:
	mul $v1, $a0, $a0
	j PrintProduct
	
	li $v0, 4
	la $a0, _Back_
	syscall
	
	jr $ra
.data
	_Back_: .asciiz "I'm back! "
.text
PrintProduct:
	li $v0, 4
	la $a0, _P_P
	syscall
	
	li $v0, 1
	move $a0, $v1
	syscall
	
	jr $ra
.data	
	_P_P: .asciiz "The result is: "
