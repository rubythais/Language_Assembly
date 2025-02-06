.text

main:
	jal background_black
	
	jal cenario_plataform_Mario_VS_Donkey
	
	# TECLADO 
	lui $21 0xffff
      	addi $25 $0 32
      	addi $10 $0 4
      	addi $11 $0 'a'
      	addi $12 $0 'd'
      	addi $13 $0 's'
      	addi $14 $0 'w'
      	
      	# Controle
      	addi $15 $0 0
      	
      	# posição inicial Mario
      	addi $2 $0 30 # 28
	addi $3 $0 231 # 231
	addi $4 $0 0 
	ori $4 0xA61937
	addi $5 $0 0
	ori $5 0x00000
	jal Mario_Draw_RIGHT
	
	addi $19 $0 0 
	ori $19 0xA61937
	
walk_Platforms_Mario:
	jal timer
	 
	lw $23 4($21)
      	beq $23 $11 walk_left_mario
      	beq $23 $12 walk_right_mario
      	beq $23 $13 walk_down_mario
      	beq $23 $14 walk_up_mario
	
	j walk_down_mario
walk_left_mario:
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_LEFT
	
	addi $2 $2 -5
	addi $3 $3 0
	jal Mario_Draw_LEFT
	addi $23 $0 'p'
	sw $23 4($21)
	addi $17 $0 0
	j walk_down_mario
	
walk_right_mario:
	beq $20 $19 walk_down_mario
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_LEFT
	
	addi $2 $2 5
	addi $3 $3 0
	jal Mario_Draw_RIGHT
	addi $23 $0 'p'
	sw $23 4($21)
	addi $17 $0 0
	j walk_down_mario
walk_up_mario:
	addi $27 $0 60
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_LEFT
	
	addi $2 $2 0
	addi $3 $3 -30
	jal Mario_Draw_RIGHT
	
	addi $23 $0 'p'
	sw $23 4($21)
	j walk_down_mario
	
tocou_no_chao_Mario:
	addi $18 $0 0
	j walk_Platforms_Mario
walk_down_mario:
	
	beq $9 $19 tocou_no_chao_Mario
	beq $3 261 cair_mario
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Draw_Erased_LEFT
	
	addi $2 $2 0
	addi $3 $3 10
	jal Mario_Draw_RIGHT
	addi $23 $0 'p'
	sw $23 4($21)
	
	j walk_Platforms_Mario
cair_mario:

fim:
	addi $2 $0 10
	syscall
# =========================================
# =+=+=+=+=+= USE +=+=+=+=+=+=+=+=+ 


# cenario_plataform_Mario_VS_Donkey (Desenha o cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# jal cenario_plataform_Mario_VS_Donkey
# -------------------------------------------


# Platform (Plataformas Prontas do cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# jal Platform
# -------------------------------------------


# Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# addi $2 $0 X # Tamanho
# addi $3 $0 X # Posição Largura
# addi $4 $0 X # Posição da altura
# jal Platform_Draw
# -------------------------------------------


# Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_VS_Donkey)
# -------------------------------------------
# addi $2 $0 X TAMANHO da Escada
# addi $3 $0 X POSICAO do Inicio Escada Y
# addi $4 $0 X POSICAO do Inicio Escada Y
# jal Ladder_Draw
# -------------------------------------------


# Mario_Draw_RIGHT (DESENHA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_RIGHT
# -------------------------------------------


# Mario_Draw_Pixel (DESENHA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# addi $9 $0 0 Reset $9 
# ori $9 0xXXXXX Cor do Pixel
# jal Mario_Draw_Pixel
# -------------------------------------------


# Mario_Draw_LEFT_Erased (APAGA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_LEFT_Erased
# -------------------------------------------


# Mario_Draw_RIGHT_Erased (APAGA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_RIGHT_Erased
# -------------------------------------------


# Mario_Draw_Pixel_Erased (APAGA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# jal Mario_Draw_Pixel_Erased
# -------------------------------------------


# =+=+=+=+=+= USE - END +=+=+=+=+=+=+=+=+ 

# ========================================================
# ****  cenario_plataform_Mario_VS_Donkey (Desenha o cenario_plataform_Mario_VS_Donkey) ****

# ********** USE **********
# cenario_plataform_Mario_VS_Donkey (Desenha o cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# jal cenario_plataform_Mario_VS_Donkey
# -------------------------------------------

# INPUT_Reg:  
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # addi $2 -> TAMANHO ESCADA
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			 

			
			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL


