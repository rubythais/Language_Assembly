# Faça um programa que leia números 
# inteiros e calcule a soma. O laço 
# do programa termina quando o 
# usuário digita um valor negativo. 
# Em seguida o programa imprime a
# soma dos valores digitados.

main:
	addi $10 $0 0 #Var Acumulador
	addi $6 $0 1
	
laco:	addi $2 $0 5
	syscall
	add $5 $0 $2
	
	slt $12 $5 $0
	# IF 0 > $5 return: 1
	beq $12 $6 fim
	add $10 $10 $5
	j laco
fim:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	