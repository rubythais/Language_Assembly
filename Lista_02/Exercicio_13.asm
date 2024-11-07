.text
# Faça um programa que leia 
# um número inteiro (entre 0 e 9999) 
# e imprima esse número com 4 
# caracteres, sendo o número 
# alinhado à direita.

input:
	addi $7 $0 10
	
	addi $2 $0 5
	syscall
	add $10 $0 $2
	add $9 $0 $2
		
main:
	div $10 $7
	mfhi $14
	mflo $10
	div $10 $7
	mfhi $13
	mflo $10
	div $10 $7
	mfhi $12
	mflo $11
	
	beq $11 $0 esp
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
esp:
	add $4 $0 ' '
	addi $2 $0 11
	syscall 
	
	add $4 $0 $9
	addi $2 $0 1
	syscall
fim:
	addi $2 $0 10
	syscall