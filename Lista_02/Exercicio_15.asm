.text

# Faça um programa que leia uma data 
# (dia, mês e ano) e informe o dia da semana 
# (três primeiras letras) em que cai 
# a data. Pesquise os algoritmos para fazer 
# os cálculos.

var:	
	addi $20 $0 2 # $20 -> 2
	addi $21 $0 12 # $21 -> 12
	addi $22 $0 14 # $22 -> 14
	addi $23 $0 31 # $23 -> 31
	addi $24 $0 100 # $24 -> 100
	
printDia:
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'i'
	addi $2 $0 11
	syscall
	
	add $4 $0 'a'
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
	add $10 $2 $0

printMes:
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'e'
	addi $2 $0 11
	syscall
	
	add $4 $0 's'
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
	add $11 $2 $0
	
printAno:
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'n'
	addi $2 $0 11
	syscall
	
	add $4 $0 'o'
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
	add $12 $2 $0 # ANO

main: 
	# a = (14 - mes) // 12
	
	sub $15 $22 $11
	div $15 $21
	mflo $15 # $15 -> A
	
	sub $16 $12 $15 # $16 -> Y
	
	mul $17 $21 $15
	add $17 $17 $11
	sub $17 $17 $20 # $17-> M
	
	sll $20 $20 1
	
	div $16 $20
	mflo $18 # Y / 4
	
	div $16 $24
	mflo $19 # Y / 100
	
	mul $20 $24 $20 # 2 -> 4
	div $16 $20
	mflo $20 # Y / 400
	
	div $17 $21 # M / 12
	mflo $21
	mul $21 $21 $17 # M * 31
	
	add $16 $16 $10 # DIA + Y
	
	add $16 $16 $18 # Y + d
	
	add $16 $16 $19
	
	add $16 $16 $20
	
	add $16 $16 $21
	
	add $20 $0 7
	
	div $16 $20
	mfhi $10
varSemana:

	addi $20 $0 0  # domingo
	addi $21 $0 1  # segunda-feira
	addi $22 $0 2  # terça-feira
	addi $23 $0 3  # quarta-feira
	addi $24 $0 4  # quinta-feira
	addi $25 $0 5  # sexta-feira
	addi $26 $0 6  # sábado
	
	beq $10 $20 domingo
	beq $10 $21 segunda
	beq $10 $22 terca
	beq $10 $23 quarta
	beq $10 $24 quinta
	beq $10 $25 sexta
	beq $10 $26 sabado
	j fim
domingo:
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	
	add $4 $0 'M'
	addi $2 $0 11
	syscall
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'G'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	j fim

segunda:
	add $4 $0 'S'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'G'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim

terca:
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'C'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim

quarta:
	add $4 $0 'Q'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'R'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim

quinta:
	add $4 $0 'Q'
	addi $2 $0 11
	syscall
	
	add $4 $0 'U'
	addi $2 $0 11
	syscall
	
	add $4 $0 'I'
	addi $2 $0 11
	syscall
	
	add $4 $0 'N'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim

sexta:
	add $4 $0 'S'
	addi $2 $0 11
	syscall
	
	add $4 $0 'E'
	addi $2 $0 11
	syscall
	
	add $4 $0 'X'
	addi $2 $0 11
	syscall
	
	add $4 $0 'T'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim

sabado:
	add $4 $0 'S'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'B'
	addi $2 $0 11
	syscall
	
	add $4 $0 'A'
	addi $2 $0 11
	syscall
	
	add $4 $0 'D'
	addi $2 $0 11
	syscall
	
	add $4 $0 'O'
	addi $2 $0 11
	syscall
	j fim

fim:
	addi $2 $0 10
	syscall
