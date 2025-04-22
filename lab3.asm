.text
main:
	lui $t0, 0x1001
	lw $t0, 0($t0)
	lw $t1, 0($t0)
	
	li $v0, 1
	move $a0, $t1
	syscall

	lw $t1, 4($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	lw $t1, 8($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	lui $t0, 0x1001
	addi $t0, $t0, 4
	lw $t0, 0($t0)
	lw $t1, 0($t0)
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	lw $t1, 4($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	lw $t1, 8($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	lui $t0, 0x1001
	addi $t0, $t0, 8
	lw $t0, 0($t0)
	lw $t1, 0($t0)
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	lw $t1, 4($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	lw $t1, 8($t0)
	li $v0, 1
	move $a0, $t1
	syscall
	
	
	li $v0, 10
	syscall
.data
	.word r1
	.word r2
	.word r3
	
	r1:	.word 1
		.word 2
		.word 3
	r2:	.word 4
		.word 5
		.word 6
	r3:	.word 7
		.word 8
		.word 9