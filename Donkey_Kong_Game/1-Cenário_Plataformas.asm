.text

base:
	lui $8 0x1001
cenario1:
	 
	 
	 	
	 addi $2 $0 3
	 addi $3 $0 180
	 addi $4 $0 214
	 jal Ladder_Draw
	 
	 addi $2 $0 1
	 addi $3 $0 88
	 addi $4 $0 206
	 jal Ladder_Draw
	 
	 addi $2 $0 2
	 addi $3 $0 88
	 addi $4 $0 224
	 jal Ladder_Draw
	 
	 addi $2 $0 4
	 addi $3 $0 136
	 addi $4 $0 178
	 jal Ladder_Draw
	 
	 addi $2 $0 6
	 addi $3 $0 80
	 addi $4 $0 138
	 jal Ladder_Draw
	 
	 addi $2 $0 3
	 addi $3 $0 210
	 addi $4 $0 122
	 jal Ladder_Draw
	 
	 addi $2 $0 2
	 addi $3 $0 190
	 addi $4 $0 99
	 jal Ladder_Draw
	 
	 jal Platform
	 
		
fim:
	addi $2 $0 10
	syscall

# ================================================================
# Plataforma 1

Platform:


# ======= Empilhar ========
	sw $31 -4($29)
	
	addi $4 $0 27 # Posicao da altura
	addi $2 $0 50	# Tamanho
	addi $3 $0 104 # Posicao Largura
	jal Platform_Draw
	
	# Plataforma 2
	addi $4 $0 40 # Posicao da altura
	addi $2 $0 25 # Tamanho
	addi $3 $0 80 # Posicao Largura
	jal Platform_Draw
	
	# Plataforma 3
	addi $4 $0 64 # Posicao da altura
	addi $2 $0 80	# Tamanho
	addi $3 $0 25 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 65 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 104 # Posição Largura
	jal Platform_Draw
	
	
	addi $4 $0 66 # Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 124 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 67 # Posição da altura
	addi $2 $0 35	# Tamanho
	addi $3 $0 149 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 68 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 184 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 68 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 184 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 70 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 204 # Posição Largura
	jal Platform_Draw
	
	
	# Plataforma 4
	addi $4 $0 90 # Posição da altura
	addi $2 $0 15	# Tamanho
	addi $3 $0 220 # Posição Largura
	jal Platform_Draw
	
	
	
	addi $4 $0 91 # Posição da altura
	addi $2 $0 40	# Tamanho
	addi $3 $0 180 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 93 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 170 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 95 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 160 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 95 # Posição da altura
	addi $2 $0 5	# Tamanho
	addi $3 $0 155 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 97 # Posição da altura
	addi $2 $0 5	# Tamanho
	addi $3 $0 141 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 99 # Posição da altura
	addi $2 $0 5	# Tamanho
	addi $3 $0 130 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 102 # Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 96 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 105 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 64 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 106 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 44 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 107 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 24 # Posição Largura
	jal Platform_Draw
	
	# Plataforma 5
	addi $4 $0 126 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 18 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 127 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 18 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 127 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 28 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 128 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 48 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 129 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 58 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 130 # Posição da altura
	addi $2 $0 40	# Tamanho
	addi $3 $0 68 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 131 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 108 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 132 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 108 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 132 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 138 # Posição Largura
	jal Platform_Draw
	
	
	addi $4 $0 132 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 168 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 134 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 178 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 136 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 188 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 138 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 198 # Posição Largura
	jal Platform_Draw
	
	
	addi $4 $0 140 # Posição da altura
	addi $2 $0 24	# Tamanho
	addi $3 $0 208 # Posição Largura
	jal Platform_Draw
	
	#Plataforma 6
	addi $4 $0 160 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 232 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 161 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 222 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 162 # Posição da altura
	addi $2 $0 8	# Tamanho
	addi $3 $0 214 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 163 # Posição da altura
	addi $2 $0 12	# Tamanho
	addi $3 $0 202 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 164 # Posição da altura
	addi $2 $0 32	# Tamanho
	addi $3 $0 170 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 166 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 160 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 167 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 150 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 168 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 140 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 169 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 130 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 171 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 110 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 172 # Posição da altura
	addi $2 $0 15	# Tamanho
	addi $3 $0 95 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 173 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 75 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 174 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 45 # Posição Largura
	jal Platform_Draw
	
	# Plataforma 7
	addi $4 $0 194 # Posição da altura
	addi $2 $0 15	# Tamanho
	addi $3 $0 35 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 196 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 50 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 198 # Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 80 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 200 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 105 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 202 # Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 135 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 204 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 160 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 206 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 180 # Posição Largura
	jal Platform_Draw
	
	
	
	
	# **** FINAL ****
	addi $4 $0 234# Posição da altura
	addi $2 $0 96	# Tamanho
	addi $3 $0 25 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 232# Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 121 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 230# Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 151 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 230# Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 176 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 230# Posição da altura
	addi $2 $0 5	# Tamanho
	addi $3 $0 196 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 226# Posição da altura
	addi $2 $0 35	# Tamanho
	addi $3 $0 201 # Posição Largura
	jal Platform_Draw
	
	lw $31 -4($29)
	jr $31


