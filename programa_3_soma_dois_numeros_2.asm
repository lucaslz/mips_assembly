.data
	text: .asciiz "\n Entre com um numero: \n"
	saida: .asciiz "\n O numero é: \n"
.text
	main:
		#Impimindo a saida do texto
		li $v0, 4
		la $a0, text
		syscall
		
		#Pegando entrada do usuario
		li $v0, 5
		syscall
		
		#Movendo a entrada do usuario para o registrador
		move $t0, $v0
		
		#Imprimindo o numero na saida
		li $v0, 1
		move $a0, $t0
		syscall
		
		#Finalizando programa
		li $v0, 10
		syscall