.text

main:

	jal Mario_Dark_Sky
	jal Mario_Dark_Floor_Draw
	#jal andar
	
	
	
	
	addi $2 $0 20 # Posição X
	addi $3 $0 250 # Posição Y
	jal Skull_Draw
	
	addi $2 $0 68 # Posição X
	addi $3 $0 222 # Posição Y
	jal Skull_Draw
	
	addi $2 $0 160 # Posição X
	addi $3 $0 196 # Posição Y
	jal Skull_Draw

	addi $2 $0 100
	addi $3 $0 123
	jal Wizard
	
	addi $30 $0 5
	jal Wizard_Walk


fim:
	addi $2 $0 10
	syscall
	

# ================================================================
# **** Desenhar Céu Degrade ****

# INPUT_Reg: $3 -> Posição Y 
# 	     $9 -> Cor 	
# OUTPUT_Reg: None
# Reg_Usados:

Mario_Dark_Sky:
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
	addi $29 $29 4
	lw $31 0($29)
	jr $31


# ================================================================
# **** Desenhar Detalhes ****

# INPUT_Reg: $2 -> Tamanho dos Datalhes
#            $3 -> Posição Y 
# 	     $9 -> Cor 	
# OUTPUT_Reg: None
# Reg_Usados:
Mario_Dark_Sky_Draw:
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
	add $29 $29 4
	lw $31 ($29)
	jr $31
	
	
andar:
	lui $8 0x1001
	addi $9 $0 0
	ori $9 0xCA9D40
	addi $10 $0 8000

for: beq $10, $0, fim      
     
      sw $9, 0($8)
      sw $9, 4($8)
      lw $20, 262144($8)
      sw $20, 0($8)
      addi $8, $8, 4
 

      addi $10, $10, -1
      j for


Mario_Dark_Floor_Draw:
	sw $31 -4($29)
	lui $8 0x1001 #Endereço de Memória
	addi $5 $0 1024 # Posição Y
	mul $5 $5 168
	add $8 $8 $5
	addi $9 $0 0
	ori $9 0x6F3D10 # COR -> #9D6634
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	
Mario_Dark_Floor_Draw_For:
	beq $6 88 end_Mario_Dark_Floor_Draw
	beq $5 256 end_Mario_Dark_Floor_Draw_For
	sw $9 0($8)
	sw $9 262144($8)
	addi $5 $5 1
	addi $8 $8 4
	j Mario_Dark_Floor_Draw_For
	
end_Mario_Dark_Floor_Draw_For:
	addi $5 $0 0
	addi $6 $6 1
	j Mario_Dark_Floor_Draw_For
	
	

end_Mario_Dark_Floor_Draw:
	jal Floor_Dark_Draw
	lw $31 -4($29)
	jr $31

Floor_Dark_Draw:
	lui $8 0x1001 #Endereço de Memória
	addi $5 $0 1024 # Posição Y
	mul $5 $5 167
	add $8 $8 $5
	addi $9 $0 0
	ori $9 0x40433D # COR -> #40433D
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	addi $7 $0 17 # Contador 3
	addi $10 $0 0 # Contador Final
	
Floor_Dark_Draw_For_1:
	beq $6 $7 end_end_Floor_Dark_Draw_For_1
	beq $5 256 end_Floor_Dark_Draw_For_1
	sw $9  0($8)
	sw $9 262144($8)
	addi $8 $8 4
	addi $5 $5 1
	j Floor_Dark_Draw_For_1

end_Floor_Dark_Draw_For_1:
	addi $6 $6 1
	addi $5 $0 0
	j Floor_Dark_Draw_For_1
	
end_end_Floor_Dark_Draw_For_1:
	lui $8 0x1001 #Endereço de Memória
	addi $5 $0 1024 # Posição Y
	mul $5 $5 185
	add $8 $8 $5
	addi $9 $0 0
	ori $9 0x402207 # COR -> #9D6634
	addi $5 $0 0 # Contador 1
	addi $6 $0 0 # Contador 2
	addi $7 $0 0 # Contador 3
	addi $10 $0 0 # Contador Final


	
Floor_Dark_Draw_For:
	beq $7 127 end_Floor_Dark_Draw
	beq $5 1 Floor_Dark_1th_Draw
	beq $6 1 Floor_Dark_2th_Draw
	
	j Floor_Dark_init_Draw
Floor_Dark_init_Draw:
	addi $8 $8 -1024
	sw $9 8($8)
	sw $9 12($8)
	sw $9 1032($8)
	sw $9 1036($8)
	
	 
    	
	
	addi $8 $8 1024
	sw $9 1024($8)
	sw $9 1028($8)
	sw $9 2048($8)
	sw $9 2052($8)
	addi $5 $5 1
	addi $7 $7 2
	addi $8 $8 -3072
	addi $8 $8 16
	j Floor_Dark_Draw_For
Floor_Dark_1th_Draw:
	# BASE SUPERIOR 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 1024($8)
	sw $9 1028($8)
	# BASE SUPERIOR 2
	sw $9 16($8)
	sw $9 20($8)
	sw $9 1040($8)
	sw $9 1044($8)
	# BASE INFERIOR 
	sw $9 2056($8)
	sw $9 2060($8)
	sw $9 3080($8)
	sw $9 3084($8)
	
	addi $5 $0 0
	addi $6 $6 1
	addi $8 $8 20
	addi $7 $7 3
	j Floor_Dark_Draw_For
Floor_Dark_2th_Draw:
	addi $8 $8 2052
	sw $9 0($8)
	sw $9 4($8)
	sw $9 8($8)
	sw $9 12($8)
	sw $9 1024($8)
	sw $9 1028($8)
	sw $9 1032($8)
	sw $9 1036($8)
	addi $8 $8 -2052
	addi $8 $8 20
	addi $7 $7 2
	addi $6 $0 0 # Zerar o Contador 2
	addi $5 $5 1
	j Floor_Dark_Draw_For
	
end_Floor_Dark_Draw:
	# BASE SUPERIOR 1
	sw $9 0($8)
	sw $9 4($8)
	sw $9 1024($8)
	sw $9 1028($8)
	jr $31

# ================================================================
# **** Desenhar Caveira ****

# INPUT_Reg: $2 -> Posição X
#            $3 -> Posição Y 
# OUTPUT_Reg: None
# Reg_Usados:
Skull_Draw:
	sw $31 -4($29)
	lui $8 0x1001
	addi $4 $0 1024
	mul $4 $4 $3 # Posição Y
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
	
timer: 
	sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 100000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31

