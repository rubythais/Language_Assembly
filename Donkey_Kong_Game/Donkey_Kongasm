.text
main:	jal background_black
        jal Tela_Inicio
        jal KeyBoard 
inicio:
        lw $26 4($21)
        beq $26 'v' inicio_end

        j inicio
	
inicio_end:
	jal Screen_Praia_1
	#jal Screen_Mario_1
	#jal talk2

# ====================================
walk_Screen_Praia_1:
	jal timer

	jal Monkey_Control
	lw $26 4($21)
        # Ver se o npc morreu
	beq $12 0xB4461B Monkey_Die
	# Kong Morre
	beq $11 0xB4461B main
	
      	beq $26 $22 walk_Praia_left
      	beq $26 $23 walk_Praia_right
      	beq $26 $24 walk_Praia_down
      	beq $26 $25 walk_Praia_up

	j walk_Praia_gravity
	
walk_Praia_left:
	jal timer2
	beq $2 -5 walk_Praia_gravity
	
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 -10
	addi $3 $3 0
	jal Donkey_Kong
	
	addi $26 $0 'p'
	sw $26 4($21)
	j walk_Praia_gravity

walk_Praia_right:
	beq $10 0 walk_Praia_right_Screen1
	beq $10 1 walk_Praia_right_Screen2
	beq $10 2 talk_peach
walk_Praia_right_Screen1:
	beq $2 195 Screen_Praia_2
        j walk_Praia_right_continues


walk_Praia_right_Screen2:
	beq $2 195 Screen_Praia_3
        j walk_Praia_right_continues

talk_peach:
	beq $2 105 talk_1
        j walk_Praia_right_continues
talk_1:
	jal talk1
	j Screen_Mario_1
walk_Praia_right_continues:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 10
	addi $3 $3 0
	jal Donkey_Kong
	
	addi $26 $0 'p'
	sw $26 4($21)
	j walk_Praia_down
	
walk_Praia_up:
	
	beq $18 1 walk_Praia_gravity
	
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 -100
	jal Donkey_Kong
	
	addi $26 $0 'p'
	sw $26 4($21)
	addi $18 $18 1
	j walk_Praia_gravity
walk_Praia_down:

	beq $3 $20 tocou_no_chao_Screen_Praia_1
	slt $5 $20 $3
	beq $5 1 change_Height_Screen_Praia_1
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 20
	jal Donkey_Kong
	
	addi $26 $0 'p'
	sw $26 4($21)
	j walk_Screen_Praia_1

walk_Praia_gravity:
	beq $3 $20 tocou_no_chao_Screen_Praia_1
	slt $5 $20 $3
	beq $5 1 change_Height_Screen_Praia_1
	
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $3 10
	jal Donkey_Kong
	
	addi $26 $0 'p'
	sw $26 4($21)
	j walk_Screen_Praia_1
	
tocou_no_chao_Screen_Praia_1:
	addi $18 $0 0
	j walk_Screen_Praia_1
change_Height_Screen_Praia_1:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	
	addi $2 $2 0
	addi $3 $0 180
	jal Donkey_Kong
	addi $18 $0 0
	j walk_Screen_Praia_1
Monkey_Die:
	addi $30 $0 1
	addi $7 $7 0
	addi $8 $8 0
	jal Monkey_Erased
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	addi $12 $0 0
	j walk_Praia_gravity
# =================================================

Screen_Praia_2:	
	
	jal Cenario_Praia_Tela2
	jal KeyBoard

	

	addi $7 $0 150
	addi $8 $0 210
	jal Monkey
	
	addi $2 $0 5
	addi $3 $0 180
	addi $4 $0 0
	ori $4 0xB4461B
	
	jal Donkey_Kong
	addi $20 $0 180
	addi $30 $0 0
        addi $10 $10 1
	j walk_Screen_Praia_1

Screen_Praia_3:
        jal Cenario_Praia_Tela3
	jal KeyBoard
	
	addi $7 $0 100
	addi $8 $0 210
	jal Monkey
	
	
	addi $2 $0 5
	addi $3 $0 180
	addi $4 $0 0
	ori $4 0xB4461B
	
	jal Donkey_Kong
	addi $20 $0 180
	addi $30 $0 0
	
	addi $12 $0 200
	addi $13 $0 170
	jal peach
	addi $10 $0 2
	j walk_Screen_Praia_1

fim:
	addi $2 $0 10
	syscall
	
Monkey_Control:
	sw $31 0($29)
	addi $29 $29 -4
	
	beq $30 1 Monkey_Control_End
	addi $7 $7 0
	addi $8 $8 0
	jal Monkey_Erased
	
	addi $7 $7 -1
	addi $8 $8 0
	jal Monkey
Monkey_Control_End:	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
# ========================================
Screen_Praia_1:
        sw $31 0($29)
        addi $29 $29 -4

	jal Cenario_Praia_Tela1
	jal resetar
	jal KeyBoard
	
	addi $7 $0 200
	addi $8 $0 210
	jal Monkey
	
	addi $2 $0 5
	addi $3 $0 180
	addi $4 $0 0
	ori $4 0xB4461B
	
	jal Donkey_Kong
	addi $20 $0 180
	
        addi $29 $29 4
        lw $31 0($29)

        jr $31
# ========================================
KeyBoard:
# =====================
	# EMPILHAR
	# ==================== 
	sw $31 0($29)
	addi $29 $29 -4
	 	
	lui $21 0xffff
      	
      	addi $22 $0 'a'
      	addi $23 $0 'd'
      	addi $24 $0 's'
      	addi $25 $0 'w'
      	addi $26 $0 0
      	
      	# =====================
	# DESEMPILHAR
	# ==================== 
	addi $29 $29 4
	lw $31 0($29)
	
      	jr $31
# ========================
# ============================================
# ========================================================================
# CENARIO MARIO INVERTIDO TELAS

Screen_Mario_1:

   	 jal cenario_mario_1
   	 # posição inicial Donkey Kong
    addi $2 $0 10 # 2
	addi $3 $0 106 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $0 15
	addi $13 $0 52
	jal peach
	# TECLADO 
walk_base_Donkey_Mario_Cenary:
	jal KeyBoard
      	
      	
	
	addi $18 $0 0 # Limite para morrer Chão
	addi $19 $0 0 # Limite para mudar os parametros X 
	ori $19 0x2F2F2F
	addi $26 $0 'p'
	sw $26 4($21)
	
	
	
# ========================================================
# ****  walk_cenario_mario1 (Faz o Donkey andar no cenário 1 do mario) ****

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Posicao X Donkey Kong
			  # $3 -> Posicao Y Donkey Kong

              
              # $9  -> Cor do Pixel

              # $11 -> Var -> 'a' (ESQUERDA)
              # $12 -> Var -> 'd' (DIREITA)
              # $13 -> Var -> 's' (BAIXO)
              # $14 -> Var -> 'w' (PULAR)
			  
			# VARIVEL DE CONTROLE
			  # $18 -> Controla os pulos do boneco


              # $19 -> Cor base para Boneco andar (CHAO)

              # $21 -> Endereco para memoria TECLADO
              # $23 -> Varivel que recebe a memoria do TECLADO

			  

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
		
walk_cenario_mario1:
	    	
    	
      	# função tempo
		jal timer
		# buscar o comando do teclado
      	lw $26 4($21)
      	beq $26 $22 walk_Donkey_Mario_Left
      	beq $26 $23 walk_Donkey_Mario_Right
      	beq $26 $24 walk_Donkey_Mario_Down
      	beq $26 $25 Walk_Donkey_Mario_Up
	
	j walk_Donkey_Mario_Down

walk_Donkey_Mario_Left:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 -10
	addi $3 $3 0
	jal Donkey_Kong_Mario
	
	addi $12 $12 -10
	addi $13 $13 0
	jal peach

	addi $26 $0 'p'
	sw $26 4($21)
	addi $17 $0 0
	j walk_Donkey_Mario_Down
walk_Donkey_Mario_Right:
	beq $10 0 second_screen_Mario_Invertid
	beq $10 1 thred_screen_Mario_Invertid
	beq $10 2 forth_screen_Mario_Invertid
	
	j continue_walk_Donkey_Mario_Right

second_screen_Mario_Invertid:
	beq $2 190 cenario_mario_2
	j continue_walk_Donkey_Mario_Right


thred_screen_Mario_Invertid:
	beq $2 190 cenario_mario_3
	j continue_walk_Donkey_Mario_Right

forth_screen_Mario_Invertid:
	beq $2 190 talked2
	j continue_walk_Donkey_Mario_Right

talked2:
	jal talk2
	jal Base_Cenario_Mario_Plataformas_Plataformas
continue_walk_Donkey_Mario_Right:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 10
	addi $3 $3 0
	jal Donkey_Kong_Mario
	
	addi $12 $12 10
	addi $13 $13 0
	jal peach

	addi $26 $0 'p'
	sw $26 4($21)
	

	j walk_Donkey_Mario_Down

Walk_Donkey_Mario_Up:
	beq $18 1 walk_Donkey_Mario_Down
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 0
	addi $3 $3 -80
	jal Donkey_Kong_Mario
	
	addi $12 $12 0
	addi $13 $13 -80
	jal peach

	addi $26 $0 'p'
	sw $26 4($21)
	addi $18 $18 1
	j walk_Donkey_Mario_Down

tocou_no_chao:
	addi $18 $0 0
	j walk_cenario_mario1
walk_Donkey_Mario_Down:
	
	beq $9 $19 tocou_no_chao
	beq $3 186 cair
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 0
	addi $3 $3 10
	jal Donkey_Kong_Mario
	
	addi $12 $12 0
	addi $13 $13 10
	jal peach

	addi $26 $0 'p'
	sw $26 4($21)
	
	j walk_cenario_mario1
	
cair:

	beq $3 186 game_over
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 0
	addi $3 $3 10
	jal Donkey_Kong_Mario
	
	addi $12 $12 0
	addi $13 $13 10
	jal peach

	addi $26 $0 'p'
	sw $26 4($21)
	jal timer
	j cair
	
game_over:

	jal timer
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Mario_Erased
	
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
	
	addi $2 $2 25 # PosiÃ§Ã£o X
	addi $3 $3 10 # PosiÃ§Ã£o Y
	jal Skull_Draw
	
        j main
	addi $2 $0 10
	syscall	

	#addi $2 $0 100
	#addi $3 $0 123
	#jal Wizard
	
	#addi $30 $0 5
	#jal Wizard_Walk




# =========================================
# ========================================================
# ****  cenario_mario_1 (Desenha o cenário do Mario Invertido- TELA 1) ****

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Lagura das Plataformas do Mario Invertido
			  # $3 -> Altura das Plataformas do Mario Invertido
			  # $4 -> Inicio na - POSICAO X -  das Plataformas do Mario Invertido
			  
               

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL
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

	addi $10 $0 0
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# =========================================
# ========================================================
# ****  cenario_mario_2 (Desenha o cenário do Mario Invertido- TELA 2) ****

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Lagura das Plataformas do Mario Invertido
			  # $3 -> Altura das Plataformas do Mario Invertido
			  # $4 -> Inicio na - POSICAO X -  das Plataformas do Mario Invertido
			  
               

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL# $31 -> Return do JAL

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
	addi $4 $0 150

	jal Draw_Plataform_Mario
	
	
	addi $2 $0 10
	addi $3 $0 36
	addi $4 $0 246

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
	
	addi $10 $0 1
	
	
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	# posição inicial Donkey Kong
      	addi $2 $0 10 # 2
	addi $3 $0  86 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $0 15
	addi $13 $0 32
	jal peach
	
	j walk_base_Donkey_Mario_Cenary
	
# =========================================
# ========================================================
# ****  cenario_mario_3 (Desenha o cenário do Mario Invertido- TELA 2) ****3

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Lagura das Plataformas do Mario Invertido
			  # $3 -> Altura das Plataformas do Mario Invertido
			  # $4 -> Inicio na - POSICAO X -  das Plataformas do Mario Invertido
			  
               

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL# $31 -> Return do JAL

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
	
	addi $2 $0 26
	addi $3 $0 50
	addi $4 $0 80

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
	
	addi $10 $0 2
	
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	addi $2 $0 10 # 2
	addi $3 $0 96 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $0 15
	addi $13 $0 42
	jal peach
	
	j walk_base_Donkey_Mario_Cenary
	
# =========================================
# ========================================================
# ****  cenario_mario_4 (Desenha o cenário do Mario Invertido- TELA 4) ****

# INPUT_Reg: None

# OUTPUT_Reg: None

# Reg_Usados: 
			  # $2 -> Lagura das Plataformas do Mario Invertido
			  # $3 -> Altura das Plataformas do Mario Invertido
			  # $4 -> Inicio na - POSICAO X -  das Plataformas do Mario Invertido
			  
               

              # $29 -> EndereÃƒÂ§o de PILHA
              # $31 -> Return do JAL# $31 -> Return do JAL
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
	
	
	addi $10 $0 3
	
	# ============
	# DESEMPILHAR
	# ===========
	addi $29 $29 4
	lw $31 0($29)
	
	addi $2 $0 10 # 2
	addi $3 $0 76 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $0 15
	addi $13 $0 22
	jal peach
	
	j walk_base_Donkey_Mario_Cenary





# ================================
Donkey_Kong:

       # =============================
        # EMPILHAR
        # =============================

	sw $31 0($29)
        addi $29 $29 -4


	jal Empilhar_all
	
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
	ori $9 0xf0eeb1
	jal Donkey_Kong_Draw_Pixel
	
	# VERIFICAR COR
	
	addi $2 $0 2
	addi $3 $0 50
	addi $4 $15 62
	addi $5 $16 12
	addi $9 $0 2
	
	
	jal Donkey_Kong_Draw_Pixel
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 54
	addi $9 $0 1
	#ori $9 0xfffff
	jal Donkey_Kong_Draw_Pixel
	
	
	

	
	
Donkey_Kong_End:
	# ===============
	# DESEMPILHAR
	# ===============
        jal Desempilhar_all

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
	beq $9 2 color_Colision_Donkey_Kong
	
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
	beq $9 $17 color_find_Donkey_Kong
	beq $10 42 Donkey_Kong_Draw_Pixel_END
	lw $9 0($8)
	beq $9 $17 color_find_Donkey_Kong
	lw $9 1024($8)
	beq $9 $17 color_find_Donkey_Kong
	lw $9 2048($8)
	beq $9 $17 color_find_Donkey_Kong
	lw $9 3072($8)
	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Donkey_Kong
	
