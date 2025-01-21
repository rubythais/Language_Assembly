.text

main:

	jal Ship_Floor_Draw
fim:
	addi $2 $0 10
	syscall
	
# ========================================================
# **** Desenhar Barco****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

Ship_Floor_Draw:
	sw $31 -4($29)
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x4B2A09 # Cor
	addi $4 $0 1024
	mul $4 $4 200
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	addi $6 $0 0

Ship_Floor_Draw_For:
	beq $4 56 Railing_Ship_Draw
	beq $5 256 End_Ship_Floor_Draw_For
	sw $9 0($8)
	addi $8 $8 4
	addi $5 $5 1
	j Ship_Floor_Draw_For
	
End_Ship_Floor_Draw_For:
	addi $5 $0 0
	addi $4 $4 1
	j Ship_Floor_Draw_For
	
Railing_Ship_Draw:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x493E11 # Cor -> #493E11
	addi $4 $0 1024
	mul $4 $4 165
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	addi $6 $8 0
	
Railing_Ship_Draw_For:
	beq $4 12 Details_Ship_Draw
	beq $5 32 End_Railing_Ship_Draw_For
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	sw $9 20($8)
	
	addi $8 $8 1024
	addi $5 $5 1
	j Railing_Ship_Draw_For

End_Railing_Ship_Draw_For:
	addi $5 $0 0
	addi $4 $4 1
	addi $8 $6 48
	add $6 $0 $8
	j Railing_Ship_Draw_For
	
Details_Ship_Draw:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x1D1707 # Cor #1D1707
	addi $4 $0 1024
	mul $4 $4 197
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	addi $6 $0 0
Details_Ship_Draw_Board_For:
	beq $4 256 Details_Ship_Draw_Railing
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 50176($8)
	sw $9 51200($8)
	sw $9 52224($8)
	sw $9 53248($8)
	sw $9 54272($8)
	sw $9 55296($8)
	sw $9 56320($8)
	sw $9 57344($8)
	sw $9 58368($8)
	sw $9 59392($8)
	
	addi $8 $8 4
	addi $4 $4 1
	j Details_Ship_Draw_Board_For
	
Details_Ship_Draw_Railing:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x524817 # Cor #524817
 	addi $4 $0 1024
	mul $4 $4 166
	add $8 $8 $4 
	addi $8 $8 8
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	add $6 $8 0
	
Details_Ship_Draw_Railing_For:
	beq $4 12 Details_Ship_Draw_Railing_2th
	beq $5 12 Details_Ship_Draw_Railing_For_end
	sw $9 0($8)
	sw $9 4($8)
	addi $5 $5 1
	addi $8 $8 1024
	j Details_Ship_Draw_Railing_For
	
Details_Ship_Draw_Railing_For_end:
	addi $5 $0 0
	addi $4 $4 1
	addi $8 $6 48
	add $6 $0 $8
	j Details_Ship_Draw_Railing_For

Details_Ship_Draw_Railing_2th:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x524817 # Cor #524817
 	addi $4 $0 1024
	mul $4 $4 182
	add $8 $8 $4 
	addi $8 $8 8
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	add $6 $8 0

Details_Ship_Draw_Railing_2th_For:
	beq $4 12 Details_Ship_Draw_Base
	beq $5 15 Details_Ship_Draw_Railing_2th_For_end
	sw $9 0($8)
	sw $9 4($8)
	addi $5 $5 1
	addi $8 $8 1024
	j Details_Ship_Draw_Railing_2th_For
	
Details_Ship_Draw_Railing_2th_For_end:
	addi $5 $0 0
	addi $4 $4 1
	addi $8 $6 48
	add $6 $0 $8
	j Details_Ship_Draw_Railing_2th_For

Details_Ship_Draw_Base:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x5D531E # Cor #5D531E
 	addi $4 $0 1024
	mul $4 $4 161
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	add $6 $8 0

Details_Ship_Draw_Base_For:
	beq $4 1024 Details_Ship_Draw_Floor
	beq $4 512 End_Details_Ship_Draw_Base_For
	sw $9 0($8)
	addi $8 $8 4
	addi $4 $4 1
	j Details_Ship_Draw_Base_For
End_Details_Ship_Draw_Base_For:
	addi $9 $0 0
	ori $9 0x524719 # Cor -> #524719
	addi $4 $4 1
	j Details_Ship_Draw_Base_For


Details_Ship_Draw_Floor:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x341C03 # Cor #341C03
 	addi $4 $0 1024
	mul $4 $4 200
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	add $6 $8 $0

Details_Ship_Draw_Floor_For:
	beq $4 13 Details_Ship_Draw_End
	beq $5 46 End_Details_Ship_Draw_Floor_For
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	sw $9 36($8)
	sw $9 40($8)
	addi $8 $8 1024
	addi $5 $5 1
	j Details_Ship_Draw_Floor_For
	
	
End_Details_Ship_Draw_Floor_For:
	addi $8 $6 80
	addi $5 $0 0
	addi $6 $6 80
	addi $4 $4 1
	j Details_Ship_Draw_Floor_For

Details_Ship_Draw_End:
	lui $8 0x1001 # Memória
	addi $9 $0 0
	ori $9 0x352C0D # Cor #352C0D
 	addi $4 $0 4
	mul $4 $4 154
	add $8 $8 $4 
	addi $4 $0 0 # Contador 1
	addi $5 $0 0 # Contador 2
	add $6 $8 $0
Details_Ship_Draw_Mast_For:
	beq $4 256 end_Details_Ship_Draw_Mast
	beq $5 15 end_Details_Ship_Draw_Mast_For
	sw $9 0($8)
	addi $8 $8 4
	addi $5 $5 1
	j Details_Ship_Draw_Mast_For

end_Details_Ship_Draw_Mast_For:
	addi $5 $0 0
	addi $4 $4 1
	addi $8 $6 1024
	addi $6 $6 1024
	j Details_Ship_Draw_Mast_For

end_Details_Ship_Draw_Mast:
	lw $31 -4($29)
	jr $31
	
