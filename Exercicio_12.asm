.text

main:
	
	
	# INÍCIO
	# IMPRESSÃO NÚMERO
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
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

	# IMPRESSÃO NÚMERO_1
	# FIM
	
	# INPUT ********************
	addi $2 $0 5
	syscall
	add $20 $0 $2
	
	# INÍCIO
	# IMPRESSÃO NÚMERO_2
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
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

	# IMPRESSÃO NÚMERO_2
	# FIM
	
	# INPUT *************
	addi $2 $0 5
	syscall
	add $21 $0 $2
	
	# INÍCIO
	# IMPRESSÃO NÚMERO_3
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 '_'
	addi $2 $0 11
	syscall
	
	add $4 $0 '3'
	addi $2 $0 11
	syscall
	
	add $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall

	# IMPRESSÃO NÚMERO_3
	# FIM
	
	addi $2 $0 5
	syscall 
	add $22 $0 $2
	
	# OPERAÇÕES
	
	# DESLOCANDO PARA 3
	sll $15 $20 1
	add $15 $15 $20
	
	# DESLOCANDO PARA 9
	sll $16 $21 3
	add $16 $16 $21
	
	# DESLOCANDO PARA 15
	sll $17 $22 4
	sub $17 $17 $22
	
	#SOMA DE PESO
	add $15 $15 $16
	add $15 $15 $17
	
	addi $20 $0 3
	addi $21 $0 9
	addi $22 $0 15
	
	add $20 $20 $21
	add $20 $20 $22
	
	div $15 $20
	
	mflo $10
	
	
	# INÍCIO
	# IMPRESSÃO NÚMERO
	
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

	# IMPRESSÃO NÚMERO_3
	# FIM
	
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	
	