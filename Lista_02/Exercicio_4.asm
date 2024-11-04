# Faça um programa que leia dois 
# números e escreva a relação de grandeza 
# entre eles.
# Ex. 345 e 23 gera a saída 345>23. 
# Ex.: 24 e 38 gera a saída 24<38. 
# Ex.: 12 e 12 gera a
# saída 12=12
.text
input:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
main:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	beq $11 $10 iguais
	slt $15 $10 $11
	# if $10 < $11: True
	# if $11 < $10: False
	beq $15 $0 _$11menor
	add $4 $0 '<'
	j print
	
iguais:
	add $4 $0 '='
	j print
	
_$11menor:
	add $4 $0 '>'
	
print:
	addi $2 $0 11
	syscall
	
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
	
	