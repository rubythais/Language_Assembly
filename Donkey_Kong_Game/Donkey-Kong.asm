.text

main:



   	 
	jal cenario_mario_1
	# TECLADO 
	lui $21 0xffff
      	addi $25 $0 32
      	addi $10 $0 4
      	addi $11 $0 'a'
      	addi $12 $0 'd'
      	addi $13 $0 's'
      	addi $14 $0 'w'
      	
      	# posição inicial Donkey Kong
      	addi $2 $0 -1 # -1 
	addi $3 $0 106 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong
	
	addi $18 $0 0 # Limite para morrer Chão
	addi $19 $0 0 # Limite para mudar os parametros X 
	ori $19 0x2F2F2F
	
	
	
	
# ========================================================
# ****  walk_cenario_mario1 (Faz o Donkey andar no cenário 1 do mario) ****

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: # $2  -> Largura X do pixel
              # $3  -> Altura Y do Pixel
              # $4  -> PosiÃ§Ã£o Lagura eixo X da Tela (onde inicia o Pixel)
              # $5  -> PosiÃ§Ã£o Altura eixo Y da Tela (onde inicia o Pixel)
              # $9  -> Cor do Pixel

              # $11 -> Var -> 'a' (ESQUERDA)
              # $12 -> Var -> 'd' (DIREITA)
              # $13 -> Var -> 's' (BAIXO)
              # $14 -> Var -> 'w' (PULAR)
			  
			# VARIVEL DE CONTROLE
			  # $17 -> Controla os pulos do boneco


              # $19 -> Cor base para Boneco andar (CHAO)

              # $21 -> Endereco para memoria TECLADO
              # $23 -> Varivel que recebe a memoria do TECLADO

			  # $26 -> Posicao X Donkey Kong
			  # $27 -> Posicao Y Donkey Kong

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
		
walk_cenario_mario1:
	     	
    	
      	# função tempo
		jal timer
		# buscar o comando do teclado
      	lw $23 4($21)
      	beq $23 $11 esq
      	beq $23 $12 dir
      	beq $23 $13 baixo
      	beq $23 $14 cima
	
		j baixo

esq:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 -10
	addi $3 $3 0
	jal Donkey_Kong
	addi $23 $0 'p'
	sw $23 4($21)
	addi $17 $0 0
	j baixo
dir:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 10
	addi $3 $3 0
	jal Donkey_Kong
	addi $23 $0 'p'
	sw $23 4($21)
	

	j baixo

cima:
	beq $18 1 baixo
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 -80
	jal Donkey_Kong
	addi $23 $0 'p'
	sw $23 4($21)
	addi $18 $18 1
	j baixo

tocou_no_chao:
	addi $18 $0 0
	j walk_cenario_mario1
baixo:
	
	beq $9 $19 tocou_no_chao
	beq $3 186 cair
	beq $23 $11 esq
      	beq $23 $12 dir
     	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 10
	jal Donkey_Kong
	addi $23 $0 'p'
	sw $23 4($21)
	
	j walk_cenario_mario1
cair:

	beq $3 $18 game_over
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 10
	jal Donkey_Kong
	addi $23 $0 'p'
	sw $23 4($21)
	jal timer
	j cair
	
game_over:

	jal timer
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	
	addi $2 $2 25 # PosiÃ§Ã£o X
	addi $3 $3 10 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 10
	syscall	

	#addi $2 $0 100
	#addi $3 $0 123
	#jal Wizard
	
	#addi $30 $0 5
	#jal Wizard_Walk


fim:
	addi $2 $0 10
	syscall
	jal timer
	jal timer
	jal timer
	jal cenario_mario_2
	
	jal timer
	jal timer
	jal timer
	jal cenario_mario_3
	
	jal timer
	jal timer
	jal timer
	jal cenario_mario_4
	# 
mud_cenario_mario2:
	jal cenario_mario_2	
# ========================= CENARIOS ==================
cenario_mario_1:
	# ==============
	# EMPILHAR
	# ==============
	sw $31 0($29)
	addi $29 $29 -4
	
	jal Mario_Dark_Sky
	
	addi $2 $0 100
	addi $3 $0 26
	addi $4 $0 0
	
	jal Draw_Plataform_Mario
	
	
	addi $2 $0 100
	addi $3 $0 46
	addi $4 $0 154
	
	jal Draw_Plataform_Mario
	
	jal Draw_Floor_Mario
	
	
	
	addi $2 $0 20 # PosiÃ§Ã£o X
	addi $3 $0 250 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 68 # PosiÃ§Ã£o X
	addi $3 $0 222 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 160 # PosiÃ§Ã£o X
	addi $3 $0 196 # PosiÃ§Ã£o Y
	jal Skull_Draw
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# =========================================
# CENÃ?RIO 2 MARIO
cenario_mario_2:
	# ==============
	# EMPILHAR
	# ==============
	sw $31 0($29)
	addi $29 $29 -4
	
	jal Mario_Dark_Sky
	
	addi $2 $0 80
	addi $3 $0 46
	addi $4 $0 0

	jal Draw_Plataform_Mario
	
	
	addi $2 $0 20
	addi $3 $0 36
	addi $4 $0 130

	jal Draw_Plataform_Mario
	
	
	addi $2 $0 54
	addi $3 $0 36
	addi $4 $0 200

	jal Draw_Plataform_Mario
	
	jal Draw_Floor_Mario
	
	addi $2 $0 70 # PosiÃ§Ã£o X
	addi $3 $0 180 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 140 # PosiÃ§Ã£o X
	addi $3 $0 200 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	
	addi $2 $0 250 # PosiÃ§Ã£o X
	addi $3 $0 240 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# =========================================
