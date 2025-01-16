.text

main:
	lui $8 0x1001
	addi $8 $8 500
	ori $9 0xA61937
	addi $11 $0 8
	
forLinha:
	beq $10 $11 fim
	sw $9 0($8)
	
	addi $8 $8 4
	addi $10 $10 1
	j forLinha

reset:
	beq $11 500 fim
	addi $11 $11 16
	addi $10 $0 0
	addi $8 $8 1020
	j forLinha
	
fim:

	
	