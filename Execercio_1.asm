
# Q1) Faça um programa para ler um número inteiro e imprimir o dobro desse número.
.text
main:
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
	# ****** NUMERO *****
	
	addi $10 $0 2
	addi $2 $0 5
	syscall 
	add $5 $0 $2
	mul $10 $5 $10
	

	
	add $4 $0 'D'
	addi $2 $0 11
	syscall 
	add $4 $0 'O'
	addi $2 $0 11
	syscall 
	add $4 $0 'B'
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
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	