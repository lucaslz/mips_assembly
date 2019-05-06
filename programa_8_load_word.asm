.data
	array: .word 12
.text
	la $a0, array
	
	#Inicializando o vetor
	lw $a1, 0($a0)
	addi $a1, $zero, 5
	sw $a1, 0($a0)

	lw $a2, 4($a0)
	addi $a2, $zero, 13
	sw $a2, 4($a0)

	lw $a3, 8($a0)
	addi $a3, $zero, 20
	sw $a3, 8($a0)
	
	#Atibuindo valores ao registrador
	lw $t2, 0($a0)
	lw $t3, 4($a0)
	lw $t4, 8($a0)