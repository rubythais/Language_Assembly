.text
input:
	addi $2 $0 5
	syscall
	add $10 $2 $0
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
main:
	div $10 $11
	
	mfhi $20
	mflo $15
	
	beq $20 $0 calculo
	addi $15 $15 1
	j calculo
calculo:
	div $10 $15
	mflo $16
print:
	add $4 $0 'Q'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 'P'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 $16
	addi $2 $0 1
	syscall
	