cenario_plataform_Mario_VS_Donkey:
	 # ==============
	 # EMPILHAR
	 # ============
	 sw $31 0($29)
	 addi $29 $29 -4
	
	  	
	
	 addi $2 $0 1
	 jal Platform
	 
	 
	 
	 # ===================
	 # DESEMPILHAR
	 # ===================
	 addi $29 $29 4
	 lw $31 0($29)
	 
	 jr $31 
# ========================================================
# ****  Platform (Plataformas Prontas do cenario_plataform_Mario_VS_Donkey) ****

# ********** USE **********
# Platform (Plataformas Prontas do cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# jal Platform
# -------------------------------------------

# INPUT_Reg:  
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # addi $2 -> TAMANHO Plataforma
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			 

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
Platform:


# ======= Empilhar ========
	sw $31 0($29)
	addi $29 $29 -4
	beq $2 1 tela_1_PLATAFORMAS
	beq $2 2 tela_2_PLATAFORMAS
tela_1_PLATAFORMAS:
	addi $4 $0 26 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 229 # Posição Largura
	jal Platform_Draw
	
	
	
	# Plataforma 3
	addi $4 $0 66 # Posição da altura
	addi $2 $0 80	# Tamanho
	addi $3 $0 25 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 64 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 104 # Posição Largura
	jal Platform_Draw
	
	
	addi $4 $0 62 # Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 124 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 60# Posição da altura
	addi $2 $0 35	# Tamanho
	addi $3 $0 149 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 58 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 184 # Posição Largura
	jal Platform_Draw
	
	
	
	
		
	# Plataforma 5
		
	addi $4 $0 98 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 18 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 99 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 28 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 100 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 48 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 101 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 58 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 102 # Posição da altura
	addi $2 $0 40	# Tamanho
	addi $3 $0 68 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 104 # Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 108 # Posição Largura
	jal Platform_Draw
	
	
	
	addi $4 $0 100 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 168 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 102 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 178 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 104 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 188 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 106 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 198 # Posição Largura
	jal Platform_Draw
	
	
	addi $4 $0 108 # Posição da altura
	addi $2 $0 24	# Tamanho
	addi $3 $0 208 # Posição Largura
	jal Platform_Draw
	
	#Plataforma 6
	addi $4 $0 140 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 232 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 140 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 222 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 142 # Posição da altura
	addi $2 $0 8	# Tamanho
	addi $3 $0 214 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 144 # Posição da altura
	addi $2 $0 12	# Tamanho
	addi $3 $0 202 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 146 # Posição da altura
	addi $2 $0 32	# Tamanho
	addi $3 $0 170 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 148 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 160 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 150 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 150 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 152 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 140 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 154 # Posição da altura
	addi $2 $0 10	# Tamanho
	addi $3 $0 130 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 156 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 110 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 158 # Posição da altura
	addi $2 $0 15	# Tamanho
	addi $3 $0 95 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 160 # Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 75 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 162 # Posição da altura
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
	addi $4 $0 248# Posição da altura
	addi $2 $0 96	# Tamanho
	addi $3 $0 25 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 246# Posição da altura
	addi $2 $0 30	# Tamanho
	addi $3 $0 121 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 244# Posição da altura
	addi $2 $0 25	# Tamanho
	addi $3 $0 151 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 242# Posição da altura
	addi $2 $0 20	# Tamanho
	addi $3 $0 176 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 240# Posição da altura
	addi $2 $0 5	# Tamanho
	addi $3 $0 196 # Posição Largura
	jal Platform_Draw
	
	addi $4 $0 238# Posição da altura
	addi $2 $0 35	# Tamanho
	addi $3 $0 201 # Posição Largura
	jal Platform_Draw
	
tela_1_PLATAFORMAS_END:
	j platforms_END
tela_2_PLATAFORMAS:
	
platforms_END:
	# ================
	# DESEMPILHAR
	# ================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31


# ========================================================
# ****  Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_VS_Donkey) ****

# ********** USE **********
# Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_VS_Donkey) 
# -------------------------------------------
# addi $2 $0 X # Tamanho
# addi $3 $0 X # Posição Largura
# addi $4 $0 X # Posição da altura
# jal Platform_Draw
# -------------------------------------------

# INPUT_Reg:  # addi $2 -> TAMANHO Plataforma
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # addi $2 -> TAMANHO Plataforma
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			  # $5 -> 
			  # $8 -> Memoria
	          # $9 -> Cor dos pixels

			# VAR CONTROLE
			 # $10 -> Contador

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL



Platform_Draw:
	# ==============
	# EMPILHAR
	# ============
	sw $31 0($29)
	addi $29 $29 -4
	
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
   
	
	
	
	