# =======================================================================
# **** Desenhar Plataforma ****

# INPUT_Reg: $2 -> Tamanho da Plataforma
#            $3 -> Largura da Plataforma
#            $4 -> ALtura da Plataforma
			

# OUTPUT_Reg: None
# Reg_Usados:  $2 $4 
             # $5 -> Contador
	     # $8 -> Endereço de Memória
	     # $9 -> Cor #A61937 
	     # $10 -> Contador de Triângulo
	     # $11 -> Endereço Secundário de Memória

Platform_Draw:
	lui $8 0x1001 # Endereço de Memória
	ori $9 0xA61937 # Cor das Plataformas
	addi $5 $0 256 # Largura da tela
	mul $4 $5 $4 # Posicao desejada * Largura (Linha)
	mul $4 $4 4 # Endereço 
	mul $3 $3 4
	add $4 $4 $3 # MARGIN LEFT
	add $8 $8 $4 
	addi $5 $0 0 # CONTADOR
	addi $10 $0 3 # Contador Triangle
    sw $31 -4($29)
	
	
	
	

Platform_Draw_For: 
# ======= Empilhar ========
	
	
	beq $5 $2 fim_Platform_Draw_For
	sw $9 0($8)
	sw $9 1024($8)
	
	#beq $10 0 base_initial_Triangle
	#beq $10 1 base_2th_Triangle
	beq $10 2 base_3th_Triangle
	beq $10 3 base_4th_Triangle
	beq $10 4 base_5th_Triangle
	beq $10 5 base_6th_Triangle
	beq $10 6 base_7th_Triangle
	beq $10 7 base_8th_Triangle
	beq $10 8 base_9th_Triangle
	beq $10 9 base_10th_Triangle
	beq $10 10 base_11th_Triangle
	beq $10 11 base_12th_Triangle
	beq $10 12 base_13th_Triangle
	
	j continue_Platform_Draw
	
base_initial_Triangle:
	beq $5 $2 continue_Platform_Draw
	sw $9 9216($8) # 1
	sw $9 8192($8) # 2
	sw $9 7168($8) # 3 
	

	addi $10 $10 1

	j continue_Platform_Draw
	
base_2th_Triangle:
	addi $11 $8 -4
	beq $5 $2 continue_Platform_Draw
	sw $9 9220($11)
	sw $9 8196($11) 
	sw $9 7172($11)
	sw $9 6148($11)
	
	addi $10 $10 1

	j continue_Platform_Draw
	
base_3th_Triangle:
	addi $11 $8 -8
	beq $5 $2 continue_Platform_Draw
	sw $9 6152($11)
	sw $9 7176($11)
	sw $9 5128($11)
	
	
	addi $10 $10 1
	j continue_Platform_Draw

base_4th_Triangle:
	addi $11 $8 -12
	beq $5 $2 continue_Platform_Draw
	sw $9 5132($11)
	sw $9 6156($11)
	sw $9 4108($11)
	
	
	addi $10 $10 1

	j continue_Platform_Draw

base_5th_Triangle:
	addi $11 $8 -16
	beq $5 $2 continue_Platform_Draw
	sw $9 3088($11)
	sw $9 4112($11)
	#sw $9 5136($11)
	
	
	addi $10 $10 1

	j continue_Platform_Draw

base_6th_Triangle:
	addi $11 $8 -20
	beq $5 $2 continue_Platform_Draw
	sw $9 2068($11)
	sw $9 3092($11)
	#sw $9 4116($11)
	
	
	addi $10 $10 1

	j continue_Platform_Draw

base_7th_Triangle:
	addi $11 $8 -24
	beq $5 $2 continue_Platform_Draw
	sw $9 2072($11)
	#sw $9 3096($11)
	
	addi $10 $10 1

	j continue_Platform_Draw
