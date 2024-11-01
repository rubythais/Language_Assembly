.text

#Faça um programa que leia um número inteiro entre 0 e 999 e imprima esse número
#com 3 algarismos. Ex.: 23 gera uma saída 023. 8 gera uma saída 008.

main:
	addi $20 $0 1000
	addi $21 $0 100
	addi $22 $0 10
	
	# INICIO IMPRESSÃO	
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
	
	# FIM IMPRESSÃO
	
	
	# INPUT
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	#DIVISÕES
	div $10 $20
	
	mflo $15
	mfhi $20
	
	div $20 $21
	
	mflo $16
	mfhi $21
	
	div $21 $22
	
	mflo $17
	mfhi $18
	
	
	
	
	# INICIO IMPRESSÃO	
	add $4 $0 'R'
	addi $2 $0 11
	syscall 
	add $4 $0 'E'
	addi $2 $0 11
	syscall 
	add $4 $0 'S'
	addi $2 $0 11
	syscall
	add $4 $0 'U'
	addi $2 $0 11
	syscall  
	add $4 $0 ':'
	addi $2 $0 11
	syscall 
	add $4 $0 ' '
	addi $2 $0 11
	syscall 
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $18
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $17
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $16
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	

	# FIM IMPRESSÃO
	