Platform_Draw_For: 
# ======= Empilhar ========
	
	
	beq $5 $2 fim_Platform_Draw_For
	sw $9 0($8)
	sw $9 1024($8)

    sw $9 262144($8)
    sw $9 263168($8)

	
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
	sw $9 7168($8) # 3 
	sw $9 8192($8) # 2
	sw $9 9216($8) # 1
	
    sw $9 269222($8)
    sw $9 270246($8)
    sw $9 271270($8)


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
	# ==============
	# DESEMPILHAR
	# ============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	

# ========================================================
# ****  Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_VS_Donkey) ****

# ********** USE **********
# Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_VS_Donkey)
# -------------------------------------------
# addi $2 $0 X TAMANHO da Escada
# addi $3 $0 X POSICAO do Inicio Escada Y
# addi $4 $0 X POSICAO do Inicio Escada Y
# jal Ladder_Draw
# -------------------------------------------

# INPUT_Reg:  # addi $2 -> TAMANHO da Escada
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # addi $2 -> TAMANHO da Escada
			  # addi $3 -> POSICAO do Inicio Escada Y
			  # addi $4 -> POSICAO do Inicio Escada Y
			  # $5 -> 
			  # $8 -> Memoria
	          # $9 -> Cor dos pixels

			# VAR CONTROLE
			 # $10 -> Contador

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Ladder_Draw:
	# ==============
	# EMPILHAR
	# ============
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Endereço de Memória
	ori $9  0x70CEEA # Cor das Plataformas
	addi $5 $0 256 # Largura da tela
	mul $4 $5 $4 # Posicao desejada * Largura (Linha)
	mul $4 $4 4 # Endereço 
	mul $3 $3 4
	add $4 $4 $3 # MARGIN LEFT
	add $8 $8 $4 
	addi $5 $0 0 # CONTADOR

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
	
	jal reset
	
	# ==============
	# DESEMPILHAR
	# ============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# ========================================================
# ****  Mario_Draw_LEFT (Desenha o Mario que esta virado pra ESQUERDA) ****

# ********** USE **********
# Mario_Draw_LEFT(DESENHA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_LEFT
# -------------------------------------------

# INPUT_Reg:  # $2 -> Posicao inicio desenho EIXO X
			  # $3 -> Posicao inicio desenho EIXO Y
			
             

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
	          # $9 -> Cor dos pixels

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
			  
Mario_Draw_RIGHT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
	addi $29 $29 -4

	sw $4 0($29)
	addi $29 $29 -4

    sw $5 0($29)
    addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	add $17 $4 $0
    add $18 $5 $0
	
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
	
	
	
	addi $2 $0 1
	addi $3 $0 1
	addi $4 $15 20
	addi $5 $16 16
	addi $10 $0 1
	jal Mario_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 17
	addi $9 $0 1
	jal Mario_Draw_Pixel
Mario_Draw_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
    addi $29 $29 4
    lw $5 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

	
# ========================================================
# ****  Mario_Draw_RIGHT (Desenha o Mario que esta virado pra DIREITA) ****

# ********** USE **********
# Mario_Draw_RIGHT (DESENHA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_RIGHT
# -------------------------------------------

# INPUT_Reg:  # $2 -> Posicao inicio desenho EIXO X
			  # $3 -> Posicao inicio desenho EIXO Y
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
	          # $9 -> Cor dos pixels

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Mario_Draw_LEFT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
	addi $29 $29 -4

	sw $4 0($29)
	addi $29 $29 -4

    	sw $5 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	add $17 $4 $0
	add $18 $5 $0
	
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
	
	

         addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -5
	addi $5 $16 16
        addi $10 $0 1
        jal Mario_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 17
	addi $9 $0 1	
	jal Mario_Draw_Pixel
	
Mario_Draw_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
    	addi $29 $29 4
	lw $5 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

# ========================================================
# ****  Mario_Draw_Pixel (Desenha os pixels enviados) ****

# ********** USE **********
# Mario_Draw_Pixel (DESENHA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# addi $9 $0 0 Reset $9 
# ori $9 0xXXXXX Cor do Pixel
# jal Mario_Draw_Pixel_Erased
# -------------------------------------------

# INPUT_Reg:  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
			  # $9  -> Cor do Pixel
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $4 -> Posicao inicio desenho EIXO Y
              # $9  -> Cor do Pixel

			# VARIVEIS DE CONTROLE
			  # $5
			  # $6 
			  # $7 
			  # $8 -> Varivel de memoria
			  # $9  -> Cor do Pixel
              	
			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

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
        addi $22 $0 0
        beq $9 1 color_verification_Mario
        beq $10 1 color_verification_Mario_Feet
        
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
color_verification_Mario:
	beq $9 $17 color_find_Mario
	beq $10 24 Mario_Draw_Pixel_END
	lw $9 262144($8)

	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Mario
	
