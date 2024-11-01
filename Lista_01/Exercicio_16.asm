.text

# Faça um programa que leia um número inteiro e imprima -1 se o valor for ímpar e 0 se
# o valor for par.

main:

	addi $15 $0 -1
	# IMPRESSÃO NUMERO
	
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
	
	# INPUT
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	addi $12 $0 2
	
	div $10 $12
	
	mfhi $10
	
	mul $10 $10 $15
	# IMPRESSÃO NUMERO
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 'P'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	