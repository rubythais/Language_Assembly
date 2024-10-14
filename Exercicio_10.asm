.text
#Faça um programa que leia um caractere 
#minúsculo e imprima o seu equivalente
#maiúsculo.

main:
	# INÍCIO
	# IMPRESSÃO NÚMERO
	
	add $4 $0 'C'
	addi $2 $0 11
	syscall
	
	add $4 $0 'H'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'C'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
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

	# IMPRESSÃO NÚMERO
	# FIM
	
	addi $2 $0 12
	syscall
	add $4 $0 $2
	
	addi $4 $0 -32
	addi $2 $0 11
	syscall
	
	

	
