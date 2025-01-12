# Faça um programa que calcule e 
# mostre os 10 primeiros números múltiplos 
# de 3, considerando valores maiores que 0

.text
main:
	addi $10 $0 10
	addi $11 $0 3 # mod 3
	addi $12 $0 0 # var controle
	addi $15 $0 1 # Varivel numeros
laco:	beq $12 $10 fim
	div $15 $11
	mfhi $20
	beq $20 $0 divPor3
	addi $15 $15 1
	j laco

divPor3:
	addi $12 $12 1
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $15 $15 1
	j laco

fim:
	add $4 $0 'f'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall

	