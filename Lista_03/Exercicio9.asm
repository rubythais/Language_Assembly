# Faça um programa leia certa 
# quantidade de números e imprima o 
# maior deles e quantas vezes o maior 
# número foi lido. A quantidade de 
# números a serem lidos deve
# ser fornecido pelo usuário.

.text
main:
	addi $2 $0 5 
	syscall
	add $5 $0 $2 #quantidade de vezes
	
	addi $10 $0 0 #Maior
	addi $11 $0 0 #Contador
	addi $12 $0 0 #Contador Maior
	
laco:	beq $11 $5 fim
	addi $2 $0 5
	syscall
	add $15 $0 $2 #Var Atualizar
	
	beq $11 $0 First
	
	slt $20 $10 $15
	# if $15 > Maior return 1
	bne $20 $0 Maior
	beq $10 $15 ContMaior
	addi $11 $11 1
	j laco
ContMaior:	
	addi $12 $12 1
	addi $11 $11 1
	j laco


Maior:
	add $10 $0 $15
	addi $12 $0 1 # Resetar o Contador
	addi $11 $11 1
	j laco	
	
	
First:
	add $10 $10 $15 
	addi $11 $11 1
	#Maior = Var Atualizar
	j laco
fim:
	add $4 $0 'M'
	add $2 $0 11
	syscall
	add $4 $0 ':'
	add $2 $0 11
	syscall
	add $4 $0 ' '
	add $2 $0 11
	syscall
	
	add $4 $0 $10
	add $2 $0 1
	syscall
		
	add $4 $0 '\n'
	add $2 $0 11
	syscall
	 
	add $4 $0 'V'
	add $2 $0 11
	syscall
	add $4 $0 ':'
	add $2 $0 11
	syscall
	add $4 $0 ' '
	add $2 $0 11
	syscall
	
	add $4 $0 $12
	add $2 $0 1
	syscall
