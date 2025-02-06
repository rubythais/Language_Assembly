.text

main:
	addi $2 $0 40
    	addi $3 $0 183
    	jal Mario_Draw_LEFT
    	
    	addi $2 $0 80
    	addi $3 $0 183
    	jal Mario_Draw_RIGHT
	
	

fim:
	addi $2 $0 10
	syscall
	
Mario_Draw_LEFT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
Mario_Draw_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	
Mario_Draw_RIGHT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 -6
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 14
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
Mario_Draw_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31


Mario_Draw_Pixel:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #Posição Y
	mul $7 $4 4 # Posição X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Mario_Draw_Pixel_For:
	beq $6 $3 Mario_Draw_Pixel_END
	beq $5 $2 Mario_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Draw_Pixel_For
	
Mario_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Mario_Draw_Pixel_For

Mario_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31

# =========================================

Mario_Draw_Erased_LEFT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Erased_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Erased_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
Mario_Draw_Erased_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	
Mario_Draw_Erased_RIGHT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 -6
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 14
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Erased_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Erased_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Erased_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Erased_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Erased_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Erased_Pixel
	
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Erased_Pixel
Mario_Draw_Erased_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31





# ====================================================
Mario_Draw_Erased_Pixel:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #Posição Y
	mul $7 $4 4 # Posição X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Mario_Draw_Erased_Pixel_For:
	beq $6 $3 Mario_Draw_Erased_Pixel_END
	beq $5 $2 Mario_Draw_Erased_Pixel_Next_Line
	lw $9 262144($8)
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Draw_Erased_Pixel_For
	
Mario_Draw_Erased_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Mario_Draw_Erased_Pixel_For

Mario_Draw_Erased_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
