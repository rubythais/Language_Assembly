# *Faça um programa que leia um 
# número escrito em binário (no máximo 8 bits) 
# e imprima seu valor em decimal.

input:
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
main:
	addi $8 $0 10
	div $10 $8 # pegando 8 bit
	
	mflo $10
	
	mfhi $26
	
	div $10 $8 # pegando 7 bit
	
	mflo $10
	
	mfhi $25
	
	div $10 $8 # pegando 6 bit
	
	mflo $10
	
	mfhi $24
	
	div $10 $8 # pegando 5 bit
	
	mflo $10
	
	mfhi $23
	
	div $10 $8 # pegando 4 bit
	
	mflo $10
	
	mfhi $22
	
	div $10 $8 # pegando 3 bit
	
	mflo $10
	
	mfhi $21
	
	div $10 $8 # pegando 2 bit
	
	mflo $19
	
	mfhi $20
	
	addi $15 $0 1
	mul $10 $26 $15
	
	sll $15 $15 1 # 2^1
	
	mul $11 $25 $15 
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^2
	
	mul $11 $24 $15
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^3
	
	mul $11 $23 $15
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^4
	
	mul $11 $22 $15
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^5
	
	mul $11 $21 $15
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^6
	
	mul $11 $20 $15
	
	add $10 $10 $11
	
	sll $15 $15 1 # 2^7              
	
	mul $11 $19 $15
	
	add $10 $10 $11
print:
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
