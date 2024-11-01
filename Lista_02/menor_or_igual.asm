.text

input1:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
input2:	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
main:
	beq $11 $10 iguais
	slt $15 $10 $11
	beq $15 $0 menor11
	add $4 $0 $10
	addi $2 $0 1
	j impressao

iguais:
	add $4 $0 '='
	addi $2 $0 11
	j impressao

menor11:
	add $4 $0 $11
	addi $2 $0 1
	
impressao:
	syscall

fim:
	addi $2 $0 10
	syscall
	
	
	
	