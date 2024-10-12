.text
#Faça um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de trás para
#frente. Exemplo: 384 gera uma saída 483

main:
	addi $10 $0 100
	addi $11 $0 10
	
	# INÍCIO
	# IMPRESSÃO NÚMERO
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
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

	# IMPRESSÃO NÚMERO
	# FIM
	
	
	# INPUT
	addi $2 $0 5
	syscall
	add $15 $0 $2
	
	# FIM INPUT
	
	div $15 $10
	mflo $15
	mfhi $16
	
	div $16 $11
	mflo $16
	mfhi $17
	
	# INICIO
	# IMPRESSÃO NUM_INVER.
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'V'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 '.'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	# IMPRESSÃO NUM_INVER.
	# FIM
	
	add $4 $0 $17
	addi $2 $0 1
	syscall
	
	add $4 $0 $16
	addi $2 $0 1
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	