color_find_Donkey_Kong:
	addi $12 $9 0
	
	j Donkey_Kong_Draw_Pixel_END
color_Colision_Donkey_Kong:
	beq $9 $17 color_Colision_Find_Donkey_Kong
	beq $10 30 Donkey_Kong_Draw_Pixel_END
	lw $9 0($8)
	beq $9 $17 color_Colision_Find_Donkey_Kong
	lw $9 4($8)
	addi $10 $10 1
	addi $8 $8 1024
	j color_Colision_Donkey_Kong
	
color_Colision_Find_Donkey_Kong:
	addi $11 $9 0
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

        sw $8 0($29)
        addi $29 $29 -4

        sw $7 0($29)
        addi $29 $29 -4

	sw $4 0($29)
	addi $29 $29 -4

	sw $3 0($29)
	addi $29 $29 -4

	sw $2 0($29)
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
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $7 0($29)

	addi $29 $29 4
	lw $8 0($29)

        addi $29 $29 4
	lw $31 0($29)

	jr $31

peach:
	
	sw $31 0($29)
        addi $29 $29 -4


	jal Empilhar_all
	addi $15 $12 0
	addi $16 $13 0
	
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
	
 
peach_end:
	# ===============
	# DESEMPILHAR
	# ===============
        jal Desempilhar_all

        addi $29 $29 4
        lw $31 0($29)

	jr $31

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
	jal Empilhar_all

	addi $15 $12 0
	addi $16 $13 0
	
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
	

peach_Erased_end:
	# ===============
	# DESEMPILHAR
	# ===============
        jal Desempilhar_all

        addi $29 $29 4
        lw $31 0($29)

	jr $31

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
	
	sw $9 262144($8)
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

# ==============================================
# PRAIA

Monkey:

    # =============================
    # EMPILHAR
    # =============================

	sw $31 0($29)
        addi $29 $29 -4

	sw $13 0($29)
	addi $29 $29 -4

	sw $12 0($29)
	addi $29 $29 -4

	sw $8 0($29)
         addi $29 $29 -4

	sw $7 0($29)
        addi $29 $29 -4

	sw $4 0($29)
         addi $29 $29 -4

	sw $3 0($29)
        addi $29 $29 -4

	sw $2 0($29)
        addi $29 $29 -4

	
    # =============================
    
    # =============================
    # SEGUIR DE BASE
    # =============================

	add $15 $7 $0
	add $16 $8 $0
	
    # =============================

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
	# =============================

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
	# =============================

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
	# =======================

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
	# =======================

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
	# ===========================

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
	# ===================== 

	addi $2 $0 4
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Draw_Pixel
	

	# ====================
	
	# ===================== 
	# BRAÇO ESQUERDO
	# =====================
 
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
	# BRAÇO DIREITO
	# ===================== 

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
    # DESEMPILHAR    
	# ====================
	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $7 0($29)

	addi $29 $29 4
	lw $8 0($29)

    addi $29 $29 4
	lw $12 0($29)

    addi $29 $29 4
	lw $13 0($29)

    addi $29 $29 4
	lw $31 0($29)

	jr $31
	



	

	



# ========================================================
# **** Desenhar Macaco ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

Monkey_Draw_Pixel:
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
    # DESEMPILHAR
    addi $29 $29 4
	lw $31 0($29)
	jr $31

# ============================
# APAGAR MONKEY
Monkey_Erased:

    # =============================
    # EMPILHAR
    # =============================

	sw $31 0($29)
        addi $29 $29 -4

	sw $13 0($29)
	addi $29 $29 -4

	sw $12 0($29)
	addi $29 $29 -4

	sw $8 0($29)
         addi $29 $29 -4

	sw $7 0($29)
        addi $29 $29 -4

	sw $4 0($29)
         addi $29 $29 -4

	sw $3 0($29)
        addi $29 $29 -4

	sw $2 0($29)
        addi $29 $29 -4
    # =============================
    
    # =============================
    # SEGUIR DE BASE
    # =============================

	add $15 $7 $0
	add $16 $8 $0
	
    # =============================

	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 -5
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 -4
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 -3
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 17	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 -2
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 19	
	addi $3 $0 1
	addi $4 $15 -3
	addi $5 $16 -1
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 -3
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	
	addi $2 $0 21	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 22	
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 21	
	addi $3 $0 4
	addi $4 $15 -4
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 21	
	addi $3 $0 2
	addi $4 $15 1
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 15	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 15	
	addi $3 $0 1
	addi $4 $15 9
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 16	
	addi $3 $0 1
	addi $4 $15 9
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel


	# =============================
	# PERNA ESQUERDA
	# =============================

	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 20	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 22	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 7	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 5
	addi $5 $16 23
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 7	
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Erased_Draw_Pixel


	# =============================
	# PERNA ESQUERDA
	# =============================

	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 20 
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 21 
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 22 
	addi $5 $16 23
	addi $9 $0 0
	ori $9 0xB4461B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 1
	addi $4 $15 22 
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 21 
	addi $5 $16 25
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Erased_Draw_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x912703
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x912703
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 5
	addi $4 $15 28
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 -2
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0x8C2C0B
	jal Monkey_Erased_Draw_Pixel
	
	
	
	
	# =======================
	# ROSTO
	# =======================

	addi $2 $0 4	
	addi $3 $0 1
	add  $4 $0 $15
	add  $5 $0 $16
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 7
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 6
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel


	# =======================
	# OLHOS
	# =======================

	addi $2 $0 1	
	addi $3 $0 3
	addi $4 $15 3
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x030004
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 3
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x030004
	jal Monkey_Erased_Draw_Pixel


	# ===========================
	# ROSTO 2
	# ===========================

	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 -1
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 13	
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 11	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0xFEC482
	jal Monkey_Erased_Draw_Pixel

	addi $2 $0 9	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xE2A162
	jal Monkey_Erased_Draw_Pixel

	# ===================== 
	# NARIZ
	# ===================== 

	addi $2 $0 4
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Erased_Draw_Pixel
	

	# ====================
	
	# ===================== 
	# BRAÇO ESQUERDO
	# =====================
 
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 2
	addi $4 $15 3
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x7C2A04
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0xB6451B
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0x7C2A04
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Erased_Draw_Pixel
	
	# ====================
	
	# ===================== 
	# BRAÇO DIREITO
	# ===================== 

	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 12
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 16
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 13
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Erased_Draw_Pixel
	
	
	addi $2 $0 1	
	addi $3 $0 5
	addi $4 $15 17
	addi $5 $16 17
	addi $9 $0 0
	ori $9 0x000000
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 5	
	addi $3 $0 1
	addi $4 $15 13
	addi $5 $16 21
	addi $9 $0 0
	ori $9 0xFBC680
	jal Monkey_Erased_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 13
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xE1A068
	jal Monkey_Erased_Draw_Pixel
	
	
	

	# ====================
    # DESEMPILHAR    
	# ====================
	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)

	addi $29 $29 4
	lw $4 0($29)

	addi $29 $29 4
	lw $7 0($29)

	addi $29 $29 4
	lw $8 0($29)

    addi $29 $29 4
	lw $12 0($29)

    addi $29 $29 4
	lw $13 0($29)

    addi $29 $29 4
	lw $31 0($29)

	jr $31



	

	



# ========================================================
# **** Desenhar Macaco ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

Monkey_Erased_Draw_Pixel:
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

Monkey_Erased_Draw_Pixel_For:
	beq $6 $3 End_Monkey_Erased_Draw_Pixel
	beq $5 $2 Monkey_Erased_Draw_Pixel_Mext_Line
	lw $9 262144($8)
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Monkey_Erased_Draw_Pixel_For
	
Monkey_Erased_Draw_Pixel_Mext_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Monkey_Erased_Draw_Pixel_For

End_Monkey_Erased_Draw_Pixel:
    # DESEMPILHAR
    addi $29 $29 4
	lw $31 0($29)
	jr $31

# ============================================================

# ~~~~~~~~~~~~~~~ PERSONAGENS GLOBAIS ~~~~~~~~~~~~~~~




# ~~~~~~~~~~~~~~~ Cenário De Praia ~~~~~~~~~~~~~~~
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ================================================================
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ~~~~~~~~~~~~~~~ Cenário De Praia ~~~~~~~~~~~~~~~
Tela_Inicio:
	# ================
	# EMPILHAR
	# ================
	sw $31 0($29)
	addi $29 $29 -4
	addi $2 $0 100
	addi $3 $0 100
	jal Button_Play
	
	addi $2 $0 90  
	addi $3 $0 180
	
	jal Donkey_Kong

	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

Cenario_Praia_Tela1:
	# ================
	# EMPILHAR
	# ================
	sw $31 0($29)
	addi $29 $29 -4
	
    jal Sky_Draw
    jal Sunset 
    jal Jungle_Draw
    jal Sand_Draw
    jal Details_Draw_Sand
    jal Details_Draw_Jungle
    addi $2 $0 0
    addi $3 $0 0
    jal Coconut_Tree_Draw
    
Cenario_Praia_Tela1_END:
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	
Cenario_Praia_Tela2:
	# ================
	# EMPILHAR
	# ================
	sw $31 0($29)
	addi $29 $29 -4
	
    jal Sky_Draw
    jal Sunset 
    jal Jungle_Draw
    jal Sand_Draw
    jal Details_Draw_Sand
    jal Details_Draw_Jungle
    addi $2 $0 120
    addi $3 $0 0
    jal Coconut_Tree_Draw
    
    addi $2 $0 200
    addi $3 $0 10
    jal Coconut_Tree_Draw
    
Cenario_Praia_Tela2_END:
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
Cenario_Praia_Tela3:
	# ================
	# EMPILHAR
	# ================
	sw $31 0($29)
	addi $29 $29 -4
	
    jal Sky_Draw
    jal Sunset 
    jal Jungle_Draw
    jal Sand_Draw
    jal Details_Draw_Sand
    jal Details_Draw_Jungle
 
    
Cenario_Praia_Tela_END:
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

# ========================================================
# **** Sky_Draw (Desenhar o Céu com Gradiente Azul) ****

# INPUT_Reg: None	    

# OUTPUT_Reg: None

# Reg_Usados: # $7  -> Varivél SEGUND�?RIA para definir Altura de Iniciar o PIXEL
              # $8  -> Endereço de Memória 
              # $9  -> Cor do Pixel
              # $10 -> Contador (Conta para saber o momento de iniciar outro Comando)
              # $11 -> Contador SECUNDARIO (AJuda na Altura de Pixel)
              # $29 -> Endereço de PILHA
              # $31 -> Return do JAL


Sky_Draw:
	# ====================
    # EMPILHAR
	# ====================

    sw $31 0($29)
    addi $29 $29 -4

    lui $8 0x1001
    addi $9 $0 0
    ori $9 0x158CC6 # Cor -> #158CC6
    addi $10 $0 0 # Contador
    
Skye_First_For:
    beq $10 256 end_Skye_First_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    addi $8 $8 4
    addi $10 $10 1
    j Skye_First_For
    
end_Skye_First_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x1B96D2 # Cor -> #1B96D2
    addi $7 $0 1024
    mul $7 $7 4
    lui $8 0x1001
    add $8 $8 $7
    j Skye_2th_For
    
Skye_2th_For:
    beq $10 256 end_Skye_2th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2

    addi $8 $8 4
    addi $10 $10 1
    j Skye_2th_For
    
end_Skye_2th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x23A0E0 # Cor -> #23A0E0
    addi $7 $0 1024
    mul $7 $7 6
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_3th_For

Skye_3th_For:
    beq $10 256 end_Skye_3th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================
    
    sw $9 262144($8) # 1
    sw $9 263168($8) # 2

    addi $8 $8 4
    addi $10 $10 1
    j Skye_3th_For

end_Skye_3th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x2DABE8 # Cor -> #2DABE8
    addi $7 $0 1024
    mul $7 $7 8
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_4th_For

Skye_4th_For:
    beq $10 256 end_Skye_4th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)

    # ====================
    # COPIAR TELA
	# ====================
    
    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3

    addi $10 $10 1
    addi $8 $8 4
    j Skye_4th_For

end_Skye_4th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x2DA9E7 # Cor -> #2DA9E7
    addi $7 $0 1024
    mul $7 $7 11
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_5th_For

