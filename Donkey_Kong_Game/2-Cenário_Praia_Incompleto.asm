.text


main:
    jal Sky_Draw
    jal Sunset 
    jal Jungle_Draw
    jal Sand_Draw
          
    
    
    addi $2 $0 10
    addi $3 $0 0
    addi $4 $0 161
    addi $9 $0 0x355933
    jal Details_Draw
    
    addi $2 $0 10
    addi $3 $0 0
    addi $4 $0 162
    addi $9 $0 0x355933
    jal Details_Draw
    
    addi $2 $0 10
    addi $3 $0 0
    addi $4 $0 163
    addi $9 $0 0x355933
    jal Details_Draw
    
    addi $2 $0 10
    addi $3 $0 0
    addi $4 $0 164
    addi $9 $0 0x355933
    jal Details_Draw

    addi $2 $0 4
    addi $3 $0 55
    addi $4 $0 175
    addi $9 $0 0xE3E09D
    jal Details_Draw
fim_Cenário_Praia:
    addi $2 $0 10
    syscall
# ================================================================
# **** Desenhar Céu ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:  
Sky_Draw:
    sw $31 0($29)
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
    addi $10 $10 1
    addi $8 $8 4
    j Skye_20th_For

end_Skye_20th_For:
end_Skye_For:
    lw $31 0($29)
    jr $31

    
# ================================================================
# **** Desenhar Areia ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados: 
Sand_Draw:
    sw $31 0($29)
    addi $7 $0 1024
    mul $7 $7 170
    lui $8 0x1001
    add $8 $8 $7
    addi $9 $0 0
    ori $9 0xF0EEB1 # Cor -> #F0EEB1
    addi $10 $0 0 # Contador
    addi $11 $0 0 # Contador 2
    
Sand_Draw_For:
    beq $11 86 end_Sand_Draw
    beq $10 256 end_Sand_Draw_For
    sw $9 0($8)
    
    addi $10 $10 1
    addi $8 $8 4
    j Sand_Draw_For
    
end_Sand_Draw_For:
    addi $10 $0 0
    addi $11 $11 1
    j Sand_Draw_For
    
end_Sand_Draw:
    lw $31 0($29)
    jr $31

# ================================================================
# **** Desenhar Mato ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:
Jungle_Draw:
    sw $31 0($29)
    addi $7 $0 1024
    mul $7 $7 154 # -> Altura
    lui $8 0x1001
    add $8 $8 $7
    addi $9 $0 0
    ori $9 0x3D5F3A # Cor -> #3D5F3A 
    addi $10 $0 0 # Contador
    addi $11 $0 0 # Contador 2

Jungle_Draw_For:
    beq $11 25 end_Jungle_Draw
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
    lw $31 0($29)
    jr $31

# ================================================================
# **** Desenhar Detalhes ****

# INPUT_Reg: $2 -> Tamanho dos Datalhes
#            $3 -> Posição X 
#            $4 -> Posição Y 
# 	     $9 -> Cor do Detalhe	
# OUTPUT_Reg: None
# Reg_Usados:

Details_Draw:
    sw $31 0($29)
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
    lw $31 0($29)
    jr $31


# ================================================================
# **** Desenhar Por do Sol ****

# INPUT_Reg: None	
# OUTPUT_Reg: None
# Reg_Usados:

    
Sunset_Draw:

    sw $31 -4($29)
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

    lw $31 -4($29)
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
    sw $31 0($29)




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

    lw $31 0($29)
    jr $31
