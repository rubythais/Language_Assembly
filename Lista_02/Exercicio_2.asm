# Faça um programa para ler um 
# número inteiro. Se o número 
# for positivo, imprima o
# dobro do número, se for negativo, 
# imprima o quadrado do número.

.text
input:
	addi $2 $0 5
	syscall
	add $20 $0 $2

	
main:
	addi $5 $0 2
	srl $21 $20 31
	beq $21 $0 positivo
	mul $20 $20 $20
	j print
	
positivo:
	mul $20 $20  $5

print:
	add $4 $0 $20
	addi $2 $0 1
	syscall	
	
	addi $2 $0 10
	syscall
	