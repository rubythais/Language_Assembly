.text

main:
	
	
	addi $15 $0 100 # -> Posição X
	addi $16 $0 100 # -> Posição X
	
	# =======================
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 -5
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 -4
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 -3
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 17	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 -2
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 19	
	addi $3 $0 1
	addi $4 $15 -3
	addi $5 $16 -1
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 -3
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	
	addi $2 $0 21	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 22	
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 21	
	addi $3 $0 4
	addi $4 $15 -4
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 21	
	addi $3 $0 2
	addi $4 $15 1
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	# =======================
	# ROSTO
	addi $2 $0 4	
	addi $3 $0 1
	add  $4 $0 $15
	add  $5 $0 $16
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	# =======================
	# OLHOS
	addi $2 $0 1	
	addi $3 $0 3
	addi $4 $15 3
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x030004
	jal Monkey_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 3
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x030004
	jal Monkey_Draw_Pixel
	# ===========================
	# ROSTO 2
	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 -1
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Draw_Pixel

	addi $2 $0 9	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xE2A162
	jal Monkey_Draw_Pixel
	# ===================== 
	# NARIZ
	addi $2 $0 4
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	
	# ====================
	
	



	

	
	
fim:
	addi $2 $0 10
	syscall

# ========================================================
# **** Desenhar Macaco ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

Monkey_Draw_Pixel:
	sw $31 -4($29)
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #Posição Y
	mul $7 $4 4 # Posição X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Monkey_Draw_Pixel_For:
	beq $6 $3 End_Monkey_Draw_Pixel
	beq $5 $2 Monkey_Draw_Pixel_Mext_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Monkey_Draw_Pixel_For
	
Monkey_Draw_Pixel_Mext_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Monkey_Draw_Pixel_For

End_Monkey_Draw_Pixel:
	lw $31 -4($29)
	jr $31
