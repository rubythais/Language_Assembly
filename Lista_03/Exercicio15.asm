# *Escreva um programa que leia um número inteiro positivo n e em seguida imprima n
# linhas do chamado Triangulo de Floyd. Por exemplo, para n = 6, temos:
# 1
# 2 3
# 4 5 6
# 7 8 9 10
# 11 12 13 14 15
# 16 17 18 19 20 21

.text

input:	
	addi $2 $0 5
	syscall
	addi $5 $2 1
main:
	addi $7 $0 1 # Var I
	addi $8 $0 1 # Var J
	
	addi $10 $0 1 # Contador
for:
	addi $20 $7 1 # I + 1 TESTE
	ffor: 
		beq $8 $20 endffor
	# PRINT
		add $4 $0 $10
		addi $2 $0 1
		syscall
		
		addi $10 $10 1 # Contador
		
		add $4 $0 ' '
		addi $2 $0 11
		syscall
		
		
		addi $8 $8 1 #Incremento J
		j ffor
		
endffor:addi $7 $7 1 #Incremento
	addi $8 $0 1 # Reset
	# Quebra de linha
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	beq $7 $5 fim
	j for
fim:

	
