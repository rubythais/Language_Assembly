.text

main:
	addi $2 $0 100
	addi $3 $0 100
	jal Wizard
fim:
	addi $2 $0 10
	syscall
	
# ========================================================
# **** Wizard ( Desenhar Mago - * NPC *) ****

# INPUT_Reg: $2 -> Posição X
	  #  $3 -> Posição Y

# OUTPUT_Reg: None

# Reg_Usados: # $2  -> Largura X do pixel
              # $3  -> Altura Y do Pixel
              # $4  -> Posição Lagura eixo X da Tela (onde inicia o Pixel)
              # $5  -> Posição Altura eixo Y da Tela (onde inicia o Pixel)
              # $9  -> Cor do Pixel
              # $15 -> Base do Início da Tela, Eixo X (referencia para aonde comeã a gerar o NPC)
              # $16 -> Base do Início da Tela, Eixo X (referencia para aonde comeã a gerar o NPC)
              # $29 -> Endereço de PILHA
              # $31 -> Return do JAL
Wizard:
	# =============================
    	# EMPILHAR
    	# =============================
	sw $31 0($29)
	addi $29 $29 -4
	
	# =============================
    	# SEGUIR DE BASE
    	# =============================
    	
	add $15 $0 $2
	add $16 $0 $3
	
	# =============================
    	# Roupa
    	# =============================
    	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 6
	addi $4 $15 -6
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 6
	addi $4 $15 -12
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	
	addi $2 $0 20
	addi $3 $0 6
	addi $4 $15 -12
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 -12
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 -12
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	# =============================
    	# ROUPA SEGUNDA PARTE
    	# =============================
	addi $2 $0 14
	addi $3 $0 6
	addi $4 $15 -6
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 -6
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 -6
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -6
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 26
	addi $3 $0 2
	addi $4 $15 -6
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	# =============================
    	# DETALHES ROUPA MANGA
    	# =============================
	
	addi $2 $0 3
	addi $3 $0 10
	addi $4 $15 -12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x4F1472
	jal Wizard_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 -12
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x4F1472
	jal Wizard_Draw_Pixel
	
	# =============================
    	# ROSTO
    	# =============================
    	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 -4
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x231725
	jal Wizard_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x231725
	jal Wizard_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 -4
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFB11DF
	jal Wizard_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFB11DF
	jal Wizard_Draw_Pixel
	
	
	# =============================
    	# GORRO
    	# =============================
    	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x75239F
	jal Wizard_Draw_Pixel

	# =============================
    	# MÃO
    	# =============================
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 -14
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xECE9D7
	jal Wizard_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 -14
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xF9F7E9
	jal Wizard_Draw_Pixel
	
	
	
	# =============================
    	# DESEMPILHAR
    	# =============================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31 

Wizard_Draw_Pixel:
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

Wizard_Draw_Pixel_For:
	beq $6 $3 End_Wizard_Draw_Pixel
	beq $5 $2 Wizard_Draw_Pixel_Mext_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Wizard_Draw_Pixel_For
	
Wizard_Draw_Pixel_Mext_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Wizard_Draw_Pixel_For

End_Wizard_Draw_Pixel:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
