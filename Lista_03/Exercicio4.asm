# Faça um programa que leia do 
# usuário um intervalo fechado 
# e imprima os números pares 
# desse intervalo (inclusive os limites).

.text
input:	
	addi $2 $0 5
	syscall
	add $7 $0 $2 #limite 1
	
	addi $2 $0 5
	syscall
	add $8 $0 $2 #limite 2

main:	
	sub $9 $8 $7
	addi $9 $9 1
	
	
	addi $10 $0 2 #Num Par
	
	addi $11 $0 0
	
laco: 	beq $11 $9 fim
	div $7 $10
	mfhi $20
	beq $20 $0 NumPar
	
	addi $7 $7 1
	
	addi $11 $11 1 #Incremento
	j laco
NumPar:
	add $4 $0 $7
	addi $2 $0 1
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $7 $7 1
	
	addi $11 $11 1 #Incremento
	
	j laco
	
fim: 	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 'f'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall
	
	
	 
	