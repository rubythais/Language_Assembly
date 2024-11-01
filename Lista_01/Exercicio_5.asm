.text

# Faça um programa que leia um número inteiro entre 0 e 999 e imprima a soma dos
# algarismos desse número. Ex.: 358 gera uma saída de 16, pois 3+5+8 = 16

main:

	addi $20 $0 10
	addi $21 $0 100

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
	
	# LEITURA DE DADOS
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	# DIVISÕES
	div $10 $21
	
	mflo $15
	mfhi $22
	
	div $22 $20
	mflo $16
	mfhi $17
	
	add $20 $15 $16
	add $20 $20 $17
	
	# INICIO IMPRESSÃO	
	add $4 $0 'S'
	addi $2 $0 11
	syscall 
	add $4 $0 'O'
	addi $2 $0 11
	syscall 
	add $4 $0 'M'
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
	
	add $4 $0 $20
	addi $2 $0 1
	syscall
	# FIM IMPRESSÃO
	
	
	
	
	