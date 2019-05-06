# Program: Hello, World!
.data
    Greeting: .asciiz "\nHello, World!\n"
.text               
	main:               
		li $v0, 4            
		la $a0, Greeting
		syscall  