# Faça um programa que leia números 
# inteiros diferentes de zero e 
# calcule a soma dosvalores positivos. 
# O laço do programa termina quando o 
#usuário digita um valor zero.
# Em seguida o programa imprime a 
# soma dos valores positivos digitados.

.text
main:
	addi $10 $0 0 #Somador
	
laco:	addi $2 $0 5
	syscall
	add $6 $0 $2
	
	
	beq $6 $0 fim # While n != 0
	slt $12 $6 $0 
	#if 0 > $6 return: 1
	bne $12 $0 laco
	 
	add $10 $10 $6
	j laco
fim:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall