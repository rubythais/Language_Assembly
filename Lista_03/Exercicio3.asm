# Faça um programa que implementa 
# um laço com um teste no início que 
# conte de 0 a 10 imprimindo esses 
# números, um em cada linha da saída.

.text

main:	
	addi $7 $0 11 #Var Teste
	addi $10 $0 0 #Contador
laco:	beq $10 $7 fim

	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $10 $10 1 #incremento
	
	j laco
	
fim:	add $4 $0 'f'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall
	
	
	