# CENÃ?RIO 3 MARIO
cenario_mario_3:
	# ==============
	# EMPILHAR
	# ==============
	sw $31 0($29)
	addi $29 $29 -4
	
	jal Mario_Dark_Sky
	
	addi $2 $0 20
	addi $3 $0 36
	addi $4 $0 0

	jal Draw_Plataform_Mario
	
	
	addi $2 $0 20
	addi $3 $0 75
	addi $4 $0 170

	jal Draw_Plataform_Mario
	
	
	addi $2 $0 20
	addi $3 $0 60
	addi $4 $0 210

	jal Draw_Plataform_Mario
	
	jal Draw_Floor_Mario
	
	addi $2 $0 30 # PosiÃ§Ã£o X
	addi $3 $0 190 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 50 # PosiÃ§Ã£o X
	addi $3 $0 210 # PosiÃ§Ã£o Y
	jal Skull_Draw
		
	addi $2 $0 65 # PosiÃ§Ã£o X
	addi $3 $0 190 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	addi $2 $0 85 # PosiÃ§Ã£o X
	addi $3 $0 210 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 100 # PosiÃ§Ã£o X
	addi $3 $0 190 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	addi $2 $0 120 # PosiÃ§Ã£o X
	addi $3 $0 210 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 135 # PosiÃ§Ã£o X
	addi $3 $0 190 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 150 # PosiÃ§Ã£o X
	addi $3 $0 210 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 165 # PosiÃ§Ã£o X
	addi $3 $0 190 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	addi $2 $0 180 # PosiÃ§Ã£o X
	addi $3 $0 210 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# =========================================
# CENÃ?RIO 4 MARIO
cenario_mario_4:
	# ==============
	# EMPILHAR
	# ==============
	sw $31 0($29)
	addi $29 $29 -4
	
	jal Mario_Dark_Sky
	
	
	addi $2 $0 40
	addi $3 $0 60
	addi $4 $0 0

	jal Draw_Plataform_Mario
	
	addi $2 $0 20
	addi $3 $0 40
	addi $4 $0 80

	jal Draw_Plataform_Mario
	
	addi $2 $0 124
	addi $3 $0 20 
	addi $4 $0 130

	jal Draw_Plataform_Mario
	
	jal Draw_Floor_Mario
	
		
	addi $2 $0 50 # PosiÃ§Ã£o X
	addi $3 $0 200 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
	
	
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
# ================================================================
# **** Desenhar CÃ©u Degrade ****

# INPUT_Reg: $3 -> PosiÃ§Ã£o Y 
# 	     $9 -> Cor 	
# OUTPUT_Reg: None
# Reg_Usados:

