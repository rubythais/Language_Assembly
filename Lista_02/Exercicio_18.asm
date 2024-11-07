# *Faça um programa que receba 
# um inteiro (entre 0 e 999) 
# e imprima o binário
# correspondente.
print_num:
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
input:	
	addi $2 $0 5
	syscall
	add $20 $0 $2
	
main:
	addi $10 $0 512   # 2^9
	addi $11 $0 256   # 2^8
	addi $12 $0 128   # 2^7
	addi $13 $0 64    # 2^6
	addi $14 $0 32    # 2^5
	addi $15 $0 16    # 2^4
	addi $16 $0 8     # 2^3
	addi $17 $0 4     # 2^2
	addi $18 $0 2     # 2^1
	addi $19 $0 1     # 2^0

	slt $8 $20 $10
	# if $10 > $20 return 0

	beq $20 $10 pot9
	beq $8 $0 pot9
	addi $10 $0 0
_pot8:
	slt $8 $20 $11
	# if $10 > $20 return 0
	beq $20 $11 pot8
	beq $8 $0 pot8
	addi $11 $0 0
	
_pot7:
	slt $8 $20 $12
	# if $10 > $20 return 0
	beq $20 $12 pot7
	beq $8 $0 pot7
	addi $12 $0 0

_pot6:
	slt $8 $20 $13
	# if $10 > $20 return 0
	beq $20 $13 pot6
	beq $8 $0 pot6
	addi $13 $0 0

_pot5:
	slt $8 $20 $14
	# if $10 > $20 return 0
	beq $20 $14 pot5
	beq $8 $0 pot5
	addi $14 $0 0

_pot4:
	slt $8 $20 $15
	# if $10 > $20 return 0
	beq $20 $15 pot4
	beq $8 $0 pot4
	addi $15 $0 0

_pot3:
	slt $8 $20 $16
	# if $10 > $20 return 0
	beq $20 $16 pot3
	beq $8 $0 pot3
	addi $16 $0 0

_pot2:
	slt $8 $20 $17
	# if $10 > $20 return 0
	beq $20 $17 pot2
	beq $8 $0 pot2
	addi $17 $0 0

_pot1:
	slt $8 $20 $18
	# if $10 > $20 return 0
	beq $20 $18 pot1
	beq $8 $0 pot1
	addi $18 $0 0

_pot0:
	slt $8 $20 $19
	# if $10 > $20 return 0
	beq $20 $19 pot0
	beq $8 $0 pot0
	addi $19 $0 0
    j print



pot9:
	sub $20 $20 $10
	addi $10 $0 1
	
	j _pot8
pot8:
	sub $20 $20 $11
	addi $11 $0 1
	
	j _pot7
	
pot7:
	sub $20 $20 $12
	addi $12 $0 1
	j _pot6

pot6:
	sub $20 $20 $13
	addi $13 $0 1
	j _pot5

pot5:
	sub $20 $20 $14
	addi $14 $0 1
	j _pot4

pot4:
	sub $20 $20 $15
	addi $15 $0 1
	j _pot3

pot3:
	sub $20 $20 $16
	addi $16 $0 1
	j _pot2

pot2:
	sub $20 $20 $17
	addi $17 $0 1
	j _pot1

pot1:
    sub $20 $20 $18
	addi $18 $0 1
	j _pot0

pot0:
    sub $20 $20 $19
	addi $19 $0 1
	j print


print:
		add $4 $0 $10
	addi $2 $0 1
	syscall
	
	add $4 $0 $11
	addi $2 $0 1
	syscall
	
	add $4 $0 $12
	addi $2 $0 1
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
	
	add $4 $0 $16
	addi $2 $0 1
	syscall
	
	add $4 $0 $17
	addi $2 $0 1
	syscall
	
	add $4 $0 $18
	addi $2 $0 1
	syscall
	
	add $4 $0 $19
	addi $2 $0 1
	syscall
