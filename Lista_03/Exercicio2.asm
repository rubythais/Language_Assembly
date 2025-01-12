# Faça um programa que solicite ao 
# usuário um número para ser a referência 
# e outro para ser a quantidade de valores 
# a ser impresso no caso do programa da Q1. 
# Para a mesma resposta, por exemplo, 
# o usuário forneceria a referência 3 e 
# a quantidade 10.

.text
input:
	addi $2 $0 5
	syscall
	add $6 $0 $2 #num divisor
	
	addi $2 $0 5
	syscall
	add $7 $0 $2 #quantidade
main:
	addi $10 $0 0 #var controle
	addi $8 $0 1 #var Numeros
	
laco:	beq $10 $7 fim
	div $8 $6
	mfhi $11
	beq $11 $0 Mod
	addi $8 $8 1 #incremento
	j laco
Mod:
	
	
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $10 $10 1 #incrimento Teste
	addi $8 $8 1 #incremento
	
	j laco

fim:
	add $4 $0 'f'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall


	