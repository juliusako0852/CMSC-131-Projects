#remainder should be store at $t1
.text
main:
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0 
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, _printSpace
	syscall
	
	beq $t0, 1, exit
	
	b checking
	
checking:
	beq $t0, 1, exit
	rem $t1, $t0, 2
	beqz $t1, even
	b odd

even: 
	div $t0, $t0, 2
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, _printSpace
	syscall
	
	b checking

odd:
	mul $t0, $t0, 3
	addi $t0, $t0, 1
	
	beq $t0, 1, exit
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, _printSpace
	syscall
	
	b checking

exit:
	li $v0, 10
	syscall
.data
	prompt: .asciiz "Enter a  number: "
	_printSpace: .asciiz " "