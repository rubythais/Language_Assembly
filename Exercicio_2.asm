.text
# Faça um programa para ler um número inteiro e imprimir o quadrado desse número.

main:
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'Ú'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	# *************
	
	
	# LENDO UM NÚMERO
	addi $2 $0 5
	syscall
	add $20 $0 $2
	

	
	#AO QUADRADRO
	mul $20 $20 $20
	
	
	add $4 $0 '^'
	addi $2 $0 11
	syscall
	
	add $4 $0 '2'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	 
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	
	add $4 $0 $20
	addi $2 $0 1
	syscall 