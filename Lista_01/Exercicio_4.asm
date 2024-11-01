.text
#Faça um programa para ler duas notas de um aluno do IFRN em um curso semestral.
#Esse programa deverá apresentar a média desse aluno, após as duas provas.

main:

	addi $5 $0 2
	
	# INICIO ESCRITA
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
	
	# FIM ESCRITA
	
	#LEITURA DE DADOS
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
	
	# INICIO ESCRITA
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
	
	# FIM ESCRITA
	
	#LEITURA DE DADOS
	addi $2 $0 5
	syscall
	add $11 $0 $2
	
	# MEDIA
	add $20 $11 $10
	
	div $20 $5
	# FIM MEDIA
	
	# MOVER
	mflo $20
	
	# IMPRIMIR
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 $20
	addi $2 $0 1
	syscall
	
	