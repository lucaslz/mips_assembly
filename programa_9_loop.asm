.data
	nome: .asciiz "Lucas\n"
.text
	addi $t0, $zero, 10
	
	loop:
		beq $t0, $zero, exit
			subi $t0, $t0, 1
			li $v0, 4
			la $a0, nome
			syscall
	j loop
	
	exit:
		li $v0, 10
		syscall