color_find_Mario:
	j Mario_Draw_Pixel_END
color_verification_Mario_Feet:
   	beq $9 $17 color_find_Mario_Feet
   	beq $10 4 color_find_Mario_Feet
   	lw $9 262144($8)
   	
   	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Mario_Feet
color_find_Mario_Feet:
    addi $20 $9 0
    j Mario_Draw_Pixel_END
	 
Mario_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31

# ========================================================
# ****  Mario_Draw_LEFT_Erased (Apaga o Mario que esta virado pra ESQUERDA) ****

# ********** USE **********
# Mario_Draw_LEFT_Erased (APAGA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_LEFT_Erased
# -------------------------------------------

# INPUT_Reg:  # $2 -> Posicao inicio desenho EIXO X
			  # $3 -> Posicao inicio desenho EIXO Y
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
            

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Mario_Draw_Erased_RIGHT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
	addi $29 $29 -4

	sw $4 0($29)
	addi $29 $29 -4

    sw $5 0($29)
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
Mario_Draw_Erased_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
    addi $29 $29 4
    lw $5 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	
	
# ========================================================
# ****  Mario_Draw_RIGHT_Erased (Apaga o Mario que esta virado pra DIREITA) ****

# ********** USE **********
# Mario_Draw_RIGHT_Erased (APAGA MARIO VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO EIXO X
# addi $3 $0 X POSICAO do MARIO EIXO Y
# jal Mario_Draw_RIGHT_Erased
# -------------------------------------------

# INPUT_Reg:  # $2 -> Posicao inicio desenho EIXO X
			  # $3 -> Posicao inicio desenho EIXO Y
			
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
            

			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Mario_Draw_Erased_LEFT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
	addi $29 $29 -4

	sw $4 0($29)
	addi $29 $29 -4

    sw $5 0($29)
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
Mario_Draw_Erased_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
    addi $29 $29 4
	lw $5 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31



# ========================================================
# ****  Mario_Draw_Pixel_Erased (Apaga os pixels enviados) ****

# ********** USE **********
# Mario_Draw_Pixel_Erased (APAGA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# jal Mario_Draw_Pixel_Erased
# -------------------------------------------

# INPUT_Reg:  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $5 -> Posicao inicio desenho EIXO Y
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Tamanho do pixel EIXO X
			  # $3 -> Altura do pixel EIXO Y
			  # $4 -> Posicao inicio desenho EIXO X
			  # $4 -> Posicao inicio desenho EIXO Y
              # $9  -> Cor do Pixel

			# VARIVEIS DE CONTROLE
			  # $5
			  # $6 
			  # $7 
			  # $8 -> Varivel de memoria
			  # $9  -> Cor do Pixel
              	
			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
		
Mario_Draw_Erased_Pixel:
	# ====================
	# EMPILHAR
	# ====================
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

Mario_Draw_Pixel_Erased_For:
	beq $6 $3 Mario_Draw_Pixel_Erased_END
	beq $5 $2 Mario_Draw_Pixel_Erased_Next_Line
	lw $9 262144($8)
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Draw_Pixel_Erased_For
	
Mario_Draw_Pixel_Erased_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Mario_Draw_Pixel_Erased_For

Mario_Draw_Pixel_Erased_END:
	# ====================
	# DESEMPILHAR
	# ====================
	addi $29 $29 4
	lw $31 0($29)

	jr $31
	
reset:
	# ==============
	# EMPILHAR
	# =============
	sw $31 0($29)
	addi $29 $29 -4

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

	# ==============
	# DESEMPILHAR
	# ==============
	addi $29 $29 4
	lw $31 0($29)

	jr $31
# ========================================================
# ****  background_black (background preto) ****

# ********** USE **********
# background_black (background preto)
# -------------------------------------------
# jal background_black
# -------------------------------------------

# INPUT_Reg:  None
              

# OUTPUT_Reg: None

# Reg_Usados: 
			  
              		# $9  -> Cor do Pixel

			# VARIVEIS DE CONTROLE
			  # $7 -> Contador
			  # $8 -> Varivel de memoria
			  # $9  -> Cor do Pixel
              	
			# PILHA
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
background_black:
	# =====================
	# EMPILHAR
	# =====================
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001
	addi $9 $0 0
	ori $9 0x00000
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
	
	jr $31
	
	
	
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

