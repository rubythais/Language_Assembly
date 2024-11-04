# Faça um programa para 
# ler dois números e informe qual 
# deles é o maior.

.text
input:
	addi $2 $0 5
	syscall
	add $10 $2 $0
	
	addi $2 $0 5
	syscall
	add $11 $2 $0

main:
	slt $15 $10 $11 
	# if $10 < $11 == True -> 
	# return 1 else: return 0
	beq $15 $0 maior
	add $20 $0 $11
	j print
maior:
	add $20 $0 $10
	
print:
	add $4 $0 $20
	addi $2 $0 1
	syscall

	addi $2 $0 10
	syscall
	
	
	
	
	