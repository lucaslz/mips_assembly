.data

.text
	main:
		addi $a1, $zero, 2
		addi $a2, $zero, 4
		addi $a3, $zero, 0
		jal calculadora
		add $a3, $v0, $zero
			li $v0, 1
			add $a0, $a3, $zero
			syscall
		jal sair
	calculadora:
		bne $a3, $zero, else
			add $v0, $a1, $a2
			jr $ra
		else:
			sub $v0, $a1, $a2
			jr $ra
	sair:
		li $v0, 10
		syscall
		
		