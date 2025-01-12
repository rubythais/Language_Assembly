# Faça um programa que leia números 
# inteiros diferentes de zero e 
# encontre o menor valor digitado e 
# o maior valor digitado. O programa 
# informa o maior e o menor, um em
# cada linha, quando o usuário 
# digitar um 0.
.text
main:
	addi $18 $0 0 # Contador
	
laco:	addi $2 $0 5
	syscall
	add $7 $0 $2
	
	beq $7 $0 fim
	beq $18 $0 first
	
	slt $12 $7 $10
	# if $11 > $7 : 1
	# if menor > $7
	bne $12 $0 menor
	slt $12 $11 $7
	# if $7 > Maior : return 1
	bne $12 $0 maior
	j laco
maior:
	add $11 $0 $7
	j laco
menor:
	add $10 $0 $7
	j laco
	
first:
	add $10 $0 $7 # Menor
	add $11 $0 $7 # Maior
	addi $18 $18 1
	j laco
fim:
	add $4 $0 'm'
	add $2 $0 11
	syscall
	add $4 $0 ':'
	add $2 $0 11
	syscall
	add $4 $0 ' '
	add $2 $0 11
	syscall
	
	add $4 $0 $10
	add $2 $0 1
	syscall
	
	add $4 $0 '\n'
	add $2 $0 11
	syscall
	
	add $4 $0 'M'
	add $2 $0 11
	syscall
	add $4 $0 ':'
	add $2 $0 11
	syscall
	add $4 $0 ' '
	add $2 $0 11
	syscall
	
	add $4 $0 $11
	add $2 $0 1
	syscall