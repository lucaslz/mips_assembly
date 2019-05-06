.data
	label_info: .asciiz "\nDigite o numero: \n"
.text
	#Carregando a label para ler o primeiro numero
	li $v0, 4
	la $a0, label_info
	syscall
	
		#Lendo o primeiro numero
		li $v0, 5
		syscall
		move $t0, $v0

	#Carregando a label para ler o primeiro numero
	li $v0, 4
	la $a0, label_info
	syscall
	
		#Lendo o segundo numero
		li $v0, 5
		syscall
		move $t1, $v0
		
	#Calculando t2
	sub $t2, $t1, $t0
	
	#Printando o resultado na tela
	li $v0, 1
	add $a0, $t2, $zero
	syscall
		
	#Finalizar programas
	li $v0, 10
	syscall