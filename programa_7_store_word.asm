.data
	msg_usuario: .asciiz "\Digite um valor: "
	msg_final_usuario: .asciiz "\nValores Digitados: "
	array: .word 12
	.globl main
.text
	main:
		#Carregando array
		la $t0, array
				
		#Pegando a primeira posicao
		jal imprime_usuario
		li $v0, 5
		syscall
		move $t1, $a0
		lw $a1, 0($t0)
		add $a1, $t1, $zero
		sw $a1, 0($t0)

		#Pegando a segunda posicao
		jal imprime_usuario
		li $v0, 5
		syscall
		move $t1, $a0
		lw $a1, 4($t0)
		add $a1, $t1, $zero
		sw $a1, 4($t0)
		
		#Pegando a terceira posicao
		jal imprime_usuario
		li $v0, 5
		syscall
		move $t1, $a0
		lw $a1, 8($t0)
		add $a1, $t1, $zero
		sw $a1, 8($t0)
		
		#Encerrar o programa
		li $v0, 10
		syscall

	imprime_usuario:
		li $v0, 4
		la $a0, msg_usuario
		syscall
		jr $ra
		
		#addi $t0, $zero, 4
		#lw $t1, 0($a0)
		#add $t1, $zero, $t0
		#sw $t1, 0($a0)
		#Imprimir valor do array
		#li $v0, 1
		#add $a0, $t1, $zero
		#syscall