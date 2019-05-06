.data
	label_usuario: .asciiz "\nDigite um número: "
	label_usuario_final: .asciiz "\nResultado Final: "
.text
	#Funcao principal
	main:
		#Lendo t0 do usuario
		jal msg_usuario
		li $v0, 5
		syscall
		move $t0, $v0

		#Lendo t1 do usuario
		jal msg_usuario
		li $v0, 5
		syscall
		move $t1, $v0

		#Lendo t2 do usuario
		jal msg_usuario
		li $v0, 5
		syscall
		move $t2, $v0
		
		#Lendo t3 do usuario
		jal msg_usuario
		li $v0, 5
		syscall
		move $t3, $v0
		
		#Calculando a primeira expressao s0, e a segunda expressao s1
		add $s0, $t0, $t1
		add $s1, $t2, $t3
		sub $t4, $s0, $s1
		
		#Imprimindo o calculo
		jal msg_usuario_final
		li $v0, 1
		add $a0, $t4, $zero
		syscall
				
		#Finalizando o programas
		li $v0, 10
		syscall
	
	#Funcao para imprimir mensagem para o usuario
	msg_usuario:
		li $v0, 4
		la $a0, label_usuario
		syscall
		jr $ra
		
	#Funcao para imprimir mensagem final para o usuario
	msg_usuario_final:
		li $v0, 4
		la $a0, label_usuario_final
		syscall
		jr $ra
		
