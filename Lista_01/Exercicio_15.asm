.text
# * Faça um programa que leia um número 
# inteiro entre 0 e 9999 e imprima esse
#número com 4 caracteres, substituindo 
# o algarismo 0 por espaço.
#Exemplo.: 304 gera uma saída 3 4

main:
	#DIVISÃO
	addi $10 $0 10
	
	#SOMA
	addi $11 $0 16
	
	# INICIO ESCRITA
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'B'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	# FIM ESCRITA
	# INPUT
	addi $2 $0 5
	syscall
	add $15 $0 $2
	
	# SEPARAÇÃO DOS ALGARITMO
	div $15 $10
	mflo $15
	mfhi $18
	
	div $15 $10
	mflo $15
	mfhi $17
	
	div $15 $10
	mflo $15
	mfhi $16
	
	# FIM SEPARAÇÃO DOS ALGARITMO
	
	# R1
	sub $20 $0 $15
	
	srl $20 $20 31
	
	mul $20 $20 $11
	
	addi $21 $15 32
	
	add $20 $21 $20
	
	# R2
	sub $21 $0 $16
	
	srl $21 $21 31
	
	mul $21 $21 $11
	
	addi $22 $16 32
	
	add $21 $21 $22
	
	
	# R3
	sub $22 $0 $17
	
	srl $22 $22 31
	
	mul $22 $22 $11
	
	addi $23 $17 32
	
	add $22 $23 $22
	
	# R4
	sub $23 $0 $18
	
	srl $23 $23 31
	
	mul $23 $23 $11
	
	addi $24 $18 32
	
	add $24 $23 $24
	
	
	# INICIO ESCRITA
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'P'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 $20
	addi $2 $0 11
	syscall 
	
	add $4 $0 $21
	addi $2 $0 11
	syscall 
	
	add $4 $0 $22
	addi $2 $0 11
	syscall
	
	add $4 $0 $24
	addi $2 $0 11
	syscall
	
	
	
	