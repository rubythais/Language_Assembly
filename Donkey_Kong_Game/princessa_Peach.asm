.text

main:
	jal background_black
	addi $2 $0 100
	addi $3 $0 100
	jal peach
	
	jal timer
	addi $2 $0 100
	addi $3 $0 100
	jal peach_Erased
	
	
	addi $2 $0 105
	addi $3 $0 100
	jal peach
	
	
	ffim:
	addi $2 $0 10
	syscall
peach:
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	
	# CABELO
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Draw_Pixel
	
	# ROSTOO
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Draw_Pixel
	
	# PRETO
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 8
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 8
	addi $4 $15 4
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 26
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	# BRINCO
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x0A8485
	jal Peach_Draw_Pixel
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 26
	addi $3 $0 4
	addi $4 $15 0
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 56
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 8
	addi $4 $15 -4
	addi $5 $16 58
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Draw_Pixel
	# ROUPA
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 4
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 12
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	# BRACO
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 54
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	
	# ROUPA 2 PARTE BAIXO
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 54
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 56
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 58
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 62
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Draw_Pixel
	# LUVAS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 22
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Draw_Pixel
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31 
peach_end:


Peach_Draw_Pixel:
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

Peach_Draw_Pixel_For:
	beq $6 $3 Peach_Draw_Pixel_END
	beq $5 $2 Peach_Draw_Pixel_Next_Line
	sw $9 0($8)
	
	
	addi $5 $5 1
	addi $8 $8 4
	j Peach_Draw_Pixel_For
	
Peach_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Peach_Draw_Pixel_For

Peach_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
# =============================================
peach_Erased:
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	
	# CABELO
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xFBD700
	jal Peach_Erased_Draw_Pixel
	
	# ROSTOO
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xE3BA97
	jal Peach_Erased_Draw_Pixel
	
	# PRETO
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 8
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 8
	addi $4 $15 4
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 26
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	# BRINCO
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x0A8485
	jal Peach_Erased_Draw_Pixel
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 26
	addi $3 $0 4
	addi $4 $15 0
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 56
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 8
	addi $4 $15 -4
	addi $5 $16 58
	addi $9 $0 0
	ori $9 0x00000
	jal Peach_Erased_Draw_Pixel
	# ROUPA
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 4
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 12
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	# BRACO
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 54
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	
	# ROUPA 2 PARTE BAIXO
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 50
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 54
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 56
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 58
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 62
	addi $9 $0 0
	ori $9 0xBB285E
	jal Peach_Erased_Draw_Pixel
	# LUVAS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 22
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xc9c9c9
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xDCB399
	jal Peach_Erased_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xFD6AB9
	jal Peach_Erased_Draw_Pixel
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31 
peach_Erased_end:


Peach_Erased_Draw_Pixel:
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

Peach_Erased_Draw_Pixel_For:
	beq $6 $3 Peach_Erased_Draw_Pixel_END
	beq $5 $2 Peach_Erased_Draw_Pixel_Next_Line
	lw $9 262144($8)
	sw $9 0($8)
	
	
	addi $5 $5 1
	addi $8 $8 4
	j Peach_Erased_Draw_Pixel_For
	
Peach_Erased_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Peach_Erased_Draw_Pixel_For

Peach_Erased_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
background_black:
	# =====================
	# EMPILHAR
	# =====================
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001
	addi $9 $0 0
	ori $9 0xFFFFFF
	addi $7 $0 0
background_black_for:
	beq $7 262144 background_black_end
	sw $9 0($8)
	sw $9 262144($8)
	
	addi $8 $8 4
	addi $7 $7 1
	j background_black_for
	
background_black_end:	
	# =====================
	# DESEMPILHAR
	# =====================
	addi $29 $29 4
	lw $31 0($29)
	
timer: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 100000
forT:  	beq $16, $0, fimT
       	nop
       	nop
       	addi $16, $16, -1      
       	j forT                  
fimT:  	addi $29, $29, 4                                                    
       	lw $16, 0($29)          
       	jr $31
