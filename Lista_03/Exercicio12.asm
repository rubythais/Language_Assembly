# Faça um programa que imprima os 
# n primeiros números da série de 
# Fibonacci, sendo n fornecido pelo 
# usuário.

.text

input:
	addi $2 $0 5
	syscall
	add $5 $0 $2 #Termo
	
	addi $7 $0 1
	addi $8 $0 2  
	

	beq $5 $7 termo1
	beq $5 $8 termo2
	
	addi $7 $0 0
	addi $8 $0 1
	addi $10 $0 2 #cont
	
laco:	add $9 $7 $8
	add $7 $0 $8
	add $8 $9 $0
	addi $10 $10 1
	beq $10 $5 print
	j laco
	
	
	
termo1:
	add $4 $0 $0
	addi $2 $0 1
	syscall
	j fim
termo2:
	addi $4 $0 1
	addi $2 $0 1
	syscall
	j fim
	
print:	add $4 $0 $9
	addi $2 $0 1
	syscall

	j fim
	
fim : 	addi $2 $0 10
	syscall