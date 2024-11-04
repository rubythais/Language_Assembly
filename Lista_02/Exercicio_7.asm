# Faça um programa que leia um ano 
# e informe se esse ano é bissexto.

.text

input:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
main:
	addi $15 $0 4
	div $10 $15
	mfhi $20
	
	beq $20 $0 bixesto
	add $4 $0 'N'
	j print
	
bixesto:
	add $4 $0 'S'
print:
	addi $2 $0 11
	syscall
