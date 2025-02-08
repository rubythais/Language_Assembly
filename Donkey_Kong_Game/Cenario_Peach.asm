.text

main:
	jal Castle_Peach_Screen_2
fim:
	addi $2 $0 10
	syscall


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