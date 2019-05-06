.data
	text: .asciiz "\n Entre os numeros: \n"
.text
	main:
		#Impimindo a saida do texto
		li $v0, 4
		la $a0, text
		syscall
		
		#Pegando o $t0 do usuario
		li $v0, 5
		syscall
		move $t0, $v0
		
		#Pegando o $t1 do usuario
		li $v0, 5
		syscall
		move $t1, $v0
		
		#Somando t0 e t1
		add $t2, $t0, $t1
		
		#Pintrando t2 na tela
		li $v0, 1
		add $a0, $t2, $zero
		syscall
		
		#Finalizando programa
		li $v0, 10
		syscall	