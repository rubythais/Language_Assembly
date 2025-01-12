# Faça um programa para calcular o 
# fatorial de um número

.text
input:
	addi $2 $0 5
	syscall
	add $5 $0 $2
	
main:
	add $6 $5 $0
for:	addi $6 $6 -1
	mul $5 $5 $6
	beq $6 1 fim
	j for
fim:
	add $4 $0 $5
	addi $2 $0 1
	syscall
	
	
	
	
	