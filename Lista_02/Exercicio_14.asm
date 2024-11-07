# Faça um programa que leia 
# dois números inteiros (entre 0 e 9999) 
# e imprima esses números, um após 
# o outro, separados por vírgula, 
# cada um com 4 caracteres, sendo
# cada número alinhado à direita.

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
	
	addi $2 $0 5
	syscall
	add $10 $0 $2
	add $9 $0 $2
	
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
	
	addi $2 $0 5
	syscall
	add $11 $0 $2
main:
	addi $7 $0 10
	
	div $10 $7
	mfhi $24
	mflo $20
	
	div $20 $7
	mfhi $23
	mflo $20
	
	div $20 $7
	mfhi $22
	mflo $21
	
	beq $21 $0 sep1
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	j main2
sep1:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $22 $0 sep2
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	j main2
sep2:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $23 $0 sep3
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	j main2
sep3:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	beq $24 $0 sep3
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	j main2
sep4:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 ','
	addi $2 $0 11
	syscall
	j main2
main2:
	
	

	
	
	