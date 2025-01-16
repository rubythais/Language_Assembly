.text

main:
# ================================================================
# **** Desenhar Céu ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:  
Sky_Draw:
	lui $8 0x1001
	ori $9 0x158CC6 # Cor -> #158CC6
	addi $10 $0 0 # Contador
	
Skye_First_For:
	beq $10 256 end_Skye_First_For
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 3072($8)
	addi $8 $8 4
	addi $10 $10 1
	j Skye_First_For
	
end_Skye_First_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x1B96D2 # Cor -> #1B96D2
	addi $7 $0 1024
	mul $7 $7 4
	lui $8 0x1001
	add $8 $8 $7
	j Skye_2th_For
	
Skye_2th_For:
	beq $10 256 end_Skye_2th_For
	sw $9 0($8)
	sw $9 1024($8)
	
	addi $8 $8 4
	addi $10 $10 1
	j Skye_2th_For
	 
end_Skye_2th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x23A0E0 # Cor -> #23A0E0
	addi $7 $0 1024
	mul $7 $7 6
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_3th_For

Skye_3th_For:
	beq $10 256 end_Skye_3th_For
	sw $9 0($8)
	sw $9 1024($8)
	
	addi $8 $8 4
	addi $10 $10 1
	j Skye_3th_For

end_Skye_3th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x2DABE8 # Cor -> #2DABE8
	addi $7 $0 1024
	mul $7 $7 8
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_4th_For

Skye_4th_For:
	beq $10 256 end_Skye_4th_For
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_4th_For

end_Skye_4th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x2DA9E7 # Cor -> #2DA9E7
	addi $7 $0 1024
	mul $7 $7 11
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_5th_For

Skye_5th_For:
	beq $10 256 end_Skye_5th_For
	sw $9 0($8)

	addi $10 $10 1
	addi $8 $8 4
	j Skye_5th_For

end_Skye_5th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x39B4F0 # Cor -> #39B4F0
	addi $7 $0 1024
	mul $7 $7 12
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_6th_For
	
Skye_6th_For:
	beq $10 256 end_Skye_6th_For
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 3072($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_6th_For

end_Skye_6th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x4BBDF9 # Cor -> #4BBDF9
	addi $7 $0 1024
	mul $7 $7 16
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_7th_For

Skye_7th_For:
	beq $10 256 end_Skye_7th_For
	sw $9 0($8)
	sw $9 1024($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_7th_For

end_Skye_7th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x5AC4F8 # Cor -> #5AC4F8
	addi $7 $0 1024
	mul $7 $7 18
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_8th_For

Skye_8th_For:
	beq $10 256 end_Skye_8th_For
	sw $9 0($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_8th_For

end_Skye_8th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x5BC5F9 # Cor -> #5BC5F9
	addi $7 $0 1024
	mul $7 $7 19
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_9th_For

Skye_9th_For:
	beq $10 256 end_Skye_9th_For
	sw $9 0($8)
	sw $9 1024($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_9th_For

end_Skye_9th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x81D2FA # Cor -> #81D2FA
	addi $7 $0 1024
	mul $7 $7 21
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_10th_For
	
Skye_10th_For:
	beq $10 256 end_Skye_10th_For
	sw $9 0($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_10th_For

end_Skye_10th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x74C9F2 # Cor -> #74C9F2
	addi $7 $0 1024
	mul $7 $7 22
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_11th_For
	
Skye_11th_For:
	beq $10 256 end_Skye_11th_For
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 3072($8)
	sw $9 4096($8)
	sw $9 5120($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_11th_For

end_Skye_11th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x75C7EF # Cor -> #75C7EF
	addi $7 $0 1024
	mul $7 $7 28
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_12th_For
	
Skye_12th_For:
	beq $10 256 end_Skye_12th_For
	sw $9 0($8)
	addi $10 $10 1
	addi $8 $8 4
	j Skye_12th_For

end_Skye_12th_For:
	addi $10 $0 0 # Reset Contador
	addi $9 $0 0
	ori $9 0x7DCBF1 # Cor -> #7DCBF1
	addi $7 $0 1024
	mul $7 $7 28
	lui $8 0x1001
	add $8 $8 $7
	addi $11 $0 0 # Segundo Contador
	j Skye_13th_For
	



	
