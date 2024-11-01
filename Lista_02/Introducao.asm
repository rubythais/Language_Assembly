.text

main:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	beq $10 $11 iguais
	add $4 $0 '%'
	addi $2 $0 11
	syscall
	j impressao
	
iguais: 
	add $4 $0 '='
	addi $2 $0 11
	syscall

impressao:
	
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	addi $2 $0 10
	syscall
