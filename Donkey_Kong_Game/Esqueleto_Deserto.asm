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
	
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xA67943
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
