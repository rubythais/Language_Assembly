.text
#* Faça um programa que leia dois números inteiros e calcule e imprima a média
#aritmética simples desses dois números apresentando o resultado com um algarismo
#na casa fracionária.
#Ex.: 13 e 6 gera uma saída 9,5

main:

	addi $15 $0 2
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
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 '1'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall

	# IMPRESSÃO NÚMERO_1
	# FIM
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
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
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 '1'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall

	# IMPRESSÃO NÚMERO_2
	# FIM
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
	add $10 $11 $10
	
	div $10 $15
	
	mflo $10
	mfhi $11
	
	# INÍCIO
	# IMPRESSÃO NÚMERO
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
		
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall

	# IMPRESSÃO NÚMERO_3
	# FIM
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	
	
	