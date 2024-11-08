.text
input:
	addi $2 $0 5
	syscall
	add $10 $2 $0
	
	addi $2 $0 5
	syscall
	add $11 $2 $0
	
	div $10 $11
	mfhi $20
	mflo $15
	sub $20 $0 $20
	
	srl $20 $20 31
	add $15 $15 $20
	
	div $10 $15
	mflo $12
	
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
	add $4 $0 $12
	addi $2 $0 1
	syscall