Mario_Dark_Sky:
    # ======================
    # EMPILHAR
    # ======================
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $3 $0 0 
        addi $9 $0 0 
        ori $9 0x100E0E 
        jal Mario_Dark_Sky_Draw
        
        addi $3 $0 2 
        addi $9 $0 0 
        ori $9 0x100E0E 
        jal Mario_Dark_Sky_Draw

    

        addi $3 $0 4 
        addi $9 $0 0 
        ori $9 0x0F0D0D 
        jal Mario_Dark_Sky_Draw



        addi $3 $0 6
        addi $9 $0 0
        ori $9 0x0E0C0C
        jal Mario_Dark_Sky_Draw



        addi $3 $0 8
        addi $9 $0 0
        ori $9 0x0D0B0B
        jal Mario_Dark_Sky_Draw



        addi $3 $0 10
        addi $9 $0 0
        ori $9 0x0C0A0A
        jal Mario_Dark_Sky_Draw



        addi $3 $0 12
        addi $9 $0 0
        ori $9 0x0B0909
        jal Mario_Dark_Sky_Draw



        addi $3 $0 14
        addi $9 $0 0
        ori $9 0x0A0808
        jal Mario_Dark_Sky_Draw



        addi $3 $0 16
        addi $9 $0 0
        ori $9 0x090707
        jal Mario_Dark_Sky_Draw



        addi $3 $0 18
        addi $9 $0 0
        ori $9 0x080606
        jal Mario_Dark_Sky_Draw



        addi $3 $0 20
        addi $9 $0 0
        ori $9 0x070505
        jal Mario_Dark_Sky_Draw



        addi $3 $0 22
        addi $9 $0 0
        ori $9 0x060404
        jal Mario_Dark_Sky_Draw



        addi $3 $0 24
        addi $9 $0 0
        ori $9 0x050303
        jal Mario_Dark_Sky_Draw



        addi $3 $0 26
        addi $9 $0 0
        ori $9 0x040202
        jal Mario_Dark_Sky_Draw



        addi $3 $0 28
        addi $9 $0 0
        ori $9 0x030101
        jal Mario_Dark_Sky_Draw



        addi $3 $0 30
        addi $9 $0 0
        ori $9 0x020000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 32 
        addi $9 $0 0
        ori $9 0x030000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 34
        addi $9 $0 0
        ori $9 0x090000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 36
        addi $9 $0 0
        ori $9 0x0F0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 38
        addi $9 $0 0
        ori $9 0x150000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 40
        addi $9 $0 0
        ori $9 0x1B0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 42
        addi $9 $0 0
        ori $9 0x210000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 44
        addi $9 $0 0
        ori $9 0x280000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 46
        addi $9 $0 0
        ori $9 0x2E0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 48
        addi $9 $0 0
        ori $9 0x340000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 50
        addi $9 $0 0
        ori $9 0x3A0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 52
        addi $9 $0 0
        ori $9 0x400000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 54
        addi $9 $0 0
        ori $9 0x470000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 56 
        addi $9 $0 0
        ori $9 0x4D0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 58
        addi $9 $0 0
        ori $9 0x530000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 60
        addi $9 $0 0
        ori $9 0x590000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 62
        addi $9 $0 0
        ori $9 0x600000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 64
        addi $9 $0 0
        ori $9 0x660000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 66
        addi $9 $0 0
        ori $9 0x6C0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 68
        addi $9 $0 0
        ori $9 0x720000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 70
        addi $9 $0 0
        ori $9 0x790000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 72
        addi $9 $0 0
        ori $9 0x7F0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 74
        addi $9 $0 0
        ori $9 0x850000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 76
        addi $9 $0 0
        ori $9 0x8B0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 78
        addi $9 $0 0
        ori $9 0x910000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 80
        addi $9 $0 0
        ori $9 0x980000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 82
        addi $9 $0 0
        ori $9 0x9E0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 84
        addi $9 $0 0
        ori $9 0xA40000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 86
        addi $9 $0 0
        ori $9 0xAA0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 88
        addi $9 $0 0
        ori $9 0xB10000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 90
        addi $9 $0 0
        ori $9 0xB70000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 92
        addi $9 $0 0
        ori $9 0xBD0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 94 
        addi $9 $0 0
        ori $9 0xC30000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 96
        addi $9 $0 0
        ori $9 0xC90000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 98
        addi $9 $0 0
        ori $9 0xCF0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 100
        addi $9 $0 0
        ori $9 0xD50000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 102
        addi $9 $0 0
        ori $9 0xDB0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 104
        addi $9 $0 0
        ori $9 0xE10000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 106
        addi $9 $0 0
        ori $9 0xE70000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 108
        addi $9 $0 0
        ori $9 0xED0000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 110
        addi $9 $0 0
        ori $9 0xF30000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 112
        addi $9 $0 0
        ori $9 0xF90000
        jal Mario_Dark_Sky_Draw



        addi $3 $0 114
        addi $9 $0 0
        ori $9 0xFF0303
        jal Mario_Dark_Sky_Draw



        addi $3 $0 116
        addi $9 $0 0
        ori $9 0xFF0909
        jal Mario_Dark_Sky_Draw



        addi $3 $0 118
        addi $9 $0 0
        ori $9 0xFF0F0F
        jal Mario_Dark_Sky_Draw



        addi $3 $0 120
        addi $9 $0 0
        ori $9 0xFF1515
        jal Mario_Dark_Sky_Draw



        addi $3 $0 122
        addi $9 $0 0
        ori $9 0xFF1B1B
        jal Mario_Dark_Sky_Draw



        addi $3 $0 124
        addi $9 $0 0
        ori $9 0xFF2121
        jal Mario_Dark_Sky_Draw



        addi $3 $0 126
        addi $9 $0 0
        ori $9 0xFF2828
        jal Mario_Dark_Sky_Draw



        addi $3 $0 128
        addi $9 $0 0
        ori $9 0xFF2E2E
        jal Mario_Dark_Sky_Draw



        addi $3 $0 130
        addi $9 $0 0
        ori $9 0xFF3434
        jal Mario_Dark_Sky_Draw



        addi $3 $0 132
        addi $9 $0 0
        ori $9 0xFF3A3A
        jal Mario_Dark_Sky_Draw



        addi $3 $0 134
        addi $9 $0 0
        ori $9 0xFF4040
        jal Mario_Dark_Sky_Draw



        addi $3 $0 136
        addi $9 $0 0
        ori $9 0xFF4747
        jal Mario_Dark_Sky_Draw



        addi $3 $0 138
        addi $9 $0 0
        ori $9 0xFF4D4D
        jal Mario_Dark_Sky_Draw



        addi $3 $0 140
        addi $9 $0 0
        ori $9 0xFF5353
        jal Mario_Dark_Sky_Draw



        addi $3 $0 142
        addi $9 $0 0
        ori $9 0xFF5959
        jal Mario_Dark_Sky_Draw



        addi $3 $0 144
        addi $9 $0 0
        ori $9 0xFF6060
        jal Mario_Dark_Sky_Draw



        addi $3 $0 146
        addi $9 $0 0
        ori $9 0xFF6666
        jal Mario_Dark_Sky_Draw



        addi $3 $0 148
        addi $9 $0 0
        ori $9 0xFF6C6C
        jal Mario_Dark_Sky_Draw



        addi $3 $0 150
        addi $9 $0 0
        ori $9 0xFF7272
        jal Mario_Dark_Sky_Draw



        addi $3 $0 152
        addi $9 $0 0
        ori $9 0xFF7979
        jal Mario_Dark_Sky_Draw



        addi $3 $0 154
        addi $9 $0 0
        ori $9 0xFF7F7F
        jal Mario_Dark_Sky_Draw



        addi $3 $0 156
        addi $9 $0 0
        ori $9 0xFF8585
        jal Mario_Dark_Sky_Draw



        addi $3 $0 158
        addi $9 $0 0
        ori $9 0xFF8B8B
        jal Mario_Dark_Sky_Draw



        addi $3 $0 160
        addi $9 $0 0
        ori $9 0xFF9191
        jal Mario_Dark_Sky_Draw



        addi $3 $0 162
        addi $9 $0 0
        ori $9 0xFF9898
        jal Mario_Dark_Sky_Draw



        addi $3 $0 164
        addi $9 $0 0
        ori $9 0xFF9E9E
        jal Mario_Dark_Sky_Draw



        addi $3 $0 166 
        addi $9 $0 0
        ori $9 0xFFA4A4
        jal Mario_Dark_Sky_Draw



        addi $3 $0 168
        addi $9 $0 0
        ori $9 0xFFA4A2
        jal Mario_Dark_Sky_Draw



        addi $3 $0 170
        addi $9 $0 0
        ori $9 0xFFB1B1
        jal Mario_Dark_Sky_Draw



        addi $3 $0 172
        addi $9 $0 0
        ori $9 0xFFB7B7
        jal Mario_Dark_Sky_Draw



        addi $3 $0 174
        addi $9 $0 0
        ori $9 0xFFBDBD
        jal Mario_Dark_Sky_Draw



        addi $3 $0 176
        addi $9 $0 0
        ori $9 0xFFC3C3
        jal Mario_Dark_Sky_Draw



        addi $3 $0 178
        addi $9 $0 0
        ori $9 0xFFCACA
        jal Mario_Dark_Sky_Draw



        addi $3 $0 180
        addi $9 $0 0
        ori $9 0xFFD0D0
        jal Mario_Dark_Sky_Draw



        addi $3 $0 182
        addi $9 $0 0
        ori $9 0xFFD6D6
        jal Mario_Dark_Sky_Draw



        addi $3 $0 184
        addi $9 $0 0
        ori $9 0xFFDCDC
        jal Mario_Dark_Sky_Draw



        addi $3 $0 186
        addi $9 $0 0
        ori $9 0xFFE3E3
        jal Mario_Dark_Sky_Draw



        addi $3 $0 188
        addi $9 $0 0
        ori $9 0xFFE9E9
        jal Mario_Dark_Sky_Draw



        addi $3 $0 190
        addi $9 $0 0
        ori $9 0xFFEFEF
        jal Mario_Dark_Sky_Draw



        addi $3 $0 192
        addi $9 $0 0
        ori $9 0xFFF5F5
        jal Mario_Dark_Sky_Draw
	
	
