.text

input:
	addi $8  $0 10
	addi $9 $0 48
	# Meses
	addi $15 $0 1
	addi $16 $0 2
	addi $17 $0 3
	addi $18 $0 4
	addi $19 $0 5
	addi $20 $0 6
	addi $21 $0 7
	addi $22 $0 8
	addi $23 $0 9
	addi $24 $0 10
	addi $25 $0 11
	addi $26 $0 12

#  INICIO LEITURA DIAS
	addi $2 $0 12
	syscall
	add $10 $0 $2
	
	sub $10 $10 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	mul $10 $10 $8
	# PEGAR O PRIMEIRO NUMERO E TRANSFORMAR EM DECIMAL
	
	addi $2 $0 12
	syscall
	add $11 $0 $2
	
	sub $11 $11 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	add $10 $10 $11
	# PEGAR O SEGUNDO NUMERO E SOMAR COM O PRIMEIRO
	
#  fIM LEITURA DIAS

#LEITURA CARACTER
	addi $2 $0 12
	syscall
	add $30 $0 $2
#LEITURA CARACTER

#  INICIO LEITURA MESES
	addi $2 $0 12
	syscall
	add $11 $0 $2
	
	sub $11 $11 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	mul $11 $11 $8
	# PEGAR O PRIMEIRO NUMERO E TRANSFORMAR EM DECIMAL
	
	addi $2 $0 12
	syscall
	add $12 $0 $2
	
	sub $12 $12 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	add $11 $11 $12
	# PEGAR O SEGUNDO NUMERO E SOMAR COM O PRIMEIRO
	
#  fIM LEITURA Meses

#LEITURA CARACTER
	addi $2 $0 12
	syscall
	add $30 $0 $2
#LEITURA CARACTER

#  INICIO LEITURA ANOS
	addi $2 $0 12
	syscall
	add $12 $0 $2
	
	sub $12 $12 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	mul $12 $12 $8
	# PEGAR O PRIMEIRO NUMERO E TRANSFORMAR EM DECIMAL
	
	addi $2 $0 12
	syscall
	add $13 $0 $2
	
	sub $13 $13 $9
	# PEGAR O ASCII E TRANSFORMAR PARA INTEIRO
	add $12 $13 $12
	# PEGAR O SEGUNDO NUMERO E SOMAR COM O PRIMEIRO
	
#  fIM LEITURA Anos

main:
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	beq $11 $16 fevereiro
	beq $11 $15 meses31
	beq $11 $17 meses31
	beq $11 $19 meses31
	beq $11 $21 meses31
	beq $11 $22 meses31
	beq $11 $24 meses31
	beq $11 $26 meses31
	beq $11 $18 meses30
	beq $11 $20 meses30
	beq $11 $23 meses30
	beq $11 $25 meses30
	j invalido
	
fevereiro:
	addi $8 $0 28
	beq $10 $8 valido
	slt $9 $8 $10
	beq $9 $0 valido
	j invalido
	
	
meses31:
	addi $8 $0 31
	beq $10 $8 valido
	slt $9 $8 $10
	beq $9 $0 valido
	j invalido

meses30:
	addi $8 $0 30
	beq $10 $8 valido
	slt $9 $8 $10
	beq $9 $0 valido
	j invalido

valido:
	add $4 $0 'V'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall
invalido:
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	addi $2 $0 10
	syscall