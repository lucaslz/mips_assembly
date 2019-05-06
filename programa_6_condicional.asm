.data
	msg_usuario: .asciiz "\nDigite um valor: "
.text
	main:
		#Carregando o f = $t4
		li $t4, 0
		
		#Pegando o valor de t0 = g
		jal imprime_msg
		li $v0, 5
		syscall
		move $t0, $v0

		#Pegando o valor de t1 = h
		jal imprime_msg
		li $v0, 5
		syscall
		move $t1, $v0

		#Pegando o valor de t2 = i
		jal imprime_msg
		li $v0, 5
		syscall
		move $t2, $v0

		#Pegando o valor de t3 = j
		jal imprime_msg
		li $v0, 5
		syscall
		move $t3, $v0
		
		#Calculo condicional
		bne $t2, $t3, else
			add $t4, $t0, $t1
			jal imprime_resultado
		else:
			sub $t4, $t0, $t1
			jal imprime_resultado
						
		#imprimindo resultado
		imprime_resultado:
			li $v0, 1
			add $a0, $t4, $zero
			syscall			
			jal finalizar_programa		
		
	imprime_msg:
		li $v0, 4
		la $a0, msg_usuario
		syscall
		jr $ra
		
	finalizar_programa:
		li $v0, 10
		syscall