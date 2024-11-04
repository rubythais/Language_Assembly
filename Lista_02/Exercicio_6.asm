# Faça um programa que leia a idade (
# em anos) e o tempo de serviço de um 
# trabalhador.Informe se ele pode se a
# posentar (imprima S se sim, e N se não). 
# As condições para aposentadoria são: 
# 1) ter, ao menos, 65 anos; OU 2) ter 
# trabalhado 40 anos; OU ter
# pelo menos 60 anos e mais de 35 anos.

.text

print1:
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall

input1:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
print2:
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 'S'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'B'
	addi $2 $0 11
	syscall
	
	add $4 $0 '.'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
input2:
	addi $2 $0 5
	syscall
	add $11 $0 $2

main:
# 20 -> IDADE
	addi $20 $0 65
# 21 -> TRABALHO
	addi $21 $0 40
# 22 -> IDADE
	addi $22 $0 60
# 23 -> TRABALHO
	addi $23 $0 35
	
# $20 > $10 -> 1 
# idade_min > idade return 1

	slt $15 $10 $20

# $21 > $11-> 1 
# trabalho_min > trabalho return 1

	slt $16 $11 $21
	
	beq $10 $20 cond1
	# if idade == idade_min; -> 0
	beq $15 $0 cond1
	# if idade > idade_min; -> 0
	beq $11 $21 cond1
	# if trabalho == trabalho_min; -> 0
	beq $16 $0 cond1
	# if trabalho > trabalho_min; -> 0
	
	slt $17 $10 $22
# idade > 60 -> 0
	
	beq $10 $22 cond2
	# if idade == idade_min2; -> 0
	beq $17 $0 cond2
	# if idade > idade_min;2 -> 0
	add $4 $0 $17
	addi $2 $0 1
	syscall
else:
	add $4 $0 'N'
	j print
	

cond1:
	add $4 $0 'S'
	j print
cond2:
# trabalho > 35 -> 0
	slt $18 $11 $23
	beq $18 $0 cond1
	j else

print:
	addi $2 $0 11
	syscall