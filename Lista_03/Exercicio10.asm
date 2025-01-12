# Faça um programa para calcular 
# o MDC de dois números fornecidos 
# pelo usuário, usando o algoritmo de 
# Euclides (busque na Internet o 
# funcionamento desse algoritmo).

.text
print:
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 '1'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	# INPUT1
	addi $2 $0 5
	syscall
	add $5 $0 $2
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 '2'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	# INPUT2
	addi $2 $0 5
	syscall
	add $4 $0 $2
	
	
main:
	jal maior
	add $10 $0 $2
	add $11 $0 $3
	
laco:	div $10 $11
	mfhi $8 # Mod
	add $10 $0 $11
	add $11 $0 $8
	beq $11 $0 fim
	j laco
	
fim:	add $4 $0 $10
	addi $2 $0 1
	syscall
	addi $2 $0 10
	syscall

# ===========================================================
# funcao: maior
# entradas: $4 $5 
# saida: $2 (maior numero); $3 (menor num)
# reg usados:  $20
maior:	
	slt $20 $4 $5
	# if $5 > $4: return 1
	beq $20 $0 outMaior
	add $2 $0 $5
	add $3 $0 $4
	jr $31
outMaior:
	add $2 $0 $4
	add $3 $0 $5
	jr $31

	