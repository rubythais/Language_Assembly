.text
main:
	addi $2 $0 5
	syscall
	add $4 $0 $2
	jal troca
	add $4 $2 $0
	addi $2 $0 1
	syscall
	
fim:	addi $2 $0 10
	syscall
# ===================================================
#func: fat
#entrada: $4
#saida: $2
#reg usados: $10
troca:
	addi $8 $0 10
	
laco:	addi $2 $0 5 #lendo
	syscall
	
	sw $2 0($29) #gravando
	
	
	beq $8 1 fimtroca
	addi $29 $29 -4 #incrementando $29--
	addi $8 $8 -1
	j laco
fimtroca:
	
laco1:
	lw $4 0($29)
	addi $2 $0 1
	syscall
	
	beq $8 10 fim
	addi $29 $29 4
	addi $8 $8 1
	j laco1
	 
	
	