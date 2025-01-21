.text

main:
	addi $2 $0 50
    	addi $3 $0 190
    	jal Monkey
	
	

fim:
	addi $2 $0 10
	syscall


# ========================================================
# **** Macaco ****

# INPUT_Reg: $2 -> Posição X
	#    $3 -> Posição Y	
# OUTPUT_Reg: None
# Reg_Usados:
Monkey:
	sw $31 -4($29)
	add $15 $2 $0
	add $16 $3 $0
	
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
	
	
	addi $2 $0 15	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 15	
	addi $3 $0 1
	addi $4 $15 9
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 16	
	addi $3 $0 1
	addi $4 $15 9
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	# =============================
	# PERNA ESQUERDA
	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 7	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 23
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Draw_Pixel
	
	addi $2 $0 7	
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Draw_Pixel
	# =============================
	# PERNA ESQUERDA
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 20 
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 21 
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 22 
	addi $5 $16 23
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 22 
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Draw_Pixel
	
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 21 
	addi $5 $16 25
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Draw_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x912703
	jal Monkey_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x912703
	jal Monkey_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 5
	addi $4 $15 28
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 -2
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0x8C2C0B
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
	
	# ===================== 
	# BRAÇo ESQUERDO
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 2
	addi $4 $15 3
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x7C2A04
	jal Monkey_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0x7C2A04
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Draw_Pixel
	
	# ====================
	
	# ===================== 
	# BRAÇo DIREITO
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 12
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 16
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 13
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 17
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 13
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 13
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Draw_Pixel
	
	
	# ====================
	
	lw $31 -4($29)
	jr $31


	

	
	


# ========================================================
# **** Desenhar Macaco ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

Monkey_Draw_Pixel:
	sw $31 -8($29)
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
	lw $31 -8($29)
	jr $31

Monkey_Walk:
	
	

#====================================================================
# função Timer

timer: sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 100000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
