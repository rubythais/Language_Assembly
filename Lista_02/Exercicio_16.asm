# *Faça um programa que leia um número 
# com 9 algarismos e informe os dois
# algarismos seguintes que devem formar 
# um CPF válido.

.text
var:
	addi $5 $0 48
	addi $7 $0 10
	addi $8 $0 1
	addi $9 $0 2
	
input:
	addi $2 $0 12
	syscall
	add $10 $0 $2
	sub $10 $10 $5
	
	addi $2 $0 12
	syscall
	add $11 $0 $2
	sub $11 $11 $5
	
	addi $2 $0 12
	syscall
	add $12 $0 $2
	sub $12 $12 $5
	
	addi $2 $0 12
	syscall
	add $13 $0 $2
	sub $13 $13 $5
	
	addi $2 $0 12
	syscall
	add $14 $0 $2
	sub $14 $14 $5
	
	addi $2 $0 12
	syscall
	add $15 $0 $2
	sub $15 $15 $5
	
	addi $2 $0 12
	syscall
	add $16 $0 $2
	sub $16 $16 $5
	
	addi $2 $0 12
	syscall
	add $17 $0 $2
	sub $17 $17 $5
	
	addi $2 $0 12
	syscall
	add $18 $0 $2
	sub $18 $18 $5
main:
	mul $20 $10 $7   # 1° bit
	sub $7 $7 $8     # 10 - 1

	mul $21 $11 $7   # 2° bit
	add $20 $20 $21  # 1 + 2
	sub $7 $7 $8     # 10 - 2

	mul $21 $12 $7   # 3° bit
	add $20 $20 $21  # 2 + 3
	sub $7 $7 $8     # 10 - 3

	mul $21 $13 $7   # 4° bit
	add $20 $20 $21  # 3 + 4
	sub $7 $7 $8     # 10 - 4

	mul $21 $14 $7   # 5° bit
	add $20 $20 $21  # 4 + 5
	sub $7 $7 $8     # 10 - 5

	mul $21 $15 $7   # 6° bit
	add $20 $20 $21  # 5 + 6
	sub $7 $7 $8     # 10 - 6

	mul $21 $16 $7   # 7° bit
	add $20 $20 $21  # 6 + 7
	sub $7 $7 $8     # 10 - 7

	mul $21 $17 $7   # 8° bit
	add $20 $20 $21  # 7 + 8
	sub $7 $7 $8     # 10 - 8

	mul $21 $18 $7   # 9° bit
	add $20 $20 $21  # 8 + 9
	sub $7 $7 $8     # 10 - 9

	# DIVISÕES
	addi $7 $0 11
	div $20 $7
	mfhi $21
	
	slt $22 $9 $21
	# if $21 > $9 return 1, 2 > $21 return 0
	beq $22 $0 primeiroMaior
	
	sub $19 $7 $21 
	j next	
primeiroMaior:
	add $19 $0 $0
	j next
next:
	
	mul $20 $10 $7   # 1° bit
	sub $7 $7 $8     # 11 - 1

	mul $21 $11 $7   # 2° bit
	add $20 $20 $21  # 1 + 2
	sub $7 $7 $8     # 11 - 2

	mul $21 $12 $7   # 3° bit
	add $20 $20 $21  # 2 + 3
	sub $7 $7 $8     # 11 - 3

	mul $21 $13 $7   # 4° bit
	add $20 $20 $21  # 3 + 4
	sub $7 $7 $8     # 11 - 4

	mul $21 $14 $7   # 5° bit
	add $20 $20 $21  # 4 + 5
	sub $7 $7 $8     # 11 - 5

	mul $21 $15 $7   # 6° bit
	add $20 $20 $21  # 5 + 6
	sub $7 $7 $8     # 11 - 6

	mul $21 $16 $7   # 7° bit
	add $20 $20 $21  # 6 + 7
	sub $7 $7 $8     # 11 - 7

	mul $21 $17 $7   # 8° bit
	add $20 $20 $21  # 7 + 8
	sub $7 $7 $8     # 11 - 8

	mul $21 $18 $7   # 9° bit
	add $20 $20 $21  # 8 + 9
	sub $7 $7 $8     # 11 - 9
	
	mul $21 $19 $7   # 10° bit
	add $20 $20 $21  # 9 + 10
	sub $7 $7 $8     # 11 - 10
	
	# DIVISÕES
	addi $7 $0 11
	div $20 $7
	mfhi $21
	
	slt $22 $9 $21
	# if $21 > $9 return 1, 2 > $21 return 0
	beq $22 $0 segundoMaior
	
	sub $20 $7 $21 
	j print
	
segundoMaior:
	add $20 $0 $0
	j print
print:
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	add $4 $0 '.'
	addi $2 $0 11
	syscall
	
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
	add $4 $0 $14
	addi $2 $0 1
	syscall
	
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
	add $4 $0 '.'
	addi $2 $0 11
	syscall
	
	add $4 $0 $16
	addi $2 $0 1
	syscall
	
	add $4 $0 $17
	addi $2 $0 1
	syscall
	
	add $4 $0 $18
	addi $2 $0 1
	syscall
	
	add $4 $0 '-'
	addi $2 $0 11
	syscall
	
	add $4 $0 $19
	addi $2 $0 1
	syscall
	
	add $4 $0 $20
	addi $2 $0 1
	syscall

	addi $2 $0 10
	syscall


