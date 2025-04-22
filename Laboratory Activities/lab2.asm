
.text
main: 
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 5
	syscall
	move $a0, $v0
	
	jal SeparateDigits 
	move $a3, $t4
	move $a2, $t3
	move $a1, $t2
	move $a0, $t1
	jal ReverseDigits
	move $v0, $t5
	move $a1, $v0
	jal PrintReversed
	jal Exit
.data
	prompt1: .asciiz "Enter a four digit number: "

.text
SeparateDigits: 
	div $t0, $a0, 10
	mfhi $t1
	
	div $t0, $t0, 10
	mfhi $t2
	
	div $t0, $t0, 10
	mfhi $t3
	
	div $t0, $t0, 10
	mfhi $t4

	jr $ra

.data
	
.text
ReverseDigits: 
	sll $t5, $a0, 1
	sll $a0, $a0, 3
	add $t5, $t5, $a0
	add $t5, $t5, $a1
	
	sll $t6, $t5, 1
	sll $t5, $t5, 3
	add $t5, $t5, $t6
	add $t5, $t5, $a2
	
	sll $t6, $t5, 1
	sll $t5, $t5, 3
	add $t5, $t5, $t6
	add $t5, $t5, $a3
	
	jr $ra
.data
	
.text
PrintReversed: 
	li $v0, 4
	la $a0, _print_
	syscall
	
	li $v0, 1
	move $a0, $a1
	syscall
	
	jr $ra
.data
	_print_: .asciiz "The reversed is: "
.text
Exit:
	li $v0, 10
	syscall
.data