Skye_5th_For:
    beq $10 256 end_Skye_5th_For
    sw $9 0($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
   

    addi $10 $10 1
    addi $8 $8 4
    j Skye_5th_For

end_Skye_5th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x39B4F0 # Cor -> #39B4F0
    addi $7 $0 1024
    mul $7 $7 12
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_6th_For
    
Skye_6th_For:
    beq $10 256 end_Skye_6th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4

    addi $10 $10 1
    addi $8 $8 4
    j Skye_6th_For

end_Skye_6th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x4BBDF9 # Cor -> #4BBDF9
    addi $7 $0 1024
    mul $7 $7 16
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_7th_For

Skye_7th_For:
    beq $10 256 end_Skye_7th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2


    addi $10 $10 1
    addi $8 $8 4
    j Skye_7th_For

end_Skye_7th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x5AC4F8 # Cor -> #5AC4F8
    addi $7 $0 1024
    mul $7 $7 18
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_8th_For

Skye_8th_For:
    beq $10 256 end_Skye_8th_For
    sw $9 0($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1


    addi $10 $10 1
    addi $8 $8 4
    j Skye_8th_For

end_Skye_8th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x5BC5F9 # Cor -> #5BC5F9
    addi $7 $0 1024
    mul $7 $7 19
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_9th_For

Skye_9th_For:
    beq $10 256 end_Skye_9th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2

    addi $10 $10 1
    addi $8 $8 4
    j Skye_9th_For

end_Skye_9th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x81D2FA # Cor -> #81D2FA
    addi $7 $0 1024
    mul $7 $7 21
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_10th_For
    
Skye_10th_For:
    beq $10 256 end_Skye_10th_For
    sw $9 0($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1


    addi $10 $10 1
    addi $8 $8 4
    j Skye_10th_For

end_Skye_10th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x74C9F2 # Cor -> #74C9F2
    addi $7 $0 1024
    mul $7 $7 22
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_11th_For
    
Skye_11th_For:
    beq $10 256 end_Skye_11th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6


    addi $10 $10 1
    addi $8 $8 4
    j Skye_11th_For

end_Skye_11th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x75C7EF # Cor -> #75C7EF
    addi $7 $0 1024
    mul $7 $7 28
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_12th_For
    
Skye_12th_For:
    beq $10 256 end_Skye_12th_For
    sw $9 0($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1


    addi $10 $10 1
    addi $8 $8 4
    j Skye_12th_For

end_Skye_12th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x7DCBF1 # Cor -> #7DCBF1
    addi $7 $0 1024
    mul $7 $7 29
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_13th_For
    
Skye_13th_For:
    beq $10 256 end_Skye_13th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3


    addi $10 $10 1
    addi $8 $8 4
    j Skye_13th_For

end_Skye_13th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x89D3F8 # Cor -> #89D3F8
    addi $7 $0 1024
    mul $7 $7 31
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_14th_For

Skye_14th_For:
    beq $10 256 end_Skye_14th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6


    addi $10 $10 1
    addi $8 $8 4
    j Skye_14th_For
    
end_Skye_14th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x9ADDFF # Cor -> #9ADDFF
    addi $7 $0 1024
    mul $7 $7 37
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_15th_For

Skye_15th_For:
    beq $10 256 end_Skye_15th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2


    addi $10 $10 1
    addi $8 $8 4
    j Skye_15th_For

end_Skye_15th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0x8ACEF0 # Cor -> #8ACEF0
    addi $7 $0 1024
    mul $7 $7 39
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_16th_For

Skye_16th_For:
    beq $10 256 end_Skye_16th_For
    sw $9 0($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1


    addi $10 $10 1
    addi $8 $8 4
    j Skye_16th_For
    
end_Skye_16th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xAFDDF5 # Cor -> #AFDDF5
    addi $7 $0 1024
    mul $7 $7 40
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_17th_For

Skye_17th_For:
    beq $10 256 end_Skye_17th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5


    addi $10 $10 1
    addi $8 $8 4
    j Skye_17th_For

end_Skye_17th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xC1E5FB # Cor -> #C1E5FB
    addi $7 $0 1024
    mul $7 $7 45
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_18th_For

Skye_18th_For:
    beq $10 256 end_Skye_18th_For
    sw $9 0($8)
    sw $9 1024($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2


    addi $10 $10 1
    addi $8 $8 4
    j Skye_18th_For

end_Skye_18th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xAFDDF5 # Cor -> #AFDDF5
    addi $7 $0 1024
    mul $7 $7 47
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_19th_For
    
Skye_19th_For:
    beq $10 256 end_Skye_19th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    

    addi $10 $10 1
    addi $8 $8 4
    j Skye_19th_For

end_Skye_19th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xC0E6FB # Cor -> #C0E6FB
    addi $7 $0 1024
    mul $7 $7 52
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_20th_For
    
Skye_20th_For:
    beq $10 256 end_Skye_20th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)
    sw $9 6144($8)
    sw $9 7168($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6
    sw $9 268288($8) # 7
    sw $9 269312($8) # 8
    #sw $9 267264($8) # 9
    #sw $9 267264($8) # 10

    addi $10 $10 1
    addi $8 $8 4
    j Skye_20th_For

end_Skye_20th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xD0EDFA # Cor -> #D0EDFA
    addi $7 $0 1024
    mul $7 $7 59
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_21th_For


Skye_21th_For:
	beq $10 256 end_Skye_21th_For
    sw $9 0($8)
    sw $9 1024($8)
    

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    

    addi $10 $10 1
    addi $8 $8 4
    j Skye_21th_For

end_Skye_21th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xCAEBFC # Cor -> #CAEBFC
    addi $7 $0 1024
    mul $7 $7 61
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_22th_For

Skye_22th_For:
    beq $10 256 end_Skye_22th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)
    sw $9 6144($8)
    sw $9 7168($8)
    sw $9 8192($8)
    sw $9 9216($8)
    sw $9 10240($8)
    sw $9 11264($8)
    sw $9 12288($8)
    sw $9 13312($8)
    sw $9 14336($8)
    sw $9 15360($8)
    sw $9 16384($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6
    sw $9 268288($8) # 7
    sw $9 269312($8) # 8
    sw $9 267264($8) # 9
    sw $9 268288($8) # 10
    sw $9 269312($8) # 11
    sw $9 270336($8) # 12
    sw $9 271360($8) # 13
    sw $9 272384($8) # 14
    sw $9 273408($8) # 15
    sw $9 274432($8) # 16
    sw $9 275456($8) # 17

    addi $10 $10 1
    addi $8 $8 4
    j Skye_22th_For


end_Skye_22th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xCEE8F5 # Cor -> #CEE8F5
    addi $7 $0 1024
    mul $7 $7 68
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_23th_For


Skye_23th_For:
	beq $10 256 end_Skye_23th_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)
    
    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6
    
    addi $10 $10 1
    addi $8 $8 4
    j Skye_23th_For

end_Skye_23th_For:
    addi $10 $0 0 # Reset Contador
    addi $9 $0 0
    ori $9 0xDDF1FC # Cor -> #DDF1FC
    addi $7 $0 1024
    mul $7 $7 78
    lui $8 0x1001
    add $8 $8 $7
    addi $11 $0 0 # Segundo Contador
    j Skye_24th_For


Skye_24th_For:
    beq $10 256 end_Skye_For
    sw $9 0($8)
    sw $9 1024($8)
    sw $9 2048($8)
    sw $9 3072($8)
    sw $9 4096($8)
    sw $9 5120($8)
    sw $9 6144($8)
    sw $9 7168($8)
    sw $9 8192($8)
    sw $9 9216($8)
    sw $9 10240($8)
    sw $9 11264($8)
    sw $9 12288($8)
    sw $9 13312($8)
    sw $9 14336($8)
    sw $9 15360($8)
    sw $9 16384($8)

    # ====================
    # COPIAR TELA
	# ====================

    sw $9 262144($8) # 1
    sw $9 263168($8) # 2
    sw $9 264192($8) # 3
    sw $9 265216($8) # 4
    sw $9 266240($8) # 5
    sw $9 267264($8) # 6
    sw $9 268288($8) # 7
    sw $9 269312($8) # 8
    sw $9 267264($8) # 9
    sw $9 268288($8) # 10
    sw $9 269312($8) # 11
    sw $9 270336($8) # 12
    sw $9 271360($8) # 13
    sw $9 272384($8) # 14
    sw $9 273408($8) # 15
    sw $9 274432($8) # 16
    sw $9 275456($8) # 17
    
    addi $10 $10 1
    addi $8 $8 4
    j Skye_24th_For


	

end_Skye_For:
    # ====================
    # DESEMPILHAR
    # ====================
    addi $29 $29 4
	lw $31 0($29)

	jr $31

    
# ========================================================
# **** Sand_Draw (Desenhar a Areia do Cenário) ****

# INPUT_Reg: None	    

# OUTPUT_Reg: None

# Reg_Usados: # $7  -> Varivél SEGUND�?RIA para definir Altura de Iniciar o PIXEL
              # $8  -> Endereço de Memória 
              # $9  -> Cor do Pixel
              # $10 -> Contador (Conta para saber o momento de iniciar outro Comando)
              # $11 -> Contador SECUNDARIO (AJuda na Altura de Pixel)
              # $29 -> Endereço de PILHA
              # $31 -> Return do JAL

Sand_Draw:
    # ====================
    # EMPILHAR
	# ====================
    sw $31 0($29)
    addi $29 $29 -4

    addi $7 $0 1024
    mul $7 $7 170 # -> Inicio linha 170
    lui $8 0x1001
    add $8 $8 $7
    addi $9 $0 0
    ori $9 0xF0EEB1 # Cor -> #F0EEB1
    addi $10 $0 0 # Contador
    addi $11 $0 0 # Contador 2
    
Sand_Draw_For:
    beq $11 86 end_Sand_Draw # -> Tamanho da Area 86 Pixel de Altura
    beq $10 256 end_Sand_Draw_For 
    sw $9 0($8)
    sw $9 262144($8)
    
    addi $10 $10 1
    addi $8 $8 4
    j Sand_Draw_For
    
end_Sand_Draw_For:
    addi $10 $0 0
    addi $11 $11 1
    j Sand_Draw_For
    
end_Sand_Draw:
    # ====================
    # DESEMPILHAR
	# ====================
    addi $29 $29 4
	lw $31 0($29)
	jr $31

# ========================================================
# **** Jungle_Draw (Desenhar o Mato do Cenário) ****

# INPUT_Reg: None	    

# OUTPUT_Reg: None

# Reg_Usados: # $7  -> Varivél SEGUND�?RIA para definir Altura de Iniciar o PIXEL
              # $8  -> Endereço de Memória 
              # $9  -> Cor do Pixel
              # $10 -> Contador (Conta para saber o momento de iniciar outro Comando)
              # $11 -> Contador SECUNDARIO (AJuda na Altura de Pixel)
              # $29 -> Endereço de PILHA
              # $31 -> Return do JAL

Jungle_Draw:
    # ====================
    # EMPILHAR
	# ====================
    sw $31 0($29)
    addi $29 $29 -4

    addi $7 $0 1024
    mul $7 $7 154 # -> Inicio da Linha 154
    lui $8 0x1001
    add $8 $8 $7
    addi $9 $0 0
    ori $9 0x3D5F3A # Cor -> #3D5F3A 
    addi $10 $0 0 # Contador
    addi $11 $0 0 # Contador 2

Jungle_Draw_For:
    beq $11 25 end_Jungle_Draw # -> Tamanho do mato 25 Altura
    beq $10 256 end_Jungle_Draw_For
    sw $9 0($8)
    sw $9 262144($8)
    addi $10 $10 1
    addi $8 $8 4
    j Jungle_Draw_For
    
end_Jungle_Draw_For:
    addi $10 $0 0
    addi $11 $11 1
    j Jungle_Draw_For

end_Jungle_Draw:
    # ====================
    # DESEMPILHAR
	# ====================
    addi $29 $29 4
	lw $31 0($29)

	jr $31

# ========================================================
# **** Details_Draw (Desenhar o Detalhes do Cenário) ****

# INPUT_Reg: None	    

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

Details_Draw:
    # ====================
    # EMPILHAR
	# ====================
    sw $31 0($29)
    addi $29 $29 -4

    lui $8 0x1001 # Endereço de Memória 
    addi $5 $0 256 # Largura da tela
    mul $4 $5 $4 # Posicao desejada * Largura (Linha)
    mul $4 $4 4 # Endereço 
    mul $3 $3 4
    add $4 $4 $3 # MARGIN LEFT
    add $8 $8 $4 
    addi $5 $0 0 #Contador

Details_Draw_For:
    beq $5 $2 end_Details_Draw_For
    sw $9 	 0($8)
    sw $9 	 4($8)
    sw $9 1024($8)
    sw $9 1028($8)

	sw $9 262144($8)
	sw $9 262148($8)
	sw $9 263168($8)
	sw $9 263172($8)
    
    addi $8 $8 8
    addi $5 $5 1
    j Details_Draw_For

end_Details_Draw_For:
    # ====================
    # DESEMPILHAR
	# ====================
    addi $29 $29 4
	lw $31 0($29)

	jr $31


# ================================================================
# **** Desenhar Por do Sol ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

    
Sunset_Draw:
    # EMPILHAR
    sw $31 0($29)
    addi $29 $29 -4

    lui $8 0x1001
    addi $6 $0 1024 
    mul $6 $6 $5
    mul $4 $4 4
    add $6 $6 $4
    add $8 $8 $6
    addi $6 $0 0
    addi $7 $0 0
    addi $11 $0 0
    add $11 $11 $8
    
Sunset_Draw_For:
    beq $7 $3 end_Sunset_Draw
    beq $6 $2 end_Sunset_Draw_For
    sw $9 0($8)
	sw $9 262144($8)
	
    addi $8 $8 4
    addi $6 $6 1
    j Sunset_Draw_For
    
end_Sunset_Draw_For:
    addi $6 $0 0
    addi $7 $7 1
    addi $8 $11 1024
    addi $11 $11 1024

    j Sunset_Draw_For
    

end_Sunset_Draw:
    # DESEMPILHAR
    addi $29 $29 4
	lw $31 0($29)
	jr $31

# ================================================================
# **** Por do Sol ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados: 
            # $2 -> Lagura do Objeto
            # $3 -> Altura do Objeto
            # $4 -> Posição X de Origem do Objeto
            # $5 -> Posição Y de Origem do Objeto
            # $9 -> Cor do Objeto
            # $31 -> Return

    

Sunset:
    # EMPILHAR
    sw $31 0($29)
    addi $29 $29 -4




    # =================================
    # COR DO BACKGROUND 1
    addi $9 $0 0
    ori $9 0xEFF6CD
    # =================================
    addi $2 $0 40 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 115# -> Posicao X
    addi $5 $0 74 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 58# -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 105# -> Posicao X
    addi $5 $0 76 # -> Posicao Y
    jal Sunset_Draw
    
    
    addi $2 $0 65# -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 102# -> Posicao X
    addi $5 $0 78 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 75# -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 94# -> Posicao X
    addi $5 $0 80 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 89 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 82# -> Posicao X
    addi $5 $0 82 # -> Posicao Y
    jal Sunset_Draw
    
    
    addi $2 $0 100 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 72# -> Posicao X
    addi $5 $0 84 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 102 # -> Tamanho X
    addi $3 $0 1 # -> Tamanho Y
    addi $4 $0 71# -> Posicao X
    addi $5 $0 85 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 108 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 69# -> Posicao X
    addi $5 $0 86 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 116 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 65 # -> Posicao X
    addi $5 $0 88 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 250 # -> Tamanho X
    addi $3 $0 10 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 90 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 220 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 92 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 26  # -> Tamanho X
    addi $3 $0 6# -> Tamanho Y
    addi $4 $0 220 # -> Posicao X
    addi $5 $0 88 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 10  # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 246  # -> Posicao X
    addi $5 $0 94 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 6  # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 250  # -> Posicao X
    addi $5 $0 92 # -> Posicao Y
    jal Sunset_Draw

    
    
    # =================================
    # COR DO BACKGROUND 2
    addi $9 $0 0
    ori $9 0xEAE780
    # =================================
    addi $2 $0 15 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 136 # -> Posicao X
    addi $5 $0 82 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 46 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 112 # -> Posicao X
    addi $5 $0 84 # -> Posicao Y
    jal Sunset_Draw
    
    
    addi $2 $0 55 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 106 # -> Posicao X
    addi $5 $0 86 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 59 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 104 # -> Posicao X
    addi $5 $0 88 # -> Posicao Y
    jal Sunset_Draw
    
    
    addi $2 $0 59 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 104 # -> Posicao X
    addi $5 $0 90 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 70 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 98 # -> Posicao X
    addi $5 $0 90 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 90 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 90 # -> Posicao X
    addi $5 $0 92 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 100 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 80 # -> Posicao X
    addi $5 $0 94 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 160 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 66 # -> Posicao X
    addi $5 $0 96 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 10 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 230 # -> Posicao X
    addi $5 $0 94 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 4 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 240 # -> Posicao X
    addi $5 $0 96 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 10 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 180 # -> Posicao X
    addi $5 $0 94 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 256 # -> Tamanho X
    addi $3 $0 16 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 98 # -> Posicao Y
    jal Sunset_Draw


    
    # =================================
    # COR DO BACKGROUND 3
    addi $9 $0 0
    ori $9 0xDDD96D
    # =================================
    
    addi $2 $0 10 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 109 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 256 # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 112 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 30 # -> Posicao X
    addi $5 $0 109 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 115 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 76 # -> Posicao X
    addi $5 $0 107 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 150 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 76 # -> Posicao X
    addi $5 $0 109 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 15 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 200 # -> Posicao X
    addi $5 $0 105 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 165 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 76 # -> Posicao X
    addi $5 $0 108 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 130 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 72 # -> Posicao X
    addi $5 $0 110 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 102 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 84 # -> Posicao X
    addi $5 $0 104 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 92 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 94 # -> Posicao X
    addi $5 $0 102 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 80 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 98 # -> Posicao X
    addi $5 $0 100 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 60 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 106 # -> Posicao X
    addi $5 $0 97 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 48 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 110 # -> Posicao X
    addi $5 $0 95 # -> Posicao Y
    jal Sunset_Draw
    
    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 130 # -> Posicao X
    addi $5 $0 92 # -> Posicao Y
    jal Sunset_Draw

    
    
    
    # =================================
    # COR DO BACKGROUND 4
    addi $9 $0 0
    ori $9 0xDECE6C
    # =================================

    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 126 # -> Posicao X
    addi $5 $0 97 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 36 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 120# -> Posicao X
    addi $5 $0 99 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 46 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 115# -> Posicao X
    addi $5 $0 101 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 60 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 108# -> Posicao X
    addi $5 $0 103 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 78 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 98# -> Posicao X
    addi $5 $0 106 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 94 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 90# -> Posicao X
    addi $5 $0 108 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 140 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 82# -> Posicao X
    addi $5 $0 112 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 162 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 74 # -> Posicao X
    addi $5 $0 114 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 12 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 196 # -> Posicao X
    addi $5 $0 110 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 8 # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 114 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 26 # -> Posicao X
    addi $5 $0 115 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 250 # -> Tamanho X
    addi $3 $0 12 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 118 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 8 # -> Tamanho X
    addi $3 $0 10 # -> Tamanho Y
    addi $4 $0 248 # -> Posicao X
    addi $5 $0 114 # -> Posicao Y
    jal Sunset_Draw

    # =================================
    # COR DO BACKGROUND 5
    addi $9 $0 0
    ori $9 0xD0C15C
    # =================================

    addi $2 $0 12 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 130 # -> Posicao X
    addi $5 $0 100 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 28 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 124# -> Posicao X
    addi $5 $0 103 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 44 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 116# -> Posicao X
    addi $5 $0 106 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 60 # -> Tamanho X
    addi $3 $0 3 # -> Tamanho Y
    addi $4 $0 106# -> Posicao X
    addi $5 $0 109 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 86 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 94# -> Posicao X
    addi $5 $0 112 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 120 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 78 # -> Posicao X
    addi $5 $0 116 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 170 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 58 # -> Posicao X
    addi $5 $0 120 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 190 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 50 # -> Posicao X
    addi $5 $0 124 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 6 # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 250 # -> Posicao X
    addi $5 $0 122 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 32 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 20 # -> Posicao X
    addi $5 $0 126 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 26 # -> Posicao X
    addi $5 $0 124 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 12 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 30 # -> Posicao X
    addi $5 $0 122 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 6 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 33 # -> Posicao X
    addi $5 $0 120 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 6 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 124 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 12 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 126 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 2 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 122 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 256 # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 128 # -> Posicao Y
    jal Sunset_Draw

        # =================================
    # COR DO BACKGROUND 6
    addi $9 $0 0
    ori $9 0xD2AD5D
    # =================================

    addi $2 $0 16 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 134 # -> Posicao X
    addi $5 $0 106 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 28 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 126 # -> Posicao X
    addi $5 $0 110 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 42 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 118 # -> Posicao X
    addi $5 $0 114 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 58 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 106 # -> Posicao X
    addi $5 $0 118 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 100 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 94 # -> Posicao X
    addi $5 $0 122 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 120 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 80 # -> Posicao X
    addi $5 $0 126 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 246 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 130 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 256 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 134 # -> Posicao Y
    jal Sunset_Draw

    # =================================
    # COR DO BACKGROUND 7
    addi $9 $0 0
    ori $9 0xCA9D40
    # =================================

    addi $2 $0 24 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 124 # -> Posicao X
    addi $5 $0 114 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 32 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 116 # -> Posicao X
    addi $5 $0 118 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 46 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 106 # -> Posicao X
    addi $5 $0 120 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 50 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 102 # -> Posicao X
    addi $5 $0 122 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 62 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 94 # -> Posicao X
    addi $5 $0 124 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 66 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 90 # -> Posicao X
    addi $5 $0 126 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 44 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 152 # -> Posicao X
    addi $5 $0 126 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 116 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 80 # -> Posicao X
    addi $5 $0 128 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 130 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 70 # -> Posicao X
    addi $5 $0 130 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 130 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 70 # -> Posicao X
    addi $5 $0 132 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 200 # -> Tamanho X
    addi $3 $0 2 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 134 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 6 # -> Tamanho Y
    addi $4 $0 30 # -> Posicao X
    addi $5 $0 130 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 20 # -> Tamanho X
    addi $3 $0 4 # -> Tamanho Y
    addi $4 $0 204 # -> Posicao X
    addi $5 $0 132 # -> Posicao Y
    jal Sunset_Draw

    addi $2 $0 256 # -> Tamanho X
    addi $3 $0 18 # -> Tamanho Y
    addi $4 $0 0 # -> Posicao X
    addi $5 $0 136 # -> Posicao Y
    jal Sunset_Draw

    # DESEMPILHAR
    addi $29 $29 4
	lw $31 0($29)
	jr $31


Monkey_Walk:
	sw $31 0($29)
	addi $29 $29 -4
	
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
	addi $27 $0 0
	jal timer

Monkey_Walk_For:
	beq $27 $30 End_Monkey_Walk
	beq $5 64 Other_Line_Monkey_Walk_For
	beq $6 32 New_Monkey_Walk_For
	lw $9 262144($8)
	sw $9 0($8)
	addi $8 $8 4
	addi $5 $5 1
	j Monkey_Walk_For
Other_Line_Monkey_Walk_For:
	addi $6 $6 1
	addi $5 $0 0
	addi $8 $10 1024
	addi $10 $10 1024
	j Monkey_Walk_For
	
	
New_Monkey_Walk_For:
	
	addi $2 $15 -5
	add $3 $0 $16
	jal Monkey
	
	addi $27 $27 1
	
	addi $15 $15 -5
	addi $16 $0 190
	
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
	j Monkey_Walk_For
	
	
End_Monkey_Walk:
	
    	addi $29 $29 4
	lw $31 0($29)
	jr $31



Draw_Pixel:
	# ======================
	# EMPILHAR
	# ======================
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

Draw_Pixel_For:
	beq $6 $3 End_Draw_Pixel
	beq $5 $2 Draw_Pixel_Next_Line
	sw $9 0($8)
	sw $9 262144($8)
	addi $5 $5 1
	addi $8 $8 4
	j Draw_Pixel_For
	
Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Draw_Pixel_For

End_Draw_Pixel:
	# ======================
	# DESEMPILHAR
	# ======================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

Coconut_Tree_Draw:
	# ===================
	# EMPILHAR
	# ===================
	sw $31 0($29)
	addi $29 $29 -4
	
	add $15 $2 $0
	addi $16 $3 0
    	# =======================
    	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 180
	addi $9 $0 0
	ori $9 0x6F511F # COR -> #6F511F
	jal Draw_Pixel
				
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 180
	addi $9 $0 0
	ori $9 0x4A3108 # COR -> #4A3108
	jal Draw_Pixel
	
	
	addi $2 $0 14
	addi $3 $0 3
	addi $4 $15 20
	addi $5 $16 177
	addi $9 $0 0
	ori $9 0x71521C # COR -> #71521C
	jal Draw_Pixel
	
	# ==================
	# TRONCO
	# ==================
	addi $2 $0 10
	addi $3 $0 13
	addi $4 $15 22
	addi $5 $16 164
	addi $9 $0 0
	ori $9 0x43320E # COR -> #43320E
	jal Draw_Pixel
		
	addi $2 $0 10
	addi $3 $0 10
	addi $4 $15 24
	addi $5 $16 154
	addi $9 $0 0
	ori $9 0x43320E # COR -> #43320E
	jal Draw_Pixel
	# ==================
	
	
	# ==================
	# DETALHES TRONCO
	# ==================
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 164
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 166
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 170
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 30
	addi $5 $16 172
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 30
	addi $5 $16 158
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 30
	addi $5 $16 160
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 162
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 24
	addi $5 $16 154
	addi $9 $0 0
	ori $9 0x533708 # COR -> #533708
	jal Draw_Pixel
	# ==================
	
	# ==================
	# FOLHAS
	# ==================
	addi $2 $0 10
	addi $3 $0 8
	addi $4 $15 24
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 10
	addi $4 $15 28
	addi $5 $16 134
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	
	addi $2 $0 10
	addi $3 $0 6
	addi $4 $15 18
	addi $5 $16 130
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 128
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 16
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 144
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 148
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	#
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 134
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 130
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 144
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 144
	addi $9 $0 0
	ori $9 0x217618 # COR -> #217618
	jal Draw_Pixel
	
	
	# DETALHE 
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 22
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 148
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 148
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 128
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 128
	addi $9 $0 0
	ori $9 0x1A4C19# COR -> #1A4C19
	jal Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x3A5333 # COR -> #3A5333
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x1C4C18# COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 134
	addi $9 $0 0
	ori $9 0x1C4C18# COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1C4C18# COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x1C4C18# COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x355234 # COR -> #355234
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 134
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 130
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 128
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 144
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 142
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 146
	addi $9 $0 0
	ori $9 0x1C4C18 # COR -> #1C4C18
	jal Draw_Pixel
	
	
	# ==================
	
	# ==================
	# COCO 1
	# ==================
	addi $2 $0 8
	addi $3 $0 8
	addi $4 $15 30
	addi $5 $16 148
	addi $9 $0 0
	ori $9 0x6D531E # COR -> #6D531E
	jal Draw_Pixel
	
		
	# COCO 2 DETALHE
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 150
	addi $9 $0 0
	ori $9 0x4C3708# COR -> #4C3708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1A791B # COR -> #1A791B
	jal Draw_Pixel
	# ==================
	
	
	
	# ==================
	# COCO 2
	# ==================
	addi $2 $0 4
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 134
	addi $9 $0 0
	ori $9 0x6D531E # COR -> #6D531E
	jal Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x6D531E # COR -> #6D531E
	jal Draw_Pixel
	
	# COCO 2 DETALHE
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 136
	addi $9 $0 0
	ori $9 0x4C3708# COR -> #4C3708
	jal Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 138
	addi $9 $0 0
	ori $9 0x1A791B # COR -> #1A791B
	jal Draw_Pixel
	# ==================
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 175
	addi $9 $0 0
	ori $9 0x63471F# COR -> #63471F
	jal Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 30
	addi $5 $16 175
	addi $9 $0 0
	ori $9 0x63471F# COR -> #63471F
	jal Draw_Pixel
	
Coconut_Tree_Draw_END:
	# ===================
	# DESEMPILHAR
	# ===================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
    # =======================


Details_Draw_Sand:
	# ==================
	# EMPILHAR
	# ==================
	sw $31 0($29)
	addi $29 $29 -4
	
	    # ==============================
    # DETALHES NA AREIA
    # ==============================
    addi $2 $0 2
    addi $3 $0 0
    addi $4 $0 180
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 4
    addi $4 $0 182
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 8
    addi $4 $0 175
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 45
    addi $4 $0 170
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 40
    addi $4 $0 172
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 92
    addi $4 $0 170
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 94
    addi $4 $0 172
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 98
    addi $4 $0 170
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 160
    addi $4 $0 170
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 162
    addi $4 $0 172
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 158
    addi $4 $0 174
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 172
    addi $4 $0 170
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
        
    
    addi $2 $0 1
    addi $3 $0 168
    addi $4 $0 174
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 2
    addi $4 $0 196
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 0
    addi $4 $0 198
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 0
    addi $4 $0 200
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 6
    addi $4 $0 204
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 24
    addi $4 $0 220
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 18
    addi $4 $0 216
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    
    addi $2 $0 1
    addi $3 $0 12
    addi $4 $0 224
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 0
    addi $4 $0 236
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 0
    addi $4 $0 238
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 2
    addi $4 $0 242
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    addi $2 $0 3
    addi $3 $0 12
    addi $4 $0 244
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 50
    addi $4 $0 236
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 52
    addi $4 $0 234
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 54
    addi $4 $0 232
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 56
    addi $4 $0 234
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 54
    addi $4 $0 234
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 54
    addi $4 $0 236
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 2
    addi $3 $0 84
    addi $4 $0 248
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 86
    addi $4 $0 250
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 90
    addi $4 $0 252
    addi $9 $0 0xE2DE97 # Cor -> #E2DE97
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 60
    addi $4 $0 178
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 62
    addi $4 $0 176
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 64
    addi $4 $0 178
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 66
    addi $4 $0 176
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 80
    addi $4 $0 180
    addi $9 $0 0xCECD8D # Cor -> #CECD8D
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 82
    addi $4 $0 182
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 2
    addi $3 $0 130
    addi $4 $0 176
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 2
    addi $3 $0 128
    addi $4 $0 178
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 130
    addi $4 $0 180
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 120
    addi $4 $0 220
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 124
    addi $4 $0 222
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 1
    addi $3 $0 128
    addi $4 $0 224
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 124
    addi $4 $0 226
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 160
    addi $4 $0 248
    addi $9 $0 0xE0DD98 # Cor -> #E0DD98
    jal Details_Draw
    
Details_Draw_Sand_END:
	# ==============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
Details_Draw_Jungle:
	# ===================
	# EMPILHAR
	# ===================
	sw $31 0($29)
	addi $29 $29 -4
	
	# ==============================
    # DETALHES NO MATO
    # ==============================
    addi $2 $0 8
    addi $3 $0 0
    addi $4 $0 160
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 30
    addi $3 $0 0
    addi $4 $0 162
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 4
    addi $3 $0 0
    addi $4 $0 164
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 26
    addi $3 $0 10
    addi $4 $0 164
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 6
    addi $3 $0 4
    addi $4 $0 166
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    
    
    addi $2 $0 2
    addi $3 $0 18
    addi $4 $0 166
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 2
    addi $3 $0 20
    addi $4 $0 168
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 8
    addi $3 $0 42
    addi $4 $0 160
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 7
    addi $3 $0 44
    addi $4 $0 166
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 7
    addi $3 $0 44
    addi $4 $0 168
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    
    addi $2 $0 14
    addi $3 $0 62
    addi $4 $0 160
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 9
    addi $3 $0 68
    addi $4 $0 162
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
    addi $2 $0 1
    addi $3 $0 80
    addi $4 $0 164
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
    
     addi $2 $0 3
    addi $3 $0 76
    addi $4 $0 166
    addi $9 $0 0x355933 # Cor -> #E0DD98
    jal Details_Draw
	
Details_Draw_Jungle_END:
	# ===================
	# DESEMPILHAR
	# ===================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
# ======================================================


	
	

	
Mario_Draw_LEFT:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	# BRACOS
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 -4
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# Roupa
	addi $2 $0 16	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 10
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
	addi $29 $29 4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -6
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	# BRACOS
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 -4
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Draw_Pixel
	
	# Roupa
	addi $2 $0 16	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Draw_Pixel
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Draw_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 10
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
	
	sw $9 262144($8)
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

Mario_Draw_LEFT_Erased:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 0
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 2
	jal Mario_Draw_Pixel_Erased
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 18	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 -2
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
	
	# BRACOS
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 -4
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	# Roupa
	addi $2 $0 16	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 16
	jal Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 18
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 10
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 24
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 26
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	jal Mario_Draw_Pixel_Erased


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 28
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 30
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 28
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 30
	jal Mario_Draw_Pixel_Erased
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
Mario_Draw_LEFT_Erased_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
	
Mario_Draw_RIGHT_Erased:
	# ===============
	# EMPILHAR
	# ===============
	sw $31 0($29)
	addi $29 $29 4
	
	add $15 $2 $0
	add $16 $3 $0
	
	# CHAPEU
	addi $2 $0 10	
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 0
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 2
	jal Mario_Draw_Pixel_Erased
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 18	
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -6
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6	
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 6
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 4	
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
	
	# BRACOS
	addi $2 $0 24
	addi $3 $0 6
	addi $4 $15 -4
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	# Roupa
	addi $2 $0 16	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 16
	jal Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 18
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 4
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 10
	addi $5 $16 14
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 18
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 12
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 24
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 26
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	jal Mario_Draw_Pixel_Erased


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 20
	jal Mario_Draw_Pixel_Erased
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 28
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 30
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 28
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 30
	jal Mario_Draw_Pixel_Erased
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 2
	addi $5 $16 4
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 8
	jal Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -4
	addi $5 $16 10
	jal Mario_Draw_Pixel_Erased
Mario_Draw_RIGHT_Erased_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31




# ====================================================
Mario_Draw_Pixel_Erased:
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
	addi $29 $29 4
	lw $31 0($29)
	jr $31

# ========================================================
# ================================================
#BOTAO PLAY
Button_Play:
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	
	addi $2 $0 60
	addi $3 $0 32
	addi $4 $15 0
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0x874632
	jal Mario_Draw_Pixel
	
	addi $2 $0 64
	addi $3 $0 28
	addi $4 $15 -2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x874632
	jal Mario_Draw_Pixel
	
	addi $2 $0 68
	addi $3 $0 24
	addi $4 $15 -4
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x874632
	jal Mario_Draw_Pixel
	
	addi $2 $0 72
	addi $3 $0 20
	addi $4 $15 -6
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x874632
	jal Mario_Draw_Pixel
	
	# AMARELO #BD961D
	addi $2 $0 60
	addi $3 $0 28
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xBD961D
	jal Mario_Draw_Pixel
	
	# AMARELO MAIS FEIO #A78A24
	addi $2 $0 64
	addi $3 $0 24
	addi $4 $15 -2
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xA78A24
	jal Mario_Draw_Pixel
	
	addi $2 $0 68
	addi $3 $0 20
	addi $4 $15 -4
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xA78A24
	jal Mario_Draw_Pixel
	
	# PLAY
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 4
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 10
	addi $4 $15 2
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	# L
	addi $2 $0 2
	addi $3 $0 12
	addi $4 $15 16
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	# A
	addi $2 $0 2
	addi $3 $0 10
	addi $4 $15 28
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 30
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 12
	addi $4 $15 36
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	# Y
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 50
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 56
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x4E2216
	jal Mario_Draw_Pixel
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31
# ==============================
Banana_draw:
# bananas:
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 -2
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFFDE17
	jal Mario_Draw_Pixel
	
	addi $29 $29 4
	lw $31 0($29)
	jr $31
# ===========================================================
# CENARIO MARIO INVERTIDOOOO
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
Donkey_Kong_Mario:
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
	
	sw $10 0($29)
	addi $29 $29 -4

	sw $11 0($29)
	addi $29 $29 -4

	sw $12 0($29)
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
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 52
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 44
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 38
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# PERNA TRAZEIRA
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# PERNA DIANTEIRA MARROM
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 34
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x9E4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# PERNA DIANTEIRA
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	
	
	# OUTRA PERNA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	
	
	
	# PERNA TRAZEIRO
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 48
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# PERNA TRAZEIRO DETALHES
	# ** PRETO **
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 46
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Mario_Draw_Pixel
	# ** MARROM ESCURO ** #531B02
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	# END - PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# DETLAHE PERNA DIANTEIRA #531B02
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 40
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 42
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 40
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 36
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 34
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 32
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0x531B02
	jal Donkey_Kong_Mario_Draw_Pixel
	# GRAVATA 9D2445
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 34
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x9D2445
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# DETALHES PRETO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 44
	addi $5 $16 38
	addi $9 $0 0
	ori $9 0x00000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# ================== ROSTO ===============
	#F6CE9B
	addi $2 $0 8
	addi $3 $0 10
	addi $4 $15 46
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 36
	addi $9 $0 0
	ori $9 0xF6CE9B
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 48
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xA13F00
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Mario_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x541B00
	jal Donkey_Kong_Mario_Draw_Pixel 
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 50
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0xFFFFFF
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x000000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 26
	addi $9 $0 0
	ori $9 0x9F4000
	jal Donkey_Kong_Mario_Draw_Pixel
	
	# VERIFICAR COR
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 54
	addi $9 $0 1
	
	jal Donkey_Kong_Mario_Draw_Pixel

	
	
Donkey_Kong_Mario_End:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $12 0($29)

	addi $29 $29 4
	lw $11 0($29)

	addi $29 $29 4
	lw $10 0($29)
	

	addi $29 $29 4
	lw $4 0($29)
	
	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

Donkey_Kong_Mario_Draw_Pixel:
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
	beq $9 1 color_verification_Donkey_Kong_Mario
	
Donkey_Kong_Mario_Draw_Pixel_For:
	beq $6 $3 Donkey_Kong_Mario_Draw_Pixel_END
	beq $5 $2 Donkey_Kong_Mario_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Donkey_Kong_Mario_Draw_Pixel_For
	
Donkey_Kong_Mario_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Donkey_Kong_Mario_Draw_Pixel_For

color_verification_Donkey_Kong_Mario:
	beq $9 $17 color_find_Donkey_Kong_Mario
	beq $10 42 Donkey_Kong_Mario_Draw_Pixel_END
	lw $9 262144($8)

	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Donkey_Kong_Mario
	
color_find_Donkey_Kong_Mario:
	j Donkey_Kong_Mario_Draw_Pixel_END
Donkey_Kong_Mario_Draw_Pixel_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31

# ====================================

Donkey_Kong_Mario_Draw_Pixel_Erased:
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

Donkey_Kong_Mario_Draw_Pixel_Erased_For:
	beq $6 $3 Donkey_Kong_Mario_Draw_Pixel_Erased_END
	beq $5 $2 Donkey_Kong_Mario_Draw_Pixel_Erased_Next_Line
	lw $9 262144($8)
	
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Donkey_Kong_Mario_Draw_Pixel_Erased_For
	
Donkey_Kong_Mario_Draw_Pixel_Erased_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Donkey_Kong_Mario_Draw_Pixel_Erased_For

Donkey_Kong_Mario_Draw_Pixel_Erased_END:
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
# ==============================================

Donkey_Kong_Mario_Wall:
	# ========================
	# EMPILHAR
	# ========================
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $26 $2 0
	addi $27 $3 0
	# ============= APAGAR =================
	
	jal Donkey_Kong_Mario_Erased
	
	# ===============
	# DESEMPILHAR
	# ===============
	addi $29 $29 4
	lw $31 0($29)

    	jr $31
# =======================================
# ================================
Donkey_Kong_Mario_Erased:
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
	
	sw $10 0($29)
	addi $29 $29 -4

	sw $11 0($29)
	addi $29 $29 -4

	sw $12 0($29)
	addi $29 $29 -4

	
	
	add $15 $2 $0
	add $16 $3 $0
	
	addi $2 $0 8	
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 2
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 12	
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 4
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 14	
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 6
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 16
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 8
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 52
	addi $5 $16 8
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 10
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 12
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 44
	addi $5 $16 12
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 14
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 18
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 20
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 24
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 28
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 26
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 30
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 28
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 32
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 30
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 34
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 32
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 34
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 38
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 36
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# PERNA TRAZEIRA
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 40
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 20
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 46
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 6
	addi $5 $16 48
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 8
	addi $5 $16 52
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 52
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# PERNA DIANTEIRA MARROM
	
	addi $2 $0 16
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 40
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 4
	addi $4 $15 34
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 48
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 32
	addi $5 $16 52
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 52
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# PERNA DIANTEIRA
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 48
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	
	
	# OUTRA PERNA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 44
	addi $5 $16 46
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	
	
	
	# PERNA TRAZEIRO
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 46
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 4
	addi $4 $15 8
	addi $5 $16 48
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 48
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# PERNA TRAZEIRO DETALHES
	# ** PRETO **
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 24
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 40
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 46
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	# ** MARROM ESCURO ** #531B02
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 26
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 22
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 14
	addi $5 $16 34
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	# END - PARTE CIMA DO DETALHE DA PERNA TRAZEIRA
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 34
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 22
	addi $5 $16 30
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 22
	addi $5 $16 24
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 24
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# DETLAHE PERNA DIANTEIRA #531B02
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 30
	addi $5 $16 40
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 32
	addi $5 $16 44
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 42
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 40
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
		
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 30
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 36
	addi $5 $16 26
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 34
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 32
	addi $5 $16 16
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 28
	addi $5 $16 14
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 34
	addi $5 $16 12
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	# GRAVATA 9D2445
	
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 34
	addi $5 $16 14
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 36
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 36
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 34
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# DETALHES PRETO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 44
	addi $5 $16 38
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# ================== ROSTO ===============
	#F6CE9B
	addi $2 $0 8
	addi $3 $0 10
	addi $4 $15 46
	addi $5 $16 12
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 10
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 14
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 6
	addi $3 $0 6
	addi $4 $15 38
	addi $5 $16 16
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 20
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 22
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 24
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 26
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 24
	addi $3 $0 2
	addi $4 $15 38
	addi $5 $16 28
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 22
	addi $3 $0 2
	addi $4 $15 40
	addi $5 $16 30
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 18
	addi $3 $0 2
	addi $4 $15 42
	addi $5 $16 32
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 14
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 34
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 36
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 8
	addi $4 $15 48
	addi $5 $16 14
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 16
	jal Donkey_Kong_Mario_Draw_Pixel_Erased 
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 18
	jal Donkey_Kong_Mario_Draw_Pixel_Erased 
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 50
	addi $5 $16 18
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 52
	addi $5 $16 20
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 50
	addi $5 $16 30
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 48
	addi $5 $16 28
	jal Donkey_Kong_Mario_Draw_Pixel_Erased
	
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 46
	addi $5 $16 26
	jal Donkey_Kong_Mario_Draw_Pixel_Erased



	# ===============
	# DESEMPILHAR
	# ===============
	
	addi $29 $29 4
	lw $12 0($29)

	addi $29 $29 4
	lw $11 0($29)

	addi $29 $29 4
	lw $10 0($29)
	

	addi $29 $29 4
	lw $4 0($29)
	
	addi $29 $29 4
	lw $2 0($29)
	
	addi $29 $29 4
	lw $3 0($29)
	
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31




# FIMMMM +++++++++++++++++ MARIO
#============================================================

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
timer2: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 25000
forT2:  	
	beq $16, $0, fimT
       	nop
       	nop
       	addi $16, $16, -1      
       	j forT                  
fimT2:  
	addi $29, $29, 4                                                    
       	lw $16, 0($29)          
       	jr $31


Empilhar_all:
        sw $19 0($29)
        addi $29 $29 -4

        sw $18 0($29)
        addi $29 $29 -4

        sw $17 0($29)
        addi $29 $29 -4

        sw $16 0($29)
        addi $29 $29 -4

        sw $15 0($29)
        addi $29 $29 -4

        sw $14 0($29)
        addi $29 $29 -4

        sw $13 0($29)
        addi $29 $29 -4

       # sw $12 0($29)
       # addi $29 $29 -4

      #  sw $11 0($29)
       # addi $29 $29 -4

        sw $10 0($29)
        addi $29 $29 -4

        sw $9 0($29)
        addi $29 $29 -4

        sw $8 0($29)
        addi $29 $29 -4

        sw $7 0($29)
        addi $29 $29 -4

        sw $6 0($29)
        addi $29 $29 -4

        sw $5 0($29)
        addi $29 $29 -4

        sw $4 0($29)
        addi $29 $29 -4

        sw $3 0($29)
        addi $29 $29 -4

        sw $2 0($29)
        addi $29 $29 -4

        sw $31 0($29)
        addi $29 $29 -4


        addi $29 $29 4
        lw $31 0($29)
        jr $31

Desempilhar_all:
        addi $29 $29 4
        lw $2 0($29)

        addi $29 $29 4
        lw $3 0($29)

        addi $29 $29 4
        lw $4 0($29)

        addi $29 $29 4
        lw $5 0($29)

        addi $29 $29 4
        lw $6 0($29)

        addi $29 $29 4
        lw $7 0($29)

        addi $29 $29 4
        lw $8 0($29)

        addi $29 $29 4
        lw $9 0($29)

        addi $29 $29 4
        lw $10 0($29)

       # addi $29 $29 4
       # lw $11 0($29)

       # addi $29 $29 4
       # lw $12 0($29)

        addi $29 $29 4
        lw $13 0($29)

        addi $29 $29 4
        lw $14 0($29)

        addi $29 $29 4
        lw $15 0($29)

        addi $29 $29 4
        lw $16 0($29)

        addi $29 $29 4
        lw $17 0($29)

        addi $29 $29 4
        lw $18 0($29)

        addi $29 $29 4
        lw $19 0($29)

        jr $31
        
resetar:
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
	 addi $21 $0 0 
	 addi $22 $0 0
	 addi $23 $0 0 
	addi $24 $0 0
	addi $25 $0 0
	addi $26 $0 0
	addi $27 $0 0
	# addi $28 $0 0
	# addi $29 $0 0
	 addi $30 $0 0
	# addi $31 $0 0

	# ==============
	# DESEMPILHAR
	# ==============
	addi $29 $29 4
	lw $31 0($29)

	jr $31
	
talk1:
	sw $31 0($29)
	addi $29 $29 -4
	
	jal resetar
addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'O'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'ç'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'é'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'é'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer


		# ================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'E'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ó'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =======================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'á'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =====================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'V'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'ê'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'N'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ========================
		# KONG
		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'H'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'N'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ==================

		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'ê'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =====================

		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'H'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'z'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =========================

		# PEACH
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'O'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

			# =====================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'z'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ===============================

		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'S'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'ê'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =========================

		# KONG
		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'H'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'H'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =============================

		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'G'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'á'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		#==============================
		# PEACH

		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'E'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =================

		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'á'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
	addi $12 $0 200
	addi $13 $0 170
	jal peach

# ===================================================================
fortalk1:
		beq $12 230 fimtalk1
		jal timer
        	addi $12 $12 0
		addi $13 $13 0
		jal peach_Erased

		addi $12 $12 5
		addi $13 $13 0
		jal peach

		j fortalk1

fimtalk1:
		addi $12 $12 0
		addi $13 $13 0
		jal peach_Erased

		addi $2 $0 105
		addi $3 $0 180
		addi $4 $0 0
		ori $4 0xB4461B
		jal Donkey_Kong


for2talk1:
		beq $2 195 fimtalk2
		jal timer
        	addi $2 $2 0
		addi $3 $3 0
		jal Donkey_Kong_Erased

		addi $2 $2 5
		addi $3 $3 0
		jal Donkey_Kong

		j for2talk1


fimtalk2:
	 	addi $2 $2 0
		addi $3 $3 0
		jal Donkey_Kong_Erased

		addi $29 $29 4
		lw $31 0($29)
		
		jr $31

talk2:
	sw $31 0($29)
	addi $29 $29 -4

	jal resetar
	jal Castle_Peach_Screen_1
	jal resetar

	addi $2 $0 0
	addi $3 $0 166
	jal Donkey_Kong

	addi $12 $0 90
	addi $13 $0 154
	jal peach
fornewScene:
	beq $12 190 median_talk2
	jal timer
	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased

	addi $12 $12 10
	addi $13 $13 0
	jal peach

	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased

	addi $2 $2 10
	addi $3 $3 0
	jal Donkey_Kong

	j fornewScene
median_talk2:

	addi $12 $12 0
	addi $13 $13 0
	jal peach_Erased
median_talk_2:
	beq $2 190 continues_Talk2

	jal timer
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased

	addi $2 $2 10
	addi $3 $3 0
	jal Donkey_Kong
	j median_talk_2
continues_Talk2:
	addi $2 $2 0
	addi $3 $3 0
	jal Donkey_Kong_Erased
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer
	jal timer

	jal resetar
	jal Castle_Peach_Screen_2
	jal resetar

	addi $2 $0 0
	addi $3 $0 166
	jal Donkey_Kong

	addi $12 $0 90
	addi $13 $0 154
	jal peach

	# ===============================
	addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'á'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ======================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# =======================================
		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'H'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'C'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'x'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'é'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'E'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'j'
        addi $2 $0 11
        syscall


        addi $4 $0 'á'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'ç'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ===============================

		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'G'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'A'
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'x'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ==========================

		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 '?'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		#====================
		addi $4 $0 'P'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'h'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'N'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'i'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'V'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'ê'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'b'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ','
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'ç'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'ç'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'M'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'p'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'f'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 'ç'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 'd'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 '.'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ===========================================
		addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ':'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'S'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'q'
        addi $2 $0 11
        syscall


        addi $4 $0 'u'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'r'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 '…'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'ã'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'D'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'k'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'y'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'K'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'n'
        addi $2 $0 11
        syscall


        addi $4 $0 'g'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'v'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'a'
        addi $2 $0 11
        syscall


        addi $4 $0 's'
        addi $2 $0 11
        syscall


        addi $4 $0 't'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'c'
        addi $2 $0 11
        syscall


        addi $4 $0 'o'
        addi $2 $0 11
        syscall


        addi $4 $0 'm'
        addi $2 $0 11
        syscall


        addi $4 $0 ' '
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 'l'
        addi $2 $0 11
        syscall


        addi $4 $0 'e'
        addi $2 $0 11
        syscall


        addi $4 $0 '!'
        addi $2 $0 11
        syscall


        addi $4 $0 10
        addi $2 $0 11
        syscall


        jal timer
        jal timer
        jal timer
        jal timer
        jal timer
        jal timer

		# ============================
		addi $2 $0 0
		addi $3 $0 166
		jal Donkey_Kong

forforforTalk2:
		beq $2 50 last_end_Talk2
		addi $2 $2 0
		addi $3 $3 0
		jal Donkey_Kong_Erased

		addi $2 $2 5
		addi $3 $3 0
		jal Donkey_Kong
	j forforforTalk2

last_end_Talk2:
	jal timer
		addi $2 $2 0
		addi $3 $3 0
		jal Donkey_Kong_Erased

		addi $12 $12 0
		addi $13 $13 0
		jal peach_Erased

	addi $2 $0 80 # 2
	addi $3 $0 166 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $0 86
	addi $13 $0 112
	jal peach


jump:
	beq $3 86 end_Talk2
	jal timer
		addi $2 $2 0
		addi $3 $3 0
		jal Donkey_Kong_Erased

		addi $12 $12 0
		addi $13 $13 0
		jal peach_Erased

	addi $2 $2 0 # 2
	addi $3 $3 -80 # 106
	addi $4 $0 0 
	ori $4 0x2F2F2F
	jal Donkey_Kong_Mario

	addi $12 $12 0
	addi $13 $13 -80
	jal peach

	j jump
end_Talk2:
	addi $29 $29 4
	lw $31 0($29)
	jal resetar
	j Base_Cenario_Mario_Plataformas_Plataformas

# ==================
# CASTELO PEACH
Castle_Peach_Screen_1:
        # ==================
        # EMPILHAR
        # ==================
        sw $31 0($29)
	addi $29 $29 -4

        addi $2 $0 0
	addi $3 $0 0
	jal Castle_Peach

        addi $2 $0 0
	addi $3 $0 0
	jal Draw_Banner
	
	addi $2 $0 140
	addi $3 $0 0
	jal Draw_Banner

         # ==================
        # DESEMPILHAR
        # ==================
	addi $29 $29 4
        lw $31 0($29)

        jr $31

Castle_Peach_Screen_2:
        # ==================
        # EMPILHAR
        # ==================
        sw $31 0($29)
	addi $29 $29 -4

        addi $2 $0 0
	addi $3 $0 0
	jal Castle_Peach

        addi $2 $0 0
	addi $3 $0 0
	jal Draw_Banner
	
	addi $2 $0 150
	addi $3 $0 200
	jal Draw_Throne

         # ==================
        # DESEMPILHAR
        # ==================
	addi $29 $29 4
        lw $31 0($29)

        jr $31
Castle_Peach:
	sw $31 0($29)
	addi $29 $29 -4
	add $15 $0 $2
	add $16 $0 $3
	
	#BackGround Teto
	addi $2 $0 256	
	addi $3 $0 256
	addi $4 $15 0
	addi $5 $16 0
	addi $9 $0 0
	ori $9 0xD3CDAD
	jal Castle_Draw_Pixel
	
	#BackGround Parede
	addi $2 $0 256	
	addi $3 $0 220
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x777062
	jal Castle_Draw_Pixel
	
	# TETO
	addi $2 $0 256	
	addi $3 $0 10
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x8E6F52
	jal Castle_Draw_Pixel
        # BG TETO
	addi $2 $0 256	
	addi $3 $0 4
	addi $4 $15 0
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel

        # Detalhes Pontos
# =======================================================
# Detalhes TETO
# =====================================================
	addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x876D54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8E7054
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97755A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x98765B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8A6C4A
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x87694D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896B4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 8
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B7253
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 10
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8B6C4F
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 12
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x917255
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 14
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x896950
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 16
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x8C6E54
        jal Castle_Draw_Pixel
        # ====================
        # ===============
	
	# ==================================
	# DETALHES DO TETO
	# ==================================
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 26
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 54
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 82
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 110
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 138
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 166
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 194
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 222
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 10
	addi $4 $15 250
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0x52413A
	jal Castle_Draw_Pixel
	
	#DETALHES TIJOLOS
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 30
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 41
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 52
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 63
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 74
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 85
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 96
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 107
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 118
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 129
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 140
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 154
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 165
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 176
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 187
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 198
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 209
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	addi $2 $0 256
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 231
	addi $9 $0 0
	ori $9 0x8C8278
	jal Castle_Draw_Pixel
	
	#Detalhes 
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	# 
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 33
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 44
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 55
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 66
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 77
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 99
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 110
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 121
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 132
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	# 
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 10
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 32
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 54
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 76
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 98
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 120
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 142
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 164
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 186
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 208
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 230
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 11
	addi $4 $15 252
	addi $5 $16 143
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 157
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 168
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 179
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 190
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 201
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 10
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 32
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 54
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 76
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 98
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 120
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 142
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 164
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 186
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 208
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 230
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 252
	addi $5 $16 212
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	#
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 42
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 86
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 108
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 130
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 152
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 174
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 196
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 218
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 240
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	
	#
	addi $9 $0 0
	ori $9 0x5B5853
	jal Castle_Draw_Pixel
	#
	# =====================================================




	# Chao BG
	# Chao BG
	# BG
	addi $2 $0 256	
	addi $3 $0 8
	addi $4 $15 0
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x815E40
	jal Castle_Draw_Pixel


	# Linha superior
	addi $2 $0 256	
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 226
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	# =================
        # DETALHES PONTOS CHAO
        # ====================
        # =====================================================
# Detalhes chao
# =====================================================
	addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 2
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 4
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 6
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 8
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 10
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 12
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 14
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 16
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 18
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 20
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 22
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 24
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 26
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 28
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 30
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 32
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 34
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 36
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 38
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 40
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 42
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 44
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 46
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 48
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 50
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 52
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 54
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 56
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 58
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 60
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 62
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 64
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 66
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 68
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 70
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 72
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 74
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 76
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 78
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 80
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 82
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 84
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 86
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 88
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 90
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 92
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 94
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 96
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 98
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 100
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 102
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 104
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 106
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 108
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 110
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 112
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 114
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 116
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 118
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 120
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 122
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 124
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 126
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 128
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 130
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 132
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 134
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 136
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 138
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 140
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 142
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 144
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 146
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 148
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 150
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 152
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 154
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 156
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 158
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 160
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 162
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 164
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 166
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 168
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 170
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 172
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 174
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 176
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 178
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 180
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 182
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 184
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 186
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 188
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 190
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 192
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 194
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 196
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 198
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 200
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 202
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 204
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 206
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 208
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 210
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 212
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 214
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 216
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 218
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 220
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 222
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 224
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 226
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 228
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 230
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 232
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5642
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 234
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 236
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 238
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 240
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x836448
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 242
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 244
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x97785B
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 246
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6B553D
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 248
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x80684C
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 250
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x856347
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x6F5240
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 252
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 228
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 230
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846247
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 232
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x997857
        jal Castle_Draw_Pixel


        addi $2 $0 2
        addi $3 $0 2
        addi $3 $0 2
        addi $4 $15 254
        addi $5 $16 234
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x846549
        jal Castle_Draw_Pixel

	# =================
        # DETALHES PONTOS CHAO FIM
        # ====================

	
	# =========================
	# base baixo
	addi $2 $0 256
        addi $3 $0 4
        addi $3 $0 2
        addi $4 $15 0
        addi $5 $16 236
        addi $9 $0 0
        addi $9 $0 0
        ori $9 0x372D21
        jal Castle_Draw_Pixel
	
	# === Linha Verticais
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 20
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 234
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 6
	addi $4 $15 42
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 64
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 88
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 110
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 132
	addi $5 $16 230
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 154
	addi $5 $16 232
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 178
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 8
	addi $4 $15 200
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 222
	addi $5 $16 228
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 4
	addi $4 $15 244
	addi $5 $16 232
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	# Tapete
	addi $2 $0 256	
	addi $3 $0 6
	addi $4 $15 0
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 256	
	addi $3 $0 3
	addi $4 $15 0
	addi $5 $16 223
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	# detalhes
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 15
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 60
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 105
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 150
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 195
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 3
	addi $4 $15 240
	addi $5 $16 220
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	
	
		
	addi $29 $29 4
	lw $31 0($29)
	jr $31 

Castle_Draw_Pixel:
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

Castle_Draw_Pixel_For:
	beq $6 $3 End_Castle_Draw_Pixel
	beq $5 $2 Castle_Draw_Pixel_Next_Line
	sw $9 0($8)
	sw $9 262144($8)
	addi $5 $5 1
	addi $8 $8 4
	j Castle_Draw_Pixel_For
	
Castle_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Castle_Draw_Pixel_For

End_Castle_Draw_Pixel:
	addi $29 $29 4
	lw $31 0($29)
	jr $31
	
Draw_Banner:
	# =================
	# EMPILHAR
	# =================
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	# ================
	# Banner
	# AMARELO 
	addi $2 $0 3	
	addi $3 $0 60
	addi $4 $15 40
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 60
	addi $4 $15 76
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	# detalhes
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 43
	addi $5 $16 82
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 46 
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 49
	addi $5 $16 94
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 52
	addi $5 $16 100
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 8	
	addi $3 $0 3
	addi $4 $15 55
	addi $5 $16 106
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	# =======
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 73
	addi $5 $16 82
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 70
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 67
	addi $5 $16 94
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 64
	addi $5 $16 100
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	# AMARELO ESCURO
	addi $2 $0 3	
	addi $3 $0 60
	addi $4 $15 37
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 60
	addi $4 $15 73
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	# detalhes
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 40
	addi $5 $16 82
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 43
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 46
	addi $5 $16 94
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 49
	addi $5 $16 100
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 3
	addi $4 $15 52
	addi $5 $16 106
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	# ===========
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 70
	addi $5 $16 82
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 67 
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 64
	addi $5 $16 94
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 61
	addi $5 $16 100
	addi $9 $0 0
	ori $9 0xD2A234
	jal Castle_Draw_Pixel
	
	# ROSA
	addi $2 $0 30	
	addi $3 $0 60
	addi $4 $15 43
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0xF676AF
	jal Castle_Draw_Pixel
	
	addi $2 $0 24	
	addi $3 $0 6
	addi $4 $15 46
	addi $5 $16 82
	addi $9 $0 0
	ori $9 0xF676AF
	jal Castle_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 6
	addi $4 $15 49
	addi $5 $16 88
	addi $9 $0 0
	ori $9 0xF676AF
	jal Castle_Draw_Pixel
	
	addi $2 $0 12	
	addi $3 $0 6
	addi $4 $15 52
	addi $5 $16 94
	addi $9 $0 0
	ori $9 0xF676AF
	jal Castle_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 6
	addi $4 $15 55
	addi $5 $16 100
	addi $9 $0 0
	ori $9 0xF676AF
	jal Castle_Draw_Pixel
	
	# ==============
	# coroa
	addi $2 $0 17	
	addi $3 $0 10
	addi $4 $15 50
	addi $5 $16 60
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 3
	addi $4 $15 50
	addi $5 $16 57
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 3
	addi $4 $15 64
	addi $5 $16 57
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 3
	addi $4 $15 57
	addi $5 $16 57
	addi $9 $0 0
	ori $9 0xFCC534
	jal Castle_Draw_Pixel
	
	addi $2 $0 3	
	addi $3 $0 6
	addi $4 $15 57
	addi $5 $16 60
	addi $9 $0 0
	ori $9 0xFFD568
	jal Castle_Draw_Pixel
	
	addi $2 $0 9	
	addi $3 $0 3
	addi $4 $15 54
	addi $5 $16 64
	addi $9 $0 0
	ori $9 0xFFD568
	jal Castle_Draw_Pixel
	# ===========
	
	# ===============
	# DESEMPILHAR
	# ================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
	
Draw_Throne:
	# =================
	# EMPILHAR
	# =================
	sw $31 0($29)
	addi $29 $29 -4
	
	addi $15 $2 0
	addi $16 $3 0
	
	addi $2 $0 100	
	addi $3 $0 10
	addi $4 $15 6
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x8D452C
	jal Castle_Draw_Pixel
	
	# DETALHES HORIZONTAIS CHAO
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 16
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 30
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 44
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 58
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 72
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 86
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 2
	addi $4 $15 100
	addi $5 $16 32
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	#
	
	# DETALHES VERTICAIS CHAO
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 14
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 28
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 42
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 56
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 56
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 70
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 70
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 84
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 84
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 98
	addi $5 $16 28
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 98
	addi $5 $16 34
	addi $9 $0 0
	ori $9 0x56261D
	jal Castle_Draw_Pixel
	
	# Chao Princesa 
	addi $2 $0 86	
	addi $3 $0 8
	addi $4 $15 20
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x815E40
	jal Castle_Draw_Pixel
	
	# Chao Princesa 
	addi $2 $0 20	
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 24
	addi $9 $0 0
	ori $9 0x815E40
	jal Castle_Draw_Pixel
	
	addi $2 $0 20	
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x815E40
	jal Castle_Draw_Pixel
	
	# Linha superior
	addi $2 $0 86
	addi $3 $0 2
	addi $4 $15 20
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 2
	addi $4 $15 6
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 10
	addi $4 $15 4
	addi $5 $16 22
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 20
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 10
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 18
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x372D21
	jal Castle_Draw_Pixel
	
	# Tapete
	addi $2 $0 40
	addi $3 $0 4
	addi $4 $15 18
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	
	addi $2 $0 40
	addi $3 $0 2
	addi $4 $15 18
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 4
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 4
	addi $4 $15 4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 19
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	# Trono
	addi $2 $0 38
	addi $3 $0 7
	addi $4 $15 58
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 34
	addi $3 $0 7
	addi $4 $15 62
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 30
	addi $3 $0 3
	addi $4 $15 66
	addi $5 $16 -1
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 50
	addi $4 $15 72
	addi $5 $16 -43
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 75
	addi $5 $16 -46
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	# Detalhes
	addi $2 $0 30
	addi $3 $0 4
	addi $4 $15 62
	addi $5 $16 12
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 9
	addi $3 $0 10
	addi $4 $15 69
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 6
	addi $4 $15 78
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 4
	addi $3 $0 4
	addi $4 $15 88
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 15
	addi $3 $0 33
	addi $4 $15 76
	addi $5 $16 -40
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 3
	addi $4 $15 76
	addi $5 $16 -7
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 3
	addi $4 $15 88
	addi $5 $16 -7
	addi $9 $0 0
	ori $9 0xD43681
	jal Castle_Draw_Pixel
	
	#
	addi $2 $0 3
	addi $3 $0 10
	addi $4 $15 66
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFACD4
	jal Castle_Draw_Pixel
	
	# 
	addi $2 $0 3
	addi $3 $0 15
	addi $4 $15 82
	addi $5 $16 -31
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 9
	addi $3 $0 15
	addi $4 $15 79
	addi $5 $16 -34
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 3
	addi $4 $15 82
	addi $5 $16 -37
	addi $9 $0 0
	ori $9 0xE7549B
	jal Castle_Draw_Pixel
	# 
	#FDBB1F
	addi $2 $0 5
	addi $3 $0 3
	addi $4 $15 81
	addi $5 $16 -46
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 93
	addi $5 $16 -38
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 93
	addi $5 $16 -18
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 93
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 72
	addi $5 $16 -38
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 72
	addi $5 $16 -18
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	
	addi $2 $0 3
	addi $3 $0 5
	addi $4 $15 66
	addi $5 $16 6
	addi $9 $0 0
	ori $9 0xFDBB1F
	jal Castle_Draw_Pixel
	# ===============
	# DESEMPILHAR
	# ================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31


# ===============================================
# CENARIO MARIO
Base_Cenario_Mario_Plataformas_Plataformas:
	jal background_black
	jal cenario_plataform_Mario_Plataformas_VS_Donkey
	jal KeyBoard
	jal Controles_cenario_plataform1

	
walk_Platforms_Mario_Plataformas:
	
	jal timer
	lw $26 4($21)
      	beq $26 $22 walk_left_mario_Plataformas
      	beq $26 $23 walk_right_mario_Plataformas
      	beq $26 $24 walk_down_mario_Plataformas
      	beq $26 $25 walk_up_mario_Plataformas
	
	j walk_down_mario_Plataformas
walk_left_mario_Plataformas:
	
	beq $20 0xA61937 walk_down_mario_Plataformas
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_LEFT
	
	addi $2 $2 -5
	addi $3 $3 0
	jal Mario_Plataformas_Draw_LEFT
	addi $26 $0 'p'
	sw $26 4($21)
	addi $17 $0 0
	j walk_down_mario_Plataformas
	
walk_right_mario_Plataformas:
	
	beq $20 0xA61937 walk_down_mario_Plataformas
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_LEFT
	
	addi $2 $2 5
	addi $3 $3 0
	jal Mario_Plataformas_Draw_RIGHT
	addi $26 $0 'p'
	sw $26 4($21)
	addi $17 $0 0
	j walk_down_mario_Plataformas
	
walk_up_mario_Plataformas:
	beq $18 0xA61937 walk_down_mario_Plataformas
	beq $30 20 walk_down_mario_Plataformas
	beq $6 0 Mario_Plataformas_Right_up
	beq $6 1 Mario_Plataformas_Left_up
	j walk_up_mario_Plataformas_continue
Mario_Plataformas_Right_up:
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 -2
	jal Mario_Plataformas_Draw_RIGHT
	j walk_up_mario_Plataformas_continue
Mario_Plataformas_Left_up:
	
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_LEFT
		
	addi $2 $2 0
	addi $3 $3 -2
	jal Mario_Plataformas_Draw_LEFT
	j walk_up_mario_Plataformas_continue
	
walk_up_mario_Plataformas_continue:
	addi $30 $30 1
	jal timer2
	j walk_up_mario_Plataformas
	
tocou_no_chao_Mario_Plataformas:
	addi $18 $0 0
	addi $30 $0 0
	j walk_Platforms_Mario_Plataformas

walk_down_mario_Plataformas:
	jal timer2
	beq $9 0xA61937 tocou_no_chao_Mario_Plataformas
	beq $3 261 cair_mario_Plataformas
	beq $6 0 Mario_Plataformas_Right_down
	beq $6 1 Mario_Plataformas_Left_down
	j walk_down_mario_Plataformas_Continue
	
Mario_Plataformas_Right_down:
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_RIGHT
	
	addi $2 $2 0
	addi $3 $3 2
	jal Mario_Plataformas_Draw_RIGHT
	j walk_down_mario_Plataformas_Continue
	
Mario_Plataformas_Left_down:
	addi $2 $2 0
	addi $3 $3 0
	jal Mario_Plataformas_Draw_Erased_LEFT
	
	addi $2 $2 0
	addi $3 $3 2
	jal Mario_Plataformas_Draw_LEFT
	
	j walk_down_mario_Plataformas_Continue
walk_down_mario_Plataformas_Continue:      	
	addi $26 $0 'p'
	sw $26 4($21)
	
	j walk_Platforms_Mario_Plataformas
cair_mario_Plataformas:

	
	
	


# ========================
Controles_cenario_plataform1:
	# ==================
	# EMPILHAR
	# ==================
	sw $31 0($29)
	addi $29 $29 -4
	
      	# Controle
      	addi $30 $0 0
      	
      	# posição inicial Mario_Plataformas
      	addi $2 $0 30  #  28
	addi $3 $0 231 # 231
	addi $4 $0 0 
	ori $4 0xA61937
	addi $5 $0 0
	ori $5 0x00000
	jal Mario_Plataformas_Draw_RIGHT
		
	# ==================
	# DESEMPILHAR
	# ==================
	addi $29 $29 4
	lw $31 0($29)
	
	jr $31
# =========================================
# =+=+=+=+=+= USE +=+=+=+=+=+=+=+=+ 


# cenario_plataform_Mario_Plataformas_VS_Donkey (Desenha o cenario_plataform_Mario_Plataformas_VS_Donkey) 
# -------------------------------------------
# jal cenario_plataform_Mario_Plataformas_VS_Donkey
# -------------------------------------------


# Platform (Plataformas Prontas do cenario_plataform_Mario_Plataformas_VS_Donkey) 
# -------------------------------------------
# jal Platform
# -------------------------------------------


# Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_Plataformas_VS_Donkey) 
# -------------------------------------------
# addi $2 $0 X # Tamanho
# addi $3 $0 X # Posição Largura
# addi $4 $0 X # Posição da altura
# jal Platform_Draw
# -------------------------------------------


# Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_Plataformas_VS_Donkey)
# -------------------------------------------
# addi $2 $0 X TAMANHO da Escada
# addi $3 $0 X POSICAO do Inicio Escada Y
# addi $4 $0 X POSICAO do Inicio Escada Y
# jal Ladder_Draw
# -------------------------------------------


# Mario_Plataformas_Draw_RIGHT (DESENHA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_RIGHT
# -------------------------------------------


# Mario_Plataformas_Draw_Pixel (DESENHA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# addi $9 $0 0 Reset $9 
# ori $9 0xXXXXX Cor do Pixel
# jal Mario_Plataformas_Draw_Pixel
# -------------------------------------------


# Mario_Plataformas_Draw_LEFT_Erased (APAGA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_LEFT_Erased
# -------------------------------------------


# Mario_Plataformas_Draw_RIGHT_Erased (APAGA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_RIGHT_Erased
# -------------------------------------------


# Mario_Plataformas_Draw_Pixel_Erased (APAGA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# jal Mario_Plataformas_Draw_Pixel_Erased
# -------------------------------------------


# =+=+=+=+=+= USE - END +=+=+=+=+=+=+=+=+ 

# ========================================================
# ****  cenario_plataform_Mario_Plataformas_VS_Donkey (Desenha o cenario_plataform_Mario_Plataformas_VS_Donkey) ****

# ********** USE **********
# cenario_plataform_Mario_Plataformas_VS_Donkey (Desenha o cenario_plataform_Mario_Plataformas_VS_Donkey) 
# -------------------------------------------
# jal cenario_plataform_Mario_Plataformas_VS_Donkey
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


cenario_plataform_Mario_Plataformas_VS_Donkey:
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
# ****  Platform (Plataformas Prontas do cenario_plataform_Mario_Plataformas_VS_Donkey) ****

# ********** USE **********
# Platform (Plataformas Prontas do cenario_plataform_Mario_Plataformas_VS_Donkey) 
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
# ****  Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_Plataformas_VS_Donkey) ****

# ********** USE **********
# Platform_Draw (Desenha as plataforma do cenario_plataform_Mario_Plataformas_VS_Donkey) 
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
	
	sw $9 271364($11)
	sw $9 270340($11)
	sw $9 269316($11)
	sw $9 268292($11)


	addi $10 $10 1

	j continue_Platform_Draw
	
base_3th_Triangle:
	addi $11 $8 -8
	beq $5 $2 continue_Platform_Draw
	sw $9 6152($11)
	sw $9 7176($11)
	sw $9 5128($11)

	sw $9 267272($11)
	sw $9 269320($11)
	sw $9 268296($11)
	
	
	addi $10 $10 1
	j continue_Platform_Draw

base_4th_Triangle:
	addi $11 $8 -12
	beq $5 $2 continue_Platform_Draw
	sw $9 5132($11)
	sw $9 6156($11)
	sw $9 4108($11)
	
	sw $9 267276($11)
	sw $9 268300($11)
	sw $9 266252($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_5th_Triangle:
	addi $11 $8 -16
	beq $5 $2 continue_Platform_Draw
	sw $9 3088($11)
	sw $9 4112($11)
	#sw $9 5136($11)
	
	sw $9 265232($11)
	sw $9 266256($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_6th_Triangle:
	addi $11 $8 -20
	beq $5 $2 continue_Platform_Draw
	sw $9 2068($11)
	sw $9 3092($11)
	#sw $9 4116($11)
	
	sw $9 264212($11)
	sw $9 265236($11)

	
	addi $10 $10 1

	j continue_Platform_Draw

base_7th_Triangle:
	addi $11 $8 -24
	beq $5 $2 continue_Platform_Draw
	sw $9 2072($11)
	#sw $9 3096($11)
	
	sw $9 264216($11)

	addi $10 $10 1

	j continue_Platform_Draw
base_8th_Triangle:
	addi $11 $8 -28
	beq $5 $2 continue_Platform_Draw
	sw $9 2076($11)
	sw $9 3100($11)
	#sw $9 4124($11)
	
	sw $9 264220($11)
	sw $9 265244($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_9th_Triangle:
	addi $11 $8 -32
	beq $5 $2 continue_Platform_Draw
	sw $9 3104($11)
	sw $9 4128($11)
	#sw $9 5152($11)
	
	sw $9 265248($11)
	sw $9 266272($11)
	#sw $9 267296($11)



	addi $10 $10 1

	j continue_Platform_Draw

base_10th_Triangle:
	addi $11 $8 -36
	beq $5 $2 continue_Platform_Draw
	sw $9 4132($11)
	sw $9 5156($11)
	sw $9 6180($11)

	sw $9 266276($11)
	sw $9 267300($11)
	sw $9 268324($11)

	
	addi $10 $10 1

	j continue_Platform_Draw
	
base_11th_Triangle:
	addi $11 $8 -40
	beq $5 $2 continue_Platform_Draw
	sw $9 5160($11)
	sw $9 6184($11)
	sw $9 7208($11)


	sw $9 267304($11)
	sw $9 268328($11)
	sw $9 269352($11)
	
	addi $10 $10 1

	j continue_Platform_Draw

base_12th_Triangle:
	addi $11 $8 -44
	beq $5 $2 continue_Platform_Draw
	sw $9 6188($11)
	sw $9 7212($11)
	sw $9 8236($11)
	sw $9 9260($11)


	sw $9 268332($11)
	sw $9 269356($11)
	sw $9 270380($11)
	sw $9 271404($11)

	
	addi $10 $10 1

	j continue_Platform_Draw

base_13th_Triangle:
	addi $11 $8 -48
	beq $5 $2 continue_Platform_Draw
	sw $9 7216($11)
	sw $9 8240($11)
	sw $9 9264($11)

	
	sw $9 269360($8)
	sw $9 270384($8)
	sw $9 271408($8)

	addi $10 $10 1

	j continue_Platform_Draw
	
continue_Platform_Draw:
	
	sw $9 6144($8) # Desenhar Linha Baixo 1
	sw $9 7168($8) # Desenhar Linha Baixo 2
	
	sw $9 268288($8)
	sw $9 269312($8)

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
# ****  Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_Plataformas_VS_Donkey) ****

# ********** USE **********
# Ladder_Draw (Desenha as quedas do cenario_plataform_Mario_Plataformas_VS_Donkey)
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
# ****  Mario_Plataformas_Draw_LEFT (Desenha o Mario_Plataformas que esta virado pra ESQUERDA) ****

# ********** USE **********
# Mario_Plataformas_Draw_LEFT(DESENHA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_LEFT
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
			  
Mario_Plataformas_Draw_RIGHT:
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
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	
	
	addi $2 $0 1
	addi $3 $0 1
	addi $4 $15 20
	addi $5 $16 16
	addi $10 $0 1
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 -1
	addi $9 $0 2
	
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 17
	addi $9 $0 1
	jal Mario_Plataformas_Draw_Pixel
Mario_Plataformas_Draw_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	jal reset
	addi $6 $0 0
	
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
# ****  Mario_Plataformas_Draw_RIGHT (Desenha o Mario_Plataformas que esta virado pra DIREITA) ****

# ********** USE **********
# Mario_Plataformas_Draw_RIGHT (DESENHA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_RIGHT
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

Mario_Plataformas_Draw_LEFT:
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
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 -6
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 14
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Pixel
	
	
	
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 1
	addi $3 $0 1
	addi $4 $15 -6
	addi $5 $16 16
	addi $10 $0 1
	jal Mario_Plataformas_Draw_Pixel
        
        addi $2 $0 10	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 -1
	addi $9 $0 2
	jal Mario_Plataformas_Draw_Pixel
	
	addi $2 $0 24
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 17
	addi $9 $0 1	
	jal Mario_Plataformas_Draw_Pixel
	
Mario_Plataformas_Draw_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	jal reset
	addi $6 $0 1

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
# ****  Mario_Plataformas_Draw_Pixel (Desenha os pixels enviados) ****

# ********** USE **********
# Mario_Plataformas_Draw_Pixel (DESENHA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# addi $9 $0 0 Reset $9 
# ori $9 0xXXXXX Cor do Pixel
# jal Mario_Plataformas_Draw_Pixel_Erased
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

Mario_Plataformas_Draw_Pixel:
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
        
        beq $9 2 color_verification_Mario_Plataformas_head
        beq $9 1 color_verification_Mario_Plataformas
        beq $10 1 color_verification_Mario_Plataformas_Feet
        
Mario_Plataformas_Draw_Pixel_For:
	beq $6 $3 Mario_Plataformas_Draw_Pixel_END
	beq $5 $2 Mario_Plataformas_Draw_Pixel_Next_Line
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Plataformas_Draw_Pixel_For
	
Mario_Plataformas_Draw_Pixel_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Mario_Plataformas_Draw_Pixel_For

color_verification_Mario_Plataformas:
	beq $9 $17 color_find_Mario_Plataformas
	beq $10 24 Mario_Plataformas_Draw_Pixel_END
	lw $9 262144($8)

	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Mario_Plataformas
	
color_find_Mario_Plataformas:
	j Mario_Plataformas_Draw_Pixel_END
color_verification_Mario_Plataformas_Feet:
   	beq $9 $17 color_find_Mario_Plataformas_Feet
   	beq $10 4 color_find_Mario_Plataformas_Feet
   	lw $9 262144($8)
   	
   	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Mario_Plataformas_Feet
color_find_Mario_Plataformas_Feet:
    addi $20 $9 0
    j Mario_Plataformas_Draw_Pixel_END
color_verification_Mario_Plataformas_head:
	beq $9 $17 color_find_Mario_Plataformas_head
   	beq $10 10 color_find_Mario_Plataformas_head
   	lw $9 262144($8)
   	
   	addi $10 $10 1
	addi $8 $8 4
	j color_verification_Mario_Plataformas_head
color_find_Mario_Plataformas_head:
	addi $18 $9 0
    	j Mario_Plataformas_Draw_Pixel_END
Mario_Plataformas_Draw_Pixel_END:
	addi $29 $29 4
	lw $31 0($29)
	jr $31

# ========================================================
# ****  Mario_Plataformas_Draw_LEFT_Erased (Apaga o Mario_Plataformas que esta virado pra ESQUERDA) ****

# ********** USE **********
# Mario_Plataformas_Draw_LEFT_Erased (APAGA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_LEFT_Erased
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

Mario_Plataformas_Draw_Erased_RIGHT:
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
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 2
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 10
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
Mario_Plataformas_Draw_Erased_RIGHT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	jal reset
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
# ****  Mario_Plataformas_Draw_RIGHT_Erased (Apaga o Mario_Plataformas que esta virado pra DIREITA) ****

# ********** USE **********
# Mario_Plataformas_Draw_RIGHT_Erased (APAGA MARIO_Plataformas VIRADO DIREITA)
# -------------------------------------------
# addi $2 $0 X POSICAO do MARIO_Plataformas EIXO X
# addi $3 $0 X POSICAO do MARIO_Plataformas EIXO Y
# jal Mario_Plataformas_Draw_RIGHT_Erased
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

Mario_Plataformas_Draw_Erased_LEFT:
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
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 1
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# ROSTO
	#FFAD60
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 18	
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 20
	addi $3 $0 1
	addi $4 $15 -6
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 0
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# CABELO 
	#804716
	addi $2 $0 4	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6	
	addi $3 $0 1
	addi $4 $15 8
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 14
	addi $5 $16 3
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	
	addi $2 $0 2	
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# BRACOS
	addi $2 $0 18
	addi $3 $0 3
	addi $4 $15 -1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFAD60
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# Roupa
	addi $2 $0 14	
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 8
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	addi $2 $0 18
	addi $3 $0 1
	addi $4 $15 -1
	addi $5 $16 9
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 14
	addi $3 $0 1
	addi $4 $15 1
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFF0000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# PARET AZUL 
	#3F51B5
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 4
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 3
	addi $4 $15 10
	addi $5 $16 7
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 12
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 11
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 16
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 13
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 14
	addi $9 $0 0
	ori $9 0x3F51B5
	jal Mario_Plataformas_Draw_Erased_Pixel


	# PARTE AMARELA
	#FFEB3B
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 4
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 10
	addi $5 $16 10
	addi $9 $0 0
	ori $9 0xFFEB3B
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	# BOTAS
	#804716
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 -2
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 6
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 15
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 12
	addi $5 $16 16
	addi $9 $0 0
	ori $9 0x804716
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	
	
	# OLHOS
	addi $2 $0 2
	addi $3 $0 2
	addi $4 $15 2
	addi $5 $16 2
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 2
	addi $3 $0 1
	addi $4 $15 0
	addi $5 $16 4
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
	
	addi $2 $0 8
	addi $3 $0 1
	addi $4 $15 -4
	addi $5 $16 5
	addi $9 $0 0
	ori $9 0x00000
	jal Mario_Plataformas_Draw_Erased_Pixel
Mario_Plataformas_Draw_Erased_LEFT_END:
	# ===============
	# DESEMPILHAR
	# ===============
	jal reset
	

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
# ****  Mario_Plataformas_Draw_Pixel_Erased (Apaga os pixels enviados) ****

# ********** USE **********
# Mario_Plataformas_Draw_Pixel_Erased (APAGA OS PIXELS)
# -------------------------------------------
# addi $2 $0 X Tamanho do pixel EIXO X
# addi $3 $0 X Altura do pixel EIXO Y
# addi $4 $0 X Posicao inicio desenho EIXO X
# addi $5 $0 X Posicao inicio desenho EIXO Y
# jal Mario_Plataformas_Draw_Pixel_Erased
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
		
Mario_Plataformas_Draw_Erased_Pixel:
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

Mario_Plataformas_Draw_Pixel_Erased_For:
	beq $6 $3 Mario_Plataformas_Draw_Pixel_Erased_END
	beq $5 $2 Mario_Plataformas_Draw_Pixel_Erased_Next_Line
	lw $9 262144($8)
	sw $9 0($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Plataformas_Draw_Pixel_Erased_For
	
Mario_Plataformas_Draw_Pixel_Erased_Next_Line:
	addi $5 $0 0 # Zerar Contador X
	addi $6 $6 1
	add $8 $7 $0
	addi $8 $8 1024
	addi $7 $7 1024
	j Mario_Plataformas_Draw_Pixel_Erased_For

Mario_Plataformas_Draw_Pixel_Erased_END:
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

	# addi $2 $0 0 
	# addi $3 $0 0
	# addi $4 $0 0
	# addi $5 $0 0
	addi $6 $0 0
	addi $7 $0 0
	addi $8 $0 0
	# addi $9 $0 0
	addi $10 $0 0
	# addi $11 $0 0 -> tecla 'a'
	# addi $12 $0 0 -> tecla 'd'
	# addi $13 $0 0 -> tecla 's'
	# addi $14 $0 0 -> tecla 'w'
	# addi $15 $0 0 -> Controle
	addi $16 $0 0
	addi $17 $0 0
	# addi $18 $0 0
	# addi $19 $0 0 -> Cor de verificação
	# addi $20 $0 0
	# addi $21 $0 0 -> Memoria Teclado
	# addi $22 $0 0
	# addi $23 $0 0 -> Endereço do teclado
	#addi $24 $0 0
	#addi $25 $0 0
	#addi $26 $0 0
	#addi $27 $0 0
	# addi $28 $0 0
	# addi $29 $0 0
	# addi $30 $0 0
	# addi $31 $0 0

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
	
	
	
