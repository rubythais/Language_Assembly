# Escreva um programa para ler 
# dois números inteiros e mostrar na 
# tela o maior deles,
# bem como a diferença entre eles 
# (a diferença é sempre um valor positivo)

.text
input:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
main:
	slt $20 $10 $11
	beq $20 $0 maior
	add $15 $0 $11
	add $16 $0 $10
	j print
	

maior:
	add $15 $0 $10
	add $16 $0 $11
	
print:
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	sub $20 $15 $16
	add $4 $0 $20
	addi $2 $0 1
	syscall
	
	
	