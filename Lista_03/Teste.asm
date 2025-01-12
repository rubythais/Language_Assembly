.text
main:
	addi $8 $0 0 # i
	addi $9 $0 0 # j
	addi $11 $0 0 # Contador
	addi $25 $0 3
laco:

	div $11 $25
	mfhi $22
	beq $22 0 Jump
	

for: 	
	addi $8 $8 1       # Incremento I++
	addi $11 $11 1     # Contador de grupos de tabuadas

ffor:	
	add $4 $0 $8       # $4 << $8 (primeiro número da tabuada)
	jal print1         # Chamada de funcão para exibir o número
	
	jal printcomp      # Exibe o símbolo "x"
	
	addi $9 $9 1       # Incremento J++
	add $4 $0 $9       # $4 << $9 (segundo número da tabuada)
	jal print1         # Exibe o segundo número
	
	add $4 $0 ' '      # Exibe espaço
	addi $2 $0 11
	syscall
	
	add $4 $0 '='      # Exibe "="
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '      # Exibe espaço
	addi $2 $0 11
	syscall
	
	mul $10 $9 $8      # Calcula $8 * $9
	add $4 $0 $10      # $4 << resultado
	jal print1         # Exibe o resultado
	
	jal spacer         # Adiciona espaçamento entre colunas    # Gera quebra de linha para alinhar a matriz
	addi $11 $11 1
	beq $9 10 midfor   # Se J = 10, completa a tabuada atual
	
	j ffor             # Volta para continuar a tabuada
	
midfor:
	add $4 $0 '\n'     # Quebra de linha após uma tabuada completa
	addi $2 $0 11
	syscall
	
	addi $9 $0 0       # Reseta J
	div $15 $11 3      # Verifica agrupamento 3x3
	mfhi $15
	beq $8 10 fim      # Finaliza após a última tabuada
	
	j laco

fim: 
	addi $2 $0 10
	syscall

# =============================================
# Função print1
# Entrada: $4
# Saída: ---
# Registradores usados: $20, $21, $22
print1:
	addi $20 $0 10
	div $4 $20         # Divide número para separar dígitos
	
	mflo $21           # Primeiro dígito (dezena)
	mfhi $22           # Segundo dígito (unidade)
	
	add $4 $0 $21
	addi $2 $0 1
	syscall            # Exibe primeiro dígito
	
	add $4 $0 $22
	addi $2 $0 1
	syscall            # Exibe segundo dígito
	
	jr $31
	
# Função printcomp
# Exibe "x" com espaçamento
printcomp:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	
	add $4 $0 'x'
	addi $2 $0 11
	syscall
	
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31

# Função spacer
# Adiciona espaçamento entre colunas
spacer:
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	add $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31

# Função quebraLinha
# Gera quebra de linha após cada conjunto 3x3
Jump:
	add $4 $0 '\n'
	addi $2 $0 11
	syscall
	jr $31
