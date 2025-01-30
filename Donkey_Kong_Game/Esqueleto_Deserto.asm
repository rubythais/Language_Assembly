.text

main:
	addi $2 $0 50
    	addi $3 $0 160
    	jal Skeleton_Draw
	
	

fim:
	addi $2 $0 10
	syscall
Skeleton_Draw:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 4
	
	add $15 $2 $0
	add $16 $3 $0
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFFB11D
	jal Skeleton_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFC6CD4
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xED8F1C
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 18
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFC6CD4
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 16
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xDA65BD
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xED8F1C
	jal Skeleton_Draw_Pixel
	
	
	addi $2 $0 8	
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xED8F1C
	jal Skeleton_Draw_Pixel
	
	
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 28
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xDA65BD
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 30
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFC6CD4
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xED8F1C
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFC6CD4
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 6
	addi $4 $15 30
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xF7CE23
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xED8F1C
	jal Skeleton_Draw_Pixel
	#
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xC0B67E
	jal Skeleton_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xC1B57D
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xCFC084
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xE2D797
	jal Skeleton_Draw_Pixel
	# 
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 16
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xEE8F1C
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xC0B075
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xC2B87F
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xD0C085
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xDBCC8C
	jal Skeleton_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xE6D695
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xE5D796
	jal Skeleton_Draw_Pixel

	addi $2 $0 2	
	addi $3 $0 6
	addi $4 $15 30
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xEE8F1C
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 4	
	addi $3 $0 4
	addi $4 $15 18
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x000102
	jal Skeleton_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x505030
	jal Skeleton_Draw_Pixel
		
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xD2C487
	jal Skeleton_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 6
	addi $4 $15 24
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE4D69D
	jal Skeleton_Draw_Pixel
Skeleton_Draw_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	

Skeleton_Draw_Pixel:
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

Skeleton_Draw_Pixel_For:
	beq $6 $3 Skeleton_Draw_Pixel_END
	beq $5 $2 Skeleton_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Skeleton_Draw_Pixel_For
	
Skeleton_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Skeleton_Draw_Pixel_For

Skeleton_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
