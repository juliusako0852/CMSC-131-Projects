.text
	main:
		li $v0, 4
		la $a0, HelloWorld
		syscall
		
		li $v0, 10
		syscall
.data
	HelloWorld:	.asciiz "Hello World!"