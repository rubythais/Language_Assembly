# Faça um programa que leia 10 valores 
# e imprima a sua soma.

.text

main:
	addi $7 $0 10 #Var Controle
	addi $8 $0 0 #Contador
	addi $10 $0 0
laco: 	beq $8 $7 fim
	addi $2 $0 5
	syscall
	add $10 $10 $2
	
	addi $8 $8 1
	j laco
	
fim:
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	
	