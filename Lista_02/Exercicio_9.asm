# Faça um programa que leia dia,  
# mês e ano e informe a data seguinte
# e a data anterior.

.text

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
inputDia:
	addi $2 $0 5
	syscall
	add $10 $0 $2
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
inputMes:
	addi $2 $0 5
	syscall
	add $11 $0 $2
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
inputAno:
	addi $2 $0 5
	syscall
	add $12 $0 $2
meses:
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
main:
	addi $5 $0 1
	add $6 $0 $5
	
	add $13 $0 $11 # mesProximo
	add $14 $0 $11 # mesAnterior
	
	add $30 $0 $12 # AnoProximo
	add $31 $0 $12 # AnoAnterior
	
	beq $11 $15 mesJan   # Janeiro
	beq $11 $17 mes31   # Março
	beq $11 $19 mes31   # Maio
	beq $11 $21 mes31   # Julho
	beq $11 $22 mes31   # Agosto
	beq $11 $24 mes31   # Outubro
	beq $11 $26 mesDez   # Dezembro
	beq $11 $18 mes30   # Abril
	beq $11 $20 mes30   # Junho
	beq $11 $23 mes30   # Setembro
	beq $11 $25 mes30   # Novembro
mes30:
	addi $8 $0 30
	
	
	beq $10 $8 otherMon
	beq $10 $5 passMon
	slt $9 $8 $10
	
	# if $10 > $8: return 0
	beq $9 $0 moreOne
mes31:
	addi $8 $0 31
	
	
	beq $10 $8 otherMon
	beq $10 $5 passMon
	slt $9 $8 $10
	
	# if $10 > $8: return 0
	beq $9 $0 moreOne
	
	
otherMon:
	add $13 $13 $5
	sub $6 $10 $6
	j print
passMon:
	sub $14 $14 $5 # mes anterior
	add $6 $8 $0

	add $5 $10 $5
	
	
	j print
	
moreOne:
	add $5 $10 $5
	sub $6 $10 $6
	j print
mesJan:

mesDez:
print:
	add $4 $0 $5
	addi $2 $0 1
	syscall
	
	add $4 $0 '/'
	addi $2 $0 11
	syscall
	
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
	add $4 $0 '/'
	addi $2 $0 11
	syscall
	
	add $4 $0 $30
	addi $2 $0 1
	syscall
	
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	add $4 $0 $6
	addi $2 $0 1
	syscall
	
	add $4 $0 '/'
	addi $2 $0 11
	syscall
	
	add $4 $0 $14
	addi $2 $0 1
	syscall
	
	add $4 $0 '/'
	addi $2 $0 11
	syscall
	
	add $4 $0 $31
	addi $2 $0 1
	syscall
	
	
	
	

