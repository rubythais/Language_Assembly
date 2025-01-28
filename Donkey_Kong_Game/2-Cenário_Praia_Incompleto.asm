.text


main:
	jal Cenario_Praia_Tela1
    
     
    
    addi $2 $0 180
    addi $3 $0 190
    jal Monkey
   
   addi $30 $0 5
   jal Monkey_Walk


    
    
    
    # ==============================
    
    
 
 
    
    
    

    addi $2 $0 10
    syscall
    

# ~~~~~~~~~~~~~~~ PERSONAGENS GLOBAIS ~~~~~~~~~~~~~~~
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ================================================================
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# addi $2 $0 50  -> $2  Posição do Eixo X na tela
# addi $3 $0 190 -> $3  Posição do Eixo Y na tela
# jal	Monkey -> Desenha o Macaco NPC


	


# ========================================================
# **** Monkey ( Desenhar Macaco - * NPC *) ****

# INPUT_Reg: $2 -> Posição X
	    #    $3 -> Posição Y

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


Monkey:

    # =============================
    # EMPILHAR
    # =============================

	sw $31 0($29)
    addi $29 $29 -4

    # =============================
    
    # =============================
    # SEGUIR DE BASE
    # =============================

	add $15 $2 $0
	add $16 $3 $0
	
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


# ~~~~~~~~~~~~~~~ PERSONAGENS GLOBAIS ~~~~~~~~~~~~~~~




# ~~~~~~~~~~~~~~~ Cenário De Praia ~~~~~~~~~~~~~~~
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ================================================================
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# ~~~~~~~~~~~~~~~ Cenário De Praia ~~~~~~~~~~~~~~~


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
timer: 
	sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 1000000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