base_8th_Triangle:
	addi $11 $8 -28
	beq $5 $2 continue_Platform_Draw
	sw $9 2076($11)
	sw $9 3100($11)
	#sw $9 4124($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_9th_Triangle:
	addi $11 $8 -32
	beq $5 $2 continue_Platform_Draw
	sw $9 3104($11)
	sw $9 4128($11)
	#sw $9 5152($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_10th_Triangle:
	addi $11 $8 -36
	beq $5 $2 continue_Platform_Draw
	sw $9 4132($11)
	sw $9 5156($11)
	sw $9 6180($11)
	
	addi $10 $10 1

	j continue_Platform_Draw
	
base_11th_Triangle:
	addi $11 $8 -40
	beq $5 $2 continue_Platform_Draw
	sw $9 5160($11)
	sw $9 6184($11)
	sw $9 7208($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_12th_Triangle:
	addi $11 $8 -44
	beq $5 $2 continue_Platform_Draw
	sw $9 6188($11)
	sw $9 7212($11)
	sw $9 8236($11)
	sw $9 9260($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_13th_Triangle:
	addi $11 $8 -48
	beq $5 $2 continue_Platform_Draw
	sw $9 7216($11)
	sw $9 8240($11)
	sw $9 9264($11)
	
	addi $10 $10 1

	j continue_Platform_Draw
	
continue_Platform_Draw:
	
	sw $9 6144($8) # Desenhar Linha Baixo 1
	sw $9 7168($8) # Desenhar Linha Baixo 2
	addi $8 $8 4 # Próximo Endereço
	addi $5 $5 1 # Contador++
	beq $10 11 restart_Platform_Draw
	j Platform_Draw_For
	
restart_Platform_Draw:
	addi $10 $0 3
	j Platform_Draw_For
	
fim_Platform_Draw_For:
		# 2 $4 
             # $5 -> Contador
	     # $8 -> Endereço de Memória
	     # $9 -> Cor #A61937 
	     # $10 -> Contador de Triângulo
	     # $11 -> Endereço Secundário de Memória

	addi $2 $0 0
	addi $3 $0 0
	addi $4 $0 0
	addi $5 $0 0
	addi $8 $0 0
	addi $9 $0 0
	addi $10 $0 0
	addi $11 $0 0
	addi $15 $0 0
	lw $31 -4($29)
	jr $31
	
	

# ================================================================
# **** Desenhar Escadas ****

# INPUT_Reg: $2 -> Tamanho da Escada
#            $3 -> Posição X Escada
#            $4 -> Posição Y Escada
			

# OUTPUT_Reg: None
# Reg_Usados:  $2 $4 
             # $5 -> Contador
	     # $8 -> Endereço de Memória
	     # $9 -> Cor #70CEEA 
	     # $10 -> Contador de Triângulo
	     # $11 -> Endereço Secundário de Memória

Ladder_Draw:
	lui $8 0x1001 # Endereço de Memória
	ori $9  0x70CEEA # Cor das Plataformas
	addi $5 $0 256 # Largura da tela
	mul $4 $5 $4 # Posicao desejada * Largura (Linha)
	mul $4 $4 4 # Endereço 
	mul $3 $3 4
	add $4 $4 $3 # MARGIN LEFT
	add $8 $8 $4 
	addi $5 $0 0 # CONTADOR
	sw $31 -4($29)
	addi $10 $0 0
	


Ladder_Draw_For:

	beq $5 $2 fim_Ladder_Draw_For
	beq $10 1 step_Ladder_Draw_For
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 3072($8)
	sw $9 4096($8)
	sw $9 5120($8)
	
	sw $9 48($8)
	sw $9 1072($8)
	sw $9 2096($8)
	sw $9 3120($8)
	sw $9 4144($8)
	sw $9 5168($8)
	addi $10 $10 1
	addi $6 $8 2096
	addi $8 $8 2048
	j Ladder_Draw_For

step_Ladder_Draw_For:
	beq $8 $6 restart_step_Ladder_Draw
	sw $9 0($8)
	addi $8 $8 4
	j step_Ladder_Draw_For
	
restart_step_Ladder_Draw:
	addi $8 $8 -2096
	addi $8 $8 6144
	addi $6 $0 0
	addi $5 $5 1
	addi $10 $0 0
	j Ladder_Draw_For
	
	

fim_Ladder_Draw_For:
	addi $2 $0 0
	addi $3 $0 0
	addi $4 $0 0
	addi $5 $0 0
	addi $6 $0 0
	addi $7 $0 0
	addi $8 $0 0
	addi $9 $0 0
	addi $10 $0 0
	addi $11 $0 0
	addi $12 $0 0
	addi $13 $0 0
	addi $14 $0 0
	addi $15 $0 0
	addi $16 $0 0
	addi $17 $0 0
	addi $18 $0 0
	addi $19 $0 0
	addi $20 $0 0

	lw $31 -4($29)
	jr $31
	
