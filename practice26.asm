#V = nRT / P
#R = (8314/1000)
.text
	li $v0, 4
	la $a0, askGas
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 4
	la $a0, askTemperature
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	li $v0, 4
	la $a0, askPressure
	syscall
	
	li $v0, 5
	syscall
	move $s2, $v0
	
	mul $s3, $s1, $s0
	mul $s3, $s3, 8314
	div $s3, $s3, $s2
	div $s3, $s3, 1000
	
	li $v0, 4
	la $a0, volume
	syscall
	
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 4
	la $a0, volume2
	syscall
	
	li $v0, 10
	syscall 
.data
	askGas: .asciiz "Enter gas amount(n): "
	askTemperature: .asciiz "Enter Temperature (T): "
	askPressure: .asciiz "Enter Pressure (P): "
	volume: .asciiz "The volume is: "
	volume2: .asciiz " L"