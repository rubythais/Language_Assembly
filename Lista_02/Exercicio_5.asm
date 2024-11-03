# Faça um programa que receba 
# três notas (entre 0 e 100) e 
# calcule a média ponderada
# dessas notas com pesos 1, 2 e 3.
# Informe a média e se o aluno foi 
# aprovado, escreva após a média o a 
# letra A. Caso o aluno seja reprovado, 
# informe, após a média, a letra R.
# A média para aprovação é 60.

input:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
	addi $2 $0 5
	syscall
	add $12 $0 $2
	
main:
	addi $20 $0 1
	addi $21 $0 2
	addi $22 $0 3
	addi $23 $0 60

	mul $15 $10 $20
	mul $16 $11 $21
	mul $17 $12 $22
	
	add $15 $15 $16
	add $15 $15 $17
	
	sll $25 $22 1
	div $15 $25
	mflo $15
	
	slt $20 $23 $15
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	beq $20 $0 reprovado
	add $4 $0 'A'
	j print
reprovado:
	add $4 $0 'R'
print:
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall
	
	