end_Mario_Dark_Sky:
    # ======================
    # DESEMPILHAR
    # ======================
	addi $29 $29 4
	lw $31 0($29)

	jr $31


# ================================================================
# **** Desenhar CÃ©u Pixel ****

# INPUT_Reg: $2 -> Tamanho dos Datalhes
#            $3 -> PosiÃ§Ã£o Y
# 	         $9 -> Cor 	
# OUTPUT_Reg: None
# Reg_Usados:
Mario_Dark_Sky_Draw:
    # ======================
    # EMPILHAR
    # ======================
	sw $31 0($29)
	addi $29 $29 -4

	lui $8 0x1001
	addi $4 $0 1024
	mul $4 $4 $3
	add $8 $8 $4
	addi $10 $0 0
	
Mario_Dark_Sky_Draw_For:
	beq $10 512 fim_Mario_Dark_Sky_Draw
	sw $9 0($8)
	sw $9 262144($8)
	addi $8 $8 4
	addi $10 $10 1
	j Mario_Dark_Sky_Draw_For

fim_Mario_Dark_Sky_Draw:
    # ======================
    # DESEMPILHAR
    # ======================
	add $29 $29 4
	lw $31 ($29)

	jr $31
	
# ========================================================
# **** Plataform ( Desenhar Plataformas Mario) ****

# INPUT_Reg: $2 -> PosiÃ§Ã£o X
	      #  $3 -> PosiÃ§Ã£o Y

# OUTPUT_Reg: None

# Reg_Usados: # $2  -> Largura X do pixel
              # $3  -> Altura Y do Pixel
              # $4  -> PosiÃ§Ã£o Lagura eixo X da Tela (onde inicia o Pixel)
              # $5  -> PosiÃ§Ã£o Altura eixo Y da Tela (onde inicia o Pixel)
              # $9  -> Cor do Pixel
              # $15 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $16 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Draw_Plataform_Mario:
	# =====================
	# EMPILHAR
	# ======================
	sw $31 0($29)
	addi $29 $29 -4

	# PARTE MEMORIA
	lui $8 0x1001
	addi $5 $0 186 # TAMANHO MAXIMO
	sub $5 $5 $3
 	mul $5 $5 1024
	mul $6 $4 4
	add $5 $5 $6
	add $8 $8 $5
	addi $10 $8 0 # ENDEREÃ‡O COPIA 1
	addi $12 $10 0 # ENDEREÃ‡O COPIA 2
	addi $13 $3 2
	addi $7 $3 2
	
    # RESETAR RREGISTRADORES
	addi $5 $0 0
	addi $6 $0 0
	addi $9 $0 0

    # COR BACKGROUND PLATAFORMA
	ori $9 0x383838

# ============= BACKGROUND PLATAFORMA ====================
Draw_Plataform_Mario_Floor_For:
	beq $5 $13 Draw_Plataform_Mario_Floor_END
	beq $6 $2 Draw_Plataform_Mario_Floor_For_END
	sw $9 0($8)
	
	sw $9 262144($8)
	addi $6 $6 1
	addi $8 $8 4
	j Draw_Plataform_Mario_Floor_For
	
Draw_Plataform_Mario_Floor_For_END:
	addi $6 $0 0
	addi $5 $5 1
	addi $8 $10 1024
	addi $10 $10 1024
	j Draw_Plataform_Mario_Floor_For

Draw_Plataform_Mario_Floor_END:
	beq $4 $0 Draw_Plataform_Mario_Init
	j Draw_Plataform_Mario_NOT_Init
	
Draw_Plataform_Mario_NOT_Init:
	addi $8 $12 -8
	
	addi $9 $0 0
	ori $9 0x2F2F2F
	addi $5 $0 0
	addi $6 $0 0
	
Draw_Plataform_Mario_Left_Line:
	beq $6 $7  Draw_Plataform_Mario_Init
	sw $9 0($8)
	sw $9 4($8)
	sw $9 262144($8)
	sw $9 262148($8)
	addi $6 $6 1
	addi $8 $8 1024
	j Draw_Plataform_Mario_Left_Line

# ============= END - BACKGROUND PLATAFORMA ====================

# ============= LINHA SUPERIOR PLATAFORMA ====================
Draw_Plataform_Mario_Init:
	addi $8 $12 0
	addi $10 $12 0
	addi $9 $0 0
	ori $9 0x2F2F2F
	addi $5 $0 0
	addi $6 $0 0
Draw_Plataform_Mario_Line:
	beq $5 $2 Draw_Plataform_Mario_Right_Line
	sw $9 0($8)
	sw $9 1024($8)
	
	sw $9 262144($8)
	sw $9 263168($8)
	
	addi $5 $5 1
	addi $8 $8 4
	j Draw_Plataform_Mario_Line
# ============= END - LINHA SUPERIOR PLATAFORMA ====================

# ============= LINHA DIREITA PLATAFORMA ====================

Draw_Plataform_Mario_Right_Line:
	beq $6 $7  Draw_Plataform_Mario_Details
	sw $9 0($8)
	sw $9 4($8)
	sw $9 262144($8)
	sw $9 262148($8)
	addi $6 $6 1
	addi $8 $8 1024
	j Draw_Plataform_Mario_Right_Line
# =============  END - LINHA SUPERIOR PLATAFORMA ====================

# ============= DETALHE 1 PLATAFORMA ====================

Draw_Plataform_Mario_Details:
	addi $10 $10 2048
	addi $8 $10 0
	addi $9 $0 0
	ori $9 0x414141
	addi $5 $0 0
	addi $6 $0 0
	addi $7 $0 0
	
Draw_Plataform_Mario_Details_For:
	
	beq $6 $2 Draw_Plataform_Mario_Details_For_END
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	sw $9 3072($8)
	sw $9 4096($8)
	sw $9 5120($8)
	
	
	sw $9 262144($8)
	sw $9 263168($8)
	sw $9 264192($8)
	sw $9 265216($8)
	sw $9 266240($8)
	sw $9 267264($8)
	
	
	addi $6 $6 1
	addi $8 $8 4
	j Draw_Plataform_Mario_Details_For

Draw_Plataform_Mario_Details_For_END:
	addi $10 $10 6144
	addi $8 $10 0
	addi $11 $9 0
	addi $9 $0 0
	ori $9 0x4E4C4C
	addi $6 $0 0
# ============= END - DETALHE 1 PLATAFORMA ====================

	
# ============= DETALHE 2 PLATAFORMA ====================
	
Draw_Plataform_Mario_Details_For_next_Color:
	beq $6 $2 Draw_Plataform_Mario_Details_For_next_Color_END
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	
	
	
	sw $9 262144($8)
	sw $9 263168($8)
	sw $9 264192($8)
		
	
	addi $6 $6 1
	addi $8 $8 4
	j Draw_Plataform_Mario_Details_For_next_Color
# ============= END - DETALHE 2 PLATAFORMA ====================

# ============= DETALHE 1 REPICADO PLATAFORMA ====================

Draw_Plataform_Mario_Details_For_next_Color_END:
	addi $8 $10 0
	addi $6 $0 0
	div $7 $2 5
	mflo $7
	div $7 $7 2
	mflo $7
	
	addi $9 $11 0
	

Draw_Plataform_Mario_Details_For2:
	beq $6 $7 Draw_Plataform_Mario_Details_For3_Reset
	beq $5 5 Draw_Plataform_Mario_Details_For2_END
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	
	
	
	sw $9 262144($8)
	sw $9 263168($8)
	sw $9 264192($8)
	
	
	addi $8 $8 4
	addi $5 $5 1
	j Draw_Plataform_Mario_Details_For2
# ============= END - DETALHE 1 REPICADO PLATAFORMA ====================

# ============= DETALHE 2 REPICADO PLATAFORMA ====================

Draw_Plataform_Mario_Details_For2_END:
	addi $5 $0 0
	addi $6 $6 1
	addi $8 $8 20
	j Draw_Plataform_Mario_Details_For2
Draw_Plataform_Mario_Details_For3_Reset:
	addi $10 $10 3072
	addi $8 $10 0
	addi $9 $0 0
	ori $9 0x4E4C4C
	addi $6 $0 0
	addi $5 $0 0
Draw_Plataform_Mario_Details_For3:
	beq $6 $7 Draw_Plataform_Mario_END
	beq $5 5 Draw_Plataform_Mario_Details_For3_END
	sw $9 0($8)
	sw $9 1024($8)
	sw $9 2048($8)
	
	
	
	sw $9 262144($8)
	sw $9 263168($8)
	sw $9 264192($8)
	
	
	addi $8 $8 4
	addi $5 $5 1
	j Draw_Plataform_Mario_Details_For3

Draw_Plataform_Mario_Details_For3_END:
	addi $5 $0 0
	addi $6 $6 1
	addi $8 $8 20
	j Draw_Plataform_Mario_Details_For3
# ============= END - DETALHE 2 REPICADO PLATAFORMA ====================

Draw_Plataform_Mario_END:
	# =================	
	# DESEMPILHAR	
	# =================
	addi $29 $29 4
	lw $31 0($29)

	jr $31


# =========================================================	
# ========================================================
# **** Draw_Floor_Mario ( Desenhar  chÃ£o Mario) ****

# INPUT_Reg: $2 -> PosiÃ§Ã£o X
	      #  $3 -> PosiÃ§Ã£o Y

# OUTPUT_Reg: None

# Reg_Usados: # $2  -> Largura X do pixel
              # $3  -> Altura Y do Pixel
              # $4  -> PosiÃ§Ã£o Lagura eixo X da Tela (onde inicia o Pixel)
              # $5  -> PosiÃ§Ã£o Altura eixo Y da Tela (onde inicia o Pixel)
              # $9  -> Cor do Pixel
              # $15 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $16 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL

Draw_Floor_Mario:
    # ====================
    # EMPILHAR
    # ====================
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001
	addi $7 $0 1024
	mul $7 $7 188 # PosiÃ§ao Altura * Ir Altura
	add $8 $8 $7
	
	addi $9 $0 0
	addi $7 $0 0
	ori $9 0x240D01
	addi $10 $8 0
	addi $5 $0 0
	addi $6 $0 0
	addi $7 $0 0
	
Draw_Floor_Mario_For:
	beq $5 $0  Draw_Floor_Mario_Details
	beq $6 66 Draw_Floor_Mario_For_END
	beq $7 256 Draw_Floor_Mario_Next_Linha
	sw $9 0($8)
	sw $9 262144($8)
	addi $7 $7 1
	addi $8 $8 4
	j Draw_Floor_Mario_For
Draw_Floor_Mario_Details:
	beq $5 512 Draw_Floor_Mario_Details_END
	sw $9 0($8)
	sw $9 262144($8)
	addi $5 $5 1
	addi $8 $8 4
	j Draw_Floor_Mario_Details
Draw_Floor_Mario_Details_END:

	lui $8 0x1001
	addi $7 $0 1024
	mul $7 $7 190 # PosiÃ§ao Altura * Ir Altura
	add $8 $8 $7
	
	addi $9 $0 0
	addi $7 $0 0
	ori $9 0x2F0F00
	addi $10 $8 0
	j Draw_Floor_Mario_For
	
Draw_Floor_Mario_Next_Linha:
	addi $7 $0 0
	addi $6 $6 1
	addi $8 $10 1024
	addi $10 $10 1024
	j Draw_Floor_Mario_For
	
Draw_Floor_Mario_For_END:
	# ========================
	# DESEMPILHAR
	# ========================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31



# ================================================================
# **** Desenhar Caveira ****

# INPUT_Reg: $2 -> PosiÃ§Ã£o X
#            $3 -> PosiÃ§Ã£o Y 
# OUTPUT_Reg: None
# Reg_Usados:
Skull_Draw:
	sw $31 -4($29)
	lui $8 0x1001
	addi $4 $0 1024
	mul $4 $4 $3 # PosiÃ§Ã£o Y
	mul $2 $2 4
	add $4 $4 $2	
	add $8 $8 $4
	addi $9 $0 0
	ori $9 0xFFFFFF
	addi $10 $0 1 # Contador
Skull_Draw_For:
	beq $10 1 Skull_Draw_1th_For
	beq $10 2 Skull_Draw_2th_For
	beq $10 3 Skull_Draw_3th_For
	#beq $10 4 Skull_Draw_4th_For
	beq $10 5 Skull_Draw_5th_For
	beq $10 6 Skull_Draw_6th_For
	beq $10 7 Skull_Draw_7th_For
	beq $10 8 Skull_Draw_8th_For
	beq $10 9 Skull_Draw_9th_For
	beq $10 10 Skull_Draw_10th_For
	beq $10 11 Skull_Draw_11th_For
	beq $10 12 Skull_Draw_12th_For
	
	j end_Skull_Draw_For
Skull_Draw_1th_For:
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	sw $9 20($8)
	sw $9 24($8)
	
	
	
	addi $8 $8 1020
    	addi $10 $10 1
    	j Skull_Draw_For
    
Skull_Draw_2th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	
	addi $8 $8 1020
	addi $10 $10 1
    	j Skull_Draw_For
    	
  
Skull_Draw_3th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	sw $9 36($8)
	sw $9 40($8)

	addi $8 $8 1020	
	addi $10 $10 2
    	j Skull_Draw_For



Skull_Draw_5th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 40($8)
	sw $9 44($8)
	sw $9 48($8)
	
	addi $8 $8 1024	
	addi $10 $10 1
    	j Skull_Draw_For
    	
Skull_Draw_6th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 44($8)
	sw $9 48($8)
	
	addi $8 $8 1024	
	addi $10 $10 1
    	j Skull_Draw_For
    	
Skull_Draw_7th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 44($8)
	sw $9 48($8)
	
	addi $8 $8 1028	
	addi $10 $10 1
    	j Skull_Draw_For
    	
Skull_Draw_8th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	
	
	sw $9 16($8)
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 36($8)
	sw $9 40($8)
	
	addi $8 $8 1028	
	addi $10 $10 1
    	j Skull_Draw_For
	
Skull_Draw_9th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	
	
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	

	addi $8 $8 1020	
	addi $10 $10 1
    	j Skull_Draw_For

Skull_Draw_10th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
		
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	sw $9 36($8)
	sw $9 40($8)
	
	addi $8 $8 1028	
	addi $10 $10 1
    	j Skull_Draw_For

Skull_Draw_11th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 16($8)
	
	
	
	# Parte 2
	sw $9 20($8)
	sw $9 24($8)
	sw $9 28($8)
	sw $9 32($8)
	

	addi $8 $8 1032
	addi $10 $10 1
    	j Skull_Draw_For

Skull_Draw_12th_For:
	# Parte 1
	sw $9 0($8)
	sw $9 1024($8)
	
	
	addi $8 $8 8
	
	sw $9 0($8)
	sw $9 1024($8)
	
	
	addi $8 $8 8
	
	sw $9 0($8)
	sw $9 1024($8)
	

	addi $8 $8 1024	
	addi $10 $10 1
    	j Skull_Draw_For
    
end_Skull_Draw_For:
	lw $31 -4($29)
	jr $31

	# =====================================

	
# ========================================================
# **** Wizard ( Desenhar Mago - * NPC *) ****

# INPUT_Reg: $2 -> PosiÃ§Ã£o X
	  #  $3 -> PosiÃ§Ã£o Y

# OUTPUT_Reg: None

# Reg_Usados: # $2  -> Largura X do pixel
              # $3  -> Altura Y do Pixel
              # $4  -> PosiÃ§Ã£o Lagura eixo X da Tela (onde inicia o Pixel)
              # $5  -> PosiÃ§Ã£o Altura eixo Y da Tela (onde inicia o Pixel)
              # $9  -> Cor do Pixel
              # $15 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $16 -> Base do InÃƒÂ­cio da Tela, Eixo X (referencia para aonde comeÃƒÂ£ a gerar o NPC)
              # $29 -> EndereÃƒÂ§o de PILHA
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
    	# MÃƒÆ’O
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
	mul $6 $6 $5 #PosiÃ§Ã£o Y
	mul $7 $4 4 # PosiÃ§Ã£o X
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
	
	
	
Wizard_Walk:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001
	mul $9 $16 1024
	mul $10 $15 4
	add $8 $8 $9
	add $8 $8 $10
	addi $9 $0 0
	addi $8 $8 -11264
	addi $10 $8 0
	addi $5 $0 0
	addi $6 $0 0
	addi $27 $0 0
	jal timer

Wizard_Walk_For:
	beq $27 $30 End_Wizard_Walk
	beq $5 64 Other_Line_Wizard_Walk_For
	beq $6 60 New_Wizard_Walk_For
	lw $9 262144($8)
	sw $9 0($8)
	addi $8 $8 4
	addi $5 $5 1
	j Wizard_Walk_For
Other_Line_Wizard_Walk_For:
	addi $6 $6 1
	addi $5 $0 0
	addi $8 $10 1024
	addi $10 $10 1024
	j Wizard_Walk_For
	
	
New_Wizard_Walk_For:
	
	addi $2 $15 -5
	add $3 $0 $16
	jal Wizard
	
	addi $27 $27 1
	
	addi $15 $15 -5
	addi $16 $0 123
	
	lui $8 0x1001
	mul $9 $16 1024
	mul $10 $15 4
	add $8 $8 $9
	add $8 $8 $10
	addi $9 $0 0
	addi $8 $8 -5200
	addi $10 $8 0
	addi $5 $0 0
	addi $6 $0 0
	jal timer
	j Wizard_Walk_For
	
	
End_Wizard_Walk:
	
    	addi $29 $29 4
	lw $31 0($29)
	jr $31
# ============================================


# ================================
Donkey_Kong:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	add $17 $4 $0
	
	addi $26 $2 0 # X
	addi $27 $3 0 # Y
	
	addi $2 $0 8	
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 52
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 44
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 38
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA TRAZEIRA
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA DIANTEIRA MARROM
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 34
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA DIANTEIRA
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	
	
	# OUTRA PERNA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	
	
	
	# PERNA TRAZEIRO
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	# PERNA TRAZEIRO DETALHES
	# ** PRETO **
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	# ** MARROM ESCURO ** #531B02
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	# PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	# END - PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	# DETLAHE PERNA DIANTEIRA #531B02
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 40
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 36
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 34
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 32
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Draw_Pixel
	# GRAVATA 9D2445
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 34
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Draw_Pixel
	
	# DETALHES PRETO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 44
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Draw_Pixel
	
	# ================== ROSTO ===============
	#F6CE9B
	addi $2 $0 8
	addi $3 $0 10
	addi $4 $15 46
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Draw_Pixel
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 48
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xA13F00
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 50
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFFFFFF
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x000000
	jal Donkey_Kong_Draw_Pixel
	
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Draw_Pixel
	
	# VERIFICAR COR
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 54
	addi $9 $0 1
	
	jal Donkey_Kong_Draw_Pixel

	
	
Donkey_Kong_End:
	# ===============
	# DESEMPILHAR
	# ===============
	
	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

Donkey_Kong_Draw_Pixel:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #PosiÃƒÂ§ÃƒÂ£o Y
	mul $7 $4 4 # PosiÃƒÂ§ÃƒÂ£o X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0
	addi $10 $0 0
	beq $9 1 color_verification_Donkey_Kong
	
Donkey_Kong_Draw_Pixel_For:
	beq $6 $3 Donkey_Kong_Draw_Pixel_END
	beq $5 $2 Donkey_Kong_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Donkey_Kong_Draw_Pixel_For
	
Donkey_Kong_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Donkey_Kong_Draw_Pixel_For

color_verification_Donkey_Kong:

	beq $10 42 Donkey_Kong_Draw_Pixel_END
	lw $9 262144($8)
	beq $9 $17 color_find_Donkey_Kong
	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Donkey_Kong
color_find_Donkey_Kong:
	j Donkey_Kong_Draw_Pixel_END
Donkey_Kong_Draw_Pixel_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

# ====================================

Donkey_Kong_Draw_Pixel_Erased:
	sw $31 0($29)
	addi $29 $29 -4
	
	lui $8 0x1001 # Memoria
	addi $6 $0 1024
	mul $6 $6 $5 #PosiÃƒÂ§ÃƒÂ£o Y
	mul $7 $4 4 # PosiÃƒÂ§ÃƒÂ£o X
	add $8 $8 $6
	add $8 $8 $7
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	add $7 $8 $0

Donkey_Kong_Draw_Pixel_Erased_For:
	beq $6 $3 Donkey_Kong_Draw_Pixel_Erased_END
	beq $5 $2 Donkey_Kong_Draw_Pixel_Erased_Next_Line
	lw $9 262144($8)
	
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Donkey_Kong_Draw_Pixel_Erased_For
	
Donkey_Kong_Draw_Pixel_Erased_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Donkey_Kong_Draw_Pixel_Erased_For

Donkey_Kong_Draw_Pixel_Erased_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# ==============================================

Donkey_Kong_Wall:
	# ========================
	# EMPILHAR
	# ========================
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $26 $2 0
	addi $27 $3 0
	# ============= APAGAR =================
	
	jal Donkey_Kong_Erased
	
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)

    	jr $31
# =======================================
# ================================
Donkey_Kong_Erased:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	add $16 $3 $0
	
	addi $2 $0 8	
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 2
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 12	
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 4
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 6
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 8
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 52
	addi $5 $16 8
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 10
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 44
	addi $5 $16 12
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 20
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 24
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 28
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 30
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 34
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 32
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 34
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 38
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# PERNA TRAZEIRA
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 40
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 46
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 48
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 52
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 52
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# PERNA DIANTEIRA MARROM
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 40
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 34
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 48
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 52
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 52
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# PERNA DIANTEIRA
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 48
	jal Donkey_Kong_Draw_Pixel_Erased
	
	
	
	# OUTRA PERNA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 46
	jal Donkey_Kong_Draw_Pixel_Erased
	
	
	
	
	# PERNA TRAZEIRO
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 46
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 48
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 48
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# PERNA TRAZEIRO DETALHES
	# ** PRETO **
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 40
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 46
	jal Donkey_Kong_Draw_Pixel_Erased
	# ** MARROM ESCURO ** #531B02
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 34
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	# END - PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 34
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 30
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 24
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# DETLAHE PERNA DIANTEIRA #531B02
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 40
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 44
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 42
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 40
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 30
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 36
	addi $5 $16 26
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 34
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 32
	addi $5 $16 16
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 12
	jal Donkey_Kong_Draw_Pixel_Erased
	# GRAVATA 9D2445
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 34
	addi $5 $16 14
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 34
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# DETALHES PRETO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 44
	addi $5 $16 38
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# ================== ROSTO ===============
	#F6CE9B
	addi $2 $0 8
	addi $3 $0 10
	addi $4 $15 46
	addi $5 $16 12
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 10
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 14
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 16
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 20
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 22
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 24
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 26
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 28
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 30
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 32
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 34
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 36
	jal Donkey_Kong_Draw_Pixel_Erased
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 48
	addi $5 $16 14
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 16
	jal Donkey_Kong_Draw_Pixel_Erased 
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 18
	jal Donkey_Kong_Draw_Pixel_Erased 
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 50
	addi $5 $16 18
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 20
	jal Donkey_Kong_Draw_Pixel_Erased
	
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 30
	jal Donkey_Kong_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 28
	jal Donkey_Kong_Draw_Pixel_Erased
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 26
	jal Donkey_Kong_Draw_Pixel_Erased


	# ===============
	# DESEMPILHAR
	